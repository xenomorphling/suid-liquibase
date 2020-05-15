--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

create or replace procedure itsk_get_folder_tree_limit (
            i_initiator         in  number
          , currentFolderId     in  number
          , i_doSearch          in  pls_integer
          , i_searchVal         in  varchar2
          , i_skip              in  number   DEFAULT 0
          , i_maxResults        in  number   DEFAULT 20
          , o_total_result_size out number  
          , result_             out sys_refcursor
) IS
/* 
   edited :     A.Kremer    15.05.2018      Add filters for is_deleted, is_hidden fields for quering z_resources and itsk_mv_resources_tree (redmine#695)   
*/
  l_hasFullAccess     pls_integer := 0;
  restrictAccessArray array_number;
  originalUsrArray    array_number;
  companyArray1       array_number;
BEGIN
  begin
    select 1 into l_hasFullAccess
      from dual
     where exists
       (select usr_key 
          from gpn_oim.usg
         where ugp_key = 1 and usr_key = i_initiator
         union all   
        select ua.usr_key 
          from gpn_oim.z_user_access ua
          join gpn_oim.ugp on ua.role_id = ugp.ugp_key and ugp.role_udf_role_sub_type in (1, 3)
         where ua.is_deleted = 0 and access_type = 'Role' and usr_key = i_initiator
       );
    exception when no_data_found then l_hasFullAccess := 0;   
  end;
  if l_hasFullAccess < 1 then
   select original_usr_key bulk collect into originalUsrArray
     from gpn_oim.z_vw_usr_proxy_for_admin_roles
    where proxy_usr_key = i_initiator; 
    
   select ec.company_id bulk collect into companyArray1
     from gpn_oim.z_mv_employments_with_comp ec
     join table(originalUsrArray) oa on ec.usr_key = value(oa)
    where ec.company_id is not null;
    
   select id bulk collect into restrictAccessArray
     from
     ( select res.id
         from gpn_oim.z_resources res
        where upper(is_public) = upper('true') and is_deleted <> 1 and res.system_id = 3
        union     
       select rp.resource_id 
         from gpn_oim.z_resource_publications rp
         join gpn_oim.z_resources res on rp.resource_id = res.id and res.system_id = 3 and res.is_deleted <> 1
         join table(companyArray1) ca on rp.company_id = value(ca)
        union  
       select res.id 
         from gpn_oim.z_resources res
         join table(companyArray1) ca on res.company_id = value(ca) and res.system_id = 3 and res.is_deleted <> 1
        union
       select res.id 
         from gpn_oim.z_resources res
         join table(originalUsrArray) ua on res.owner_id = value(ua) and res.system_id = 3 and res.is_deleted <> 1
     );
  end if;

select count(t_count.row_key) result_size into o_total_result_size
       from (
    select r2.id row_key,  -- ����� ����� �� ������� gpn_oim.z_get_default_access_id
           max(case when ra.resource_access_type_id = 1 and coalesce(re.entitlement_id,0) > 0 and r2.is_hidden = 0 then 1 end) ro,
           max(case when ra.resource_access_type_id = 2 and coalesce(re.entitlement_id,0) > 0 and r2.is_hidden = 0 then 1 end) rw,
           max(case when ra.resource_access_type_id = 7 and coalesce(re.entitlement_id,0) > 0 and r2.is_hidden = 0 then 1 end) wo,
           max(case when ra.resource_access_type_id in (0,8) and coalesce(re.entitlement_id,0) > 0 and r2.is_hidden = 0 then 1 end) rl,
           max(case when ra.resource_access_type_id = 9 and coalesce(re.entitlement_id,0) > 0 and r2.is_hidden = 0 then 1 end) m,
           r2.name, r2.description, r2.owner_id, usr.usr_display_name,
           r2.parent_resource_id, r2.has_child, r2.is_hidden, r2.path_names, r2.path_ids
         , case when sum(re.entitlement_id) > 0 then 1 else 0 
            end has_access
         , max(case when ra.resource_access_type_id = 1 and coalesce(re.entitlement_id,0) > 0 and r2.is_hidden = 0 then ra.id end) res_access_id_ro
         , max(case when ra.resource_access_type_id = 2 and coalesce(re.entitlement_id,0) > 0 and r2.is_hidden = 0 then ra.id end) res_access_id_rw
         , max(case when ra.resource_access_type_id = 7 and coalesce(re.entitlement_id,0) > 0 and r2.is_hidden = 0 then ra.id end) res_access_id_wo
         , max(case when ra.resource_access_type_id in (0,8) and coalesce(re.entitlement_id,0) > 0 and r2.is_hidden = 0 then ra.id end) res_access_id_rl
         , max(case when ra.resource_access_type_id = 9 and coalesce(re.entitlement_id,0) > 0 and r2.is_hidden = 0 then ra.id end) res_access_id_m
      from 
  ( select id, name, description, owner_id, parent_resource_id, is_hidden, hc has_child, 
           path_names, path_ids, uname, udescription
      from itsk_mv_resources_tree 
     where id = coalesce(currentFolderId,-1)
     union all
    select id, name, description, owner_id, parent_resource_id, is_hidden, hc has_child, 
           path_names, path_ids, uname, udescription
      from itsk_mv_resources_tree zr1
     where l_hasFullAccess = 1 -- ������ ������
       and (coalesce(i_doSearch,0)=0 or (coalesce(i_doSearch,0)>0 and (upper(zr1.uname) like upper(i_searchVal) or zr1.udescription like upper(i_searchVal))))
       and case when coalesce(i_doSearch,0)=0 then coalesce(currentFolderId,-1) else 1 end = case when coalesce(i_doSearch,0)=0 then coalesce(parent_resource_id,-1) else 1 end
     union all  
    select id, name, description, owner_id, parent_resource_id, is_hidden, hc has_child, 
           path_names, path_ids, uname, udescription
      from itsk_mv_resources_tree zr1
      join table(restrictAccessArray) sa on zr1.id = value(sa)
     where l_hasFullAccess <> 1  -- �� ������ ������
       and (coalesce(i_doSearch,0)=0 or (coalesce(i_doSearch,0)>0 and (upper(zr1.uname) like upper(i_searchVal) or zr1.udescription like upper(i_searchVal))))
       and case when coalesce(i_doSearch,0)=0 then coalesce(currentFolderId,-1) else 1 end = case when coalesce(i_doSearch,0)=0 then coalesce(parent_resource_id,-1) else 1 end
  ) r2
  left join gpn_oim.z_resource_access ra on r2.id = ra.resource_id and ra.resource_access_type_id in (0, 1, 2, 7, 8, 9)
  left join gpn_oim.z_resource_entitlements re on re.resource_access_id = ra.id
  left join gpn_oim.usr on r2.owner_id = usr.usr_key
 group by r2.id, r2.name, r2.description, r2.owner_id, r2.parent_resource_id,
          r2.is_hidden, r2.has_child, usr.usr_display_name, r2.path_names, r2.path_ids
          ) t_count;

  -- ��� �� �� �������� ����������� ��������
  open result_ for
  SELECT res_tree_maxResults.*
 from (select res_tree_full.*, rownum AS rnum   
 from (
    select r2.id row_key,  -- ����� ����� �� ������� gpn_oim.z_get_default_access_id
           max(case when ra.resource_access_type_id = 1 and coalesce(re.entitlement_id,0) > 0 and r2.is_hidden = 0 then 1 end) ro,
           max(case when ra.resource_access_type_id = 2 and coalesce(re.entitlement_id,0) > 0 and r2.is_hidden = 0 then 1 end) rw,
           max(case when ra.resource_access_type_id = 7 and coalesce(re.entitlement_id,0) > 0 and r2.is_hidden = 0 then 1 end) wo,
           max(case when ra.resource_access_type_id in (0,8) and coalesce(re.entitlement_id,0) > 0 and r2.is_hidden = 0 then 1 end) rl,
           max(case when ra.resource_access_type_id = 9 and coalesce(re.entitlement_id,0) > 0 and r2.is_hidden = 0 then 1 end) m,
           r2.name, r2.description, r2.owner_id, usr.usr_display_name,
           r2.parent_resource_id, r2.has_child, r2.is_hidden, r2.path_names, r2.path_ids
         , case when sum(re.entitlement_id) > 0 then 1 else 0 
            end has_access
         , max(case when ra.resource_access_type_id = 1 and coalesce(re.entitlement_id,0) > 0 and r2.is_hidden = 0 then ra.id end) res_access_id_ro
         , max(case when ra.resource_access_type_id = 2 and coalesce(re.entitlement_id,0) > 0 and r2.is_hidden = 0 then ra.id end) res_access_id_rw
         , max(case when ra.resource_access_type_id = 7 and coalesce(re.entitlement_id,0) > 0 and r2.is_hidden = 0 then ra.id end) res_access_id_wo
         , max(case when ra.resource_access_type_id in (0,8) and coalesce(re.entitlement_id,0) > 0 and r2.is_hidden = 0 then ra.id end) res_access_id_rl
         , max(case when ra.resource_access_type_id = 9 and coalesce(re.entitlement_id,0) > 0 and r2.is_hidden = 0 then ra.id end) res_access_id_m
      from 
  ( select id, name, description, owner_id, parent_resource_id, is_hidden, hc has_child, 
           path_names, path_ids, uname, udescription
      from itsk_mv_resources_tree 
     where id = coalesce(currentFolderId,-1)
     union all
    select id, name, description, owner_id, parent_resource_id, is_hidden, hc has_child, 
           path_names, path_ids, uname, udescription
      from itsk_mv_resources_tree zr1
     where l_hasFullAccess = 1 -- ������ ������
       and (coalesce(i_doSearch,0)=0 or (coalesce(i_doSearch,0)>0 and (upper(zr1.uname) like upper(i_searchVal) or zr1.udescription like upper(i_searchVal))))
       and case when coalesce(i_doSearch,0)=0 then coalesce(currentFolderId,-1) else 1 end = case when coalesce(i_doSearch,0)=0 then coalesce(parent_resource_id,-1) else 1 end
     union all  
    select id, name, description, owner_id, parent_resource_id, is_hidden, hc has_child, 
           path_names, path_ids, uname, udescription
      from itsk_mv_resources_tree zr1
      join table(restrictAccessArray) sa on zr1.id = value(sa)
     where l_hasFullAccess <> 1  -- �� ������ ������
       and (coalesce(i_doSearch,0)=0 or (coalesce(i_doSearch,0)>0 and (upper(zr1.uname) like upper(i_searchVal) or zr1.udescription like upper(i_searchVal))))
       and case when coalesce(i_doSearch,0)=0 then coalesce(currentFolderId,-1) else 1 end = case when coalesce(i_doSearch,0)=0 then coalesce(parent_resource_id,-1) else 1 end
  ) r2
  left join gpn_oim.z_resource_access ra on r2.id = ra.resource_id and ra.resource_access_type_id in (0, 1, 2, 7, 8, 9)
  left join gpn_oim.z_resource_entitlements re on re.resource_access_id = ra.id
  left join gpn_oim.usr on r2.owner_id = usr.usr_key
 group by r2.id, r2.name, r2.description, r2.owner_id, r2.parent_resource_id,
          r2.is_hidden, r2.has_child, usr.usr_display_name, r2.path_names, r2.path_ids
 order by r2.id, r2.name, r2.description, r2.owner_id, r2.parent_resource_id,
          r2.is_hidden, r2.has_child, usr.usr_display_name, r2.path_names, r2.path_ids
          ) res_tree_full
 where rownum <= (i_skip + i_maxResults) 
) res_tree_maxResults         
WHERE rnum > i_skip;
END itsk_get_folder_tree_limit;
/


--rollback DROP PROCEDURE itsk_get_folder_tree_limit;
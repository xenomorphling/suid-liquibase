--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

CREATE OR REPLACE VIEW Z_VW_OTHER_ROLES
  AS
select is_conf,
    rs.id as id, rati.id as resource_access_type_id , z_compose_access_name(rati.id,rati.resource_access_type_name,rs.name  ) as name,
    rs.name as resource_name,
    rs.id as resource_id,
    to_char(rs.id)||'_'||to_char(rati.id) as resource_access_tmp_id,
    rs.system_id as system_id,
    ra.id as resource_access_id,
    case
      when rs.is_manual_control=1 and ra.resource_access_type_id=0
           then to_clob (rs.description)
      when ra.is_manual_control=1
           then ra.access_description
           else to_clob(z_entitlement.system_description)
    end as description,
    lsys.system_name,
    usr.usr_key as owner_id,
    usr.usr_display_name as owner_display_name,
    comp.id  as company_id,
    comp.company_name
    ,rs.resource_type
    ,lkp.LKV_DECODED as resource_type_name
    ,lsys.app_instance_key
  FROM z_resources rs
        JOIN z_vw_other_log_systems lsys
          ON rs.system_id=lsys.id
        LEFT JOIN usr
          ON rs.owner_id=usr.usr_key
        LEFT JOIN z_resource_access ra
          ON ra.resource_id=rs.id
        INNER JOIN z_resource_access_type_info rati
          ON ra.resource_access_type_id=rati.id
        INNER JOIN z_resource_entitlements rent
          ON rent.resource_access_id=ra.id
        LEFT JOIN Z_ENTITLEMENT
          ON rent.entitlement_id=Z_ENTITLEMENT.ID
        LEFT JOIN z_companies comp
          ON rs.company_id=comp.id
        LEFT JOIN itsk_lookups_v lkp
          ON lkp.LKU_TYPE_STRING_KEY = 'Z.Lookup.ResourceTypes' and rs.resource_type = lkp.LKV_ENCODED
  WHERE rs.is_hidden=0
    AND rs.is_deleted=0
    AND (comp.id IS NULL OR comp.is_deleted=0);

-- Privileges
grant select, insert, update on Z_VW_OTHER_ROLES to DEVELOPER;
grant select, insert, update on Z_VW_OTHER_ROLES to SUPPORT;

--rollback DROP VIEW Z_VW_OTHER_ROLES;
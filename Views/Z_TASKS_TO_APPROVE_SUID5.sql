--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

CREATE OR REPLACE VIEW GPN_OIM.Z_TASKS_TO_APPROVE_SUID5 AS
(
 select step_id from Z_PROCESS_STEP where step_id in (
             select STEP_ID from Z_PROCESS_STEP_ATTRS
               where attrname='wait_condition_id'
                     and attrvalue in (
                         select id from z_wait_condition
                         where check_type = 'AdminTask'
                               and id in (
                                 select id
                                    from z_wait_condition_attrs
                                    where attrname = 'task_id'
                                           and attrvalue not in (
                                           select id from z_admin_task
                                                  where state = 'Open'
                                           )
                                    )
                                 )
                      ) and step_state='CURRENT'
                           /*       union
 select taskid as task_id--, m.textattribute1 , zpsa.attrvalue as waitstepname
  from z_vw_leaf_tasks m
            inner join z_process_step zps on nvl(TASKGROUPID,taskid )=zps.task_id
            inner join z_process_step_attrs zpsa on zps.step_id=zpsa.step_id and zpsa.attrname='step_name' and zpsa.attrvalue like 'WaitHR%'
             where m.state='ASSIGNED'  and m.textattribute1 is not null
*/

      /*                           union
 select taskid as task_id--, m.textattribute1 , zpsa.attrvalue as waitstepname
  from z_vw_leaf_tasks m
            inner join z_process_step zps on nvl(TASKGROUPID,taskid )=zps.task_id
            inner join z_process_step_attrs zpsa on zps.step_id=zpsa.step_id and zpsa.attrname='step_name' and zpsa.attrvalue like 'Wait%'
             where m.state='ASSIGNED'  and m.textattribute1 is not null
  union all
  select task_id from (
           select taskid as task_id from z_vw_leaf_tasks m
           where state='ASSIGNED' -- and (m.TASKGROUPID is not null or
               --  taskid not in (select TASKGROUPID from z_vw_wftask_mirror where TASKGROUPID is not null))
                 and textattribute1 is not null and
                     textattribute1 in (select idm_request_id from z_request_item  where item_type='AccountCreation'  and request_id in (select id from z_requests where request_type='AccountCreation'))
                 and nvl(TASKGROUPID,taskid ) in (
                   select task_id from z_process_step where step_type='Wait'
                          and task_id is not null and step_id in (
                              select step_id from z_process_step_attrs where attrname='wait_reason_code' and attrvalue='suspended_till_access_approval'
                              )
                          and step_id in (
                              select step_id from z_process_step_attrs where attrname='wait_condition_id'
                          )
                )  and rownum > 0 and rownum <= 5 --redmine 566
       ) where z_req_check_child_reqs(task_id) in (1, -1)*/

       union all

select distinct q.step_id
  from (select zri.id              as firstid,
               zri.id              as item_id,
               m.step_id,
               m.idm_process_id,
               zpsa.attrvalue      as waitstepname,
               zri.request_id,
               zri.beneficiary_key
          from z_process_step m
         inner join z_process zp
            on zp.idm_process_id = m.idm_process_id        
         inner join z_process_step_attrs zpsa
            on m.step_id = zpsa.step_id
           and zpsa.attrname = 'step_name'
           and zpsa.attrvalue like 'Wait%'
           and m.step_state = 'CURRENT'
           and m.idm_process_id is not null
         inner join z_request_item zri
            on zri.idm_request_id = m.idm_process_id) q
 where not exists (select *
          from z_vw_not_reached_wait_steps notreachedsteps
         where
           notreachedsteps.request_id = q.request_id
           and notreachedsteps.beneficiary_key = q.beneficiary_key
           and q.item_id != notreachedsteps.request_item_id
           and notreachedsteps.step_name=q.waitstepname
           )
/*
union all


select distinct q.task_id
  from (select zri.id              as firstid,
               zri.id              as item_id,
               taskid              as task_id,
               m.textattribute1,
               zpsa.attrvalue      as waitstepname,
               zri.request_id,
               zri.beneficiary_key
          from z_vw_leaf_tasks m
         inner join z_process zp
            on zp.idm_process_id = m.textattribute1
         inner join z_process_step zps
            on nvl(TASKGROUPID, taskid) = zps.task_id
         inner join z_process_step_attrs zpsa
            on zps.step_id = zpsa.step_id
           and zpsa.attrname = 'step_name'
           and zpsa.attrvalue like 'Wait%'
           and m.state = 'ASSIGNED'
           and m.textattribute1 is not null
         inner join z_request_item zri
            on zri.idm_request_id = m.textattribute1) q
 where not exists (select *
          from z_request_item zri2
         where zri2.approval_state is null
           and zri2.request_id = q.request_id
           and zri2.beneficiary_key = q.beneficiary_key
           and q.item_id != zri2.id
           and zri2.idm_request_id not in
               (
                select w.idm_process_id
                  from (select zpsa.attrvalue, zps.idm_process_id
                           from z_process_step zps
                          inner join z_process_step_attrs zpsa
                             on zps.step_type = 'Wait'
                            and zpsa.step_id = zps.step_id
                            and zpsa.attrname = 'step_name') w
                 where w.attrvalue = q.waitstepname -- and w.idm_process_id=zri2.idm_request_id
                ))


/*
 select distinct task_id from (

 select
 zri.id as item_id,
 taskid as task_id,
                        m.textattribute1,
                        zpsa.attrvalue   as waitstepname,
                        zri.request_id,
                        zri.beneficiary_key
                   from z_vw_leaf_tasks m
                  inner join z_process zp on zp.idm_process_id=m.textattribute1
                  inner join z_process_step zps
                     on nvl(TASKGROUPID, taskid) = zps.task_id
                  inner join z_process_step_attrs zpsa
                     on zps.step_id = zpsa.step_id
                    and zpsa.attrname = 'step_name'
                    and zpsa.attrvalue like 'Wait%'
                    and m.state = 'ASSIGNED'
                    and m.textattribute1 is not null
                 inner join z_request_item zri on zri.idm_request_id= m.textattribute1
                 ) q left join z_request_item zri2 on zri2.request_id=q.request_id and zri2.beneficiary_key=q.beneficiary_key and q.item_id!=zri2.id
                 left join z_process zp on zp.idm_process_id=zri2.idm_request_id and
                 (zp.attr1 = q.waitstepname
                 or zp.attr1 like q.waitstepname||'|%'
                 or zp.attr1 like '%|'||q.waitstepname
                 or zp.attr1 like '%|'||q.waitstepname || '|%')
                  and
                 (zp.attr1 = decode(q.waitstepname,'WaitHRExprt','HRExpert','WaitMngr','Manager','WaitOwnr','Owner' , null)
                 or zp.attr1 like decode(q.waitstepname,'WaitHRExprt','HRExpert','WaitMngr','Manager','WaitOwnr','Owner' , null)||'|%'
                 or zp.attr1 like '%|'||decode(q.waitstepname,'WaitHRExprt','HRExpert','WaitMngr','Manager','WaitOwnr','Owner' , null)
                 or zp.attr1 like '%|'||decode(q.waitstepname,'WaitHRExprt','HRExpert','WaitMngr','Manager','WaitOwnr','Owner' , null) || '|%')
                 and not exists (
                 select * from (
                  select textattribute1 as rid, attrvalue as stepname from z_vw_wftask_mirror wft inner join z_process_step zps on zps.idm_process_id=textattribute1 and zps.step_type='Approval'
 inner join z_process_step_attrs zpsa on zpsa.step_id=zps.step_id and attrname='step_name' and outcome is not null
                 ) w where w.rid=zri2.idm_request_id and w.stepname=  decode(q.waitstepname,'WaitHRExprt','HRExpert','WaitMngr','Manager','WaitOwnr','Owner' , null)
                 )

                 where zri2.id is null
*/

 union all
              select step_id from (
           select zps.step_id, zps.idm_process_id , zpsa.attrvalue as waitstepname from z_process_step zps 
            inner join z_process_step_attrs zpsa on zps.step_id=zpsa.step_id and zpsa.attrname='step_name' and zpsa.attrvalue like 'SOD%'
             where zps.step_state='CURRENT'  and zps.idm_process_id is not null
           --and rownum>0
           --and rownum < 500 --redmine 566 --26.12.2018 c 200 -> 500
      ) where gpn_oim.z_req_check_sod_performed5(waitstepname,idm_process_id, step_id) >0
         and rownum>0
            and rownum < 500
/*
select task_id
           from (select taskid           as task_id,
                        m.textattribute1,
                        zpsa.attrvalue   as waitstepname
                   from z_vw_leaf_tasks m

                  inner join z_process_step zps
                     on nvl(TASKGROUPID, taskid) = zps.task_id
                  inner join z_process_step_attrs zpsa
                     on zps.step_id = zpsa.step_id
                    and zpsa.attrname = 'step_name'
                    and zpsa.attrvalue like 'Wait%'
                  where m.state = 'ASSIGNED'
                    and m.textattribute1 is not null
                    and rownum > 0
                 -- where z_req_check_child_reqs(task_id) in (1, -1)
                 )
          where z_req_check_parall_reqs(waitstepname, textattribute1, task_id) > 0
          */



             --and 1=0

        --    union select '37bd467a-a0a2-4cf3-9377-bd017892eba8' as task_id, null as textattribute1 , null as  waitstepname
       --      from z_vw_leaf_tasks m   where m.state='ASSIGNED'
 );



--rollback DROP VIEW GPN_OIM.Z_TASKS_TO_APPROVE_SUID5;
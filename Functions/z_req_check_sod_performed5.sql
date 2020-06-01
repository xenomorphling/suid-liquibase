--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

CREATE OR REPLACE function GPN_OIM.z_req_check_sod_performed5(i_stepName varchar2,
                                                    i_idmReqId     varchar2,
                                                    i_taskId       varchar2)

  Return number AS
   l_reqId    varchar2(100);
   l_idmReqId varchar2(100);

   l_sodPerformed number;

   l_DEBUG number;
 BEGIN
   l_DEBUG := 0;
   if (i_stepName is null) then
     return 1;
   end if;

   l_idmReqId := i_idmReqId;
   if (l_DEBUG > 0) then
     DBMS_OUTPUT.PUT_LINE('z_req_check_sod_performed: l_idmReqId = ' ||
                          l_idmReqId);
   end if;
   l_reqId := z_req_get_req_id(l_idmReqId);

   if (l_DEBUG > 0) then
     DBMS_OUTPUT.PUT_LINE('z_req_check_sod_performed: l_reqId = ' || l_reqId);
   end if;

   if (i_stepName is not null) then
     begin
       select count(*)
         into l_sodPerformed
         from z_request_item
         inner join z_process_step on z_request_item.idm_request_id=z_process_step.idm_process_id and z_process_step.step_type='SOD'
         inner join z_process_step_attrs on z_process_step.step_id=z_process_step_attrs.step_id and attrname='step_name' and attrvalue=i_stepName
         inner join z_process_step_attrs zpsa2  on z_process_step.step_id=zpsa2.step_id  and zpsa2.attrname='SODPerformed' and zpsa2.attrvalue='true'
          where z_request_item.request_id = l_reqId;

       if (l_sodPerformed > 0) then
         return 1;
         else
           return 0;
       end if;

     end;
   end if;
   return 1;
 END;
/


--rollback DROP FUNCTION GPN_OIM.z_req_check_sod_performed5;
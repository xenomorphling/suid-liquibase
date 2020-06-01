--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

CREATE OR REPLACE FUNCTION GPN_OIM.itsk_get_role_id (
          pi_role_code       VARCHAR2
  ) RETURN NUMBER AS
  l_role_id   GPN_OIM.ugp.ugp_key%TYPE := null;
Begin
  if ( pi_role_code is not null )
  then
      select ugp_key
        into l_role_id
        from gpn_oim.ugp
       where ugp_name = pi_role_code;      
  end if;   
  
  return l_role_id;
Exception
  when others then
     return -1;
End;
/


--rollback DROP FUNCTION GPN_OIM.itsk_get_role_id;
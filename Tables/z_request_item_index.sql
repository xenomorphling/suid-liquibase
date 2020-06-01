--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

DELETE FROM gpn_oim.z_request_item WHERE id IS NULL;
COMMIT;

CREATE UNIQUE INDEX gpn_oim.pk_z_request_item ON gpn_oim.z_request_item  
(ID)
LOGGING
TABLESPACE gpn_oim
PCTFREE    5
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          512K
            NEXT             1M
           );
           
ALTER TABLE gpn_oim.z_request_item ADD (
  CONSTRAINT pk_z_request_item
  PRIMARY KEY
  (ID)
  USING INDEX GPN_OIM.pk_z_request_item
  ENABLE VALIDATE);

--rollback DROP INDEX gpn_oim.pk_z_request_item;
--rollback ALTER TABLE GPN_OIM.z_request_item DROP COLUMN pk_z_request_item;
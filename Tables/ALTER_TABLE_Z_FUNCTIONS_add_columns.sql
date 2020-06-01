--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

ALTER TABLE GPN_OIM.Z_FUNCTIONS ADD (  
  ENDPOINT_ID     NUMBER
);

--rollback  ALTER Table gpn_oim.z_functions DELETE COLUMN ENDPOINT_ID;
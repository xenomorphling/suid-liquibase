--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

CREATE INDEX gpn_oim.z_process_step_i03 ON gpn_oim.z_process_step
(creation_date)
LOGGING
TABLESPACE gpn_oim
PCTFREE    5
INITRANS   2
MAXTRANS   255
STORAGE    (INITIAL          512K
            NEXT             1M);

--rollback DROP INDEX gpn_oim.z_process_step_i03;
--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

CREATE INDEX GPN_OIM.Z_REQUEST_ITEM_I04 ON GPN_OIM.Z_REQUEST_ITEM
(beneficiary_key)
LOGGING
PCTFREE    5
INITRANS   5
MAXTRANS   255    
TABLESPACE GPN_OIM
STORAGE    (INITIAL          512K
            NEXT             1M);

--rollback DROP INDEX GPN_OIM.Z_REQUEST_ITEM_I04;
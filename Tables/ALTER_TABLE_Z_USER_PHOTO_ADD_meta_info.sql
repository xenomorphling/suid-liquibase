--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

ALTER TABLE gpn_oim.Z_USER_PHOTO ADD meta_info VARCHAR2(200);

--rollback ALTER TABLE gpn_oim.Z_USER_PHOTO DROP COLUMN meta_info;
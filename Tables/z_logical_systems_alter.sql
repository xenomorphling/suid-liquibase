--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

ALTER TABLE z_logical_systems ADD is_resource_creation_supported number;

--rollback ALTER TABLE z_logical_systems DROP COLUMN is_resource_creation_supported;
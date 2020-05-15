--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

alter table gpn_oim.Z_USER_PHOTO modify (IMAGE null);

--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

-- Create sequence
create sequence GPN_OIM.POINTS_SEQ
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

--rollback DROP sequence GPN_OIM.POINTS_SEQ;
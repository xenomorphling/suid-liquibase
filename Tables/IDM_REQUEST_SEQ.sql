--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

CREATE SEQUENCE GPN_OIM.IDM_REQUEST_SEQ
  START WITH -10
  INCREMENT BY -1;

--rollback DROP SEQUENCE GPN_OIM.IDM_REQUEST_SEQ;
--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

-- Create table
create table GPN_OIM.REST_ENDPOINTS
(
  id          NUMBER not null,
  url         VARCHAR2(100) not null,
  method_type VARCHAR2(20) not null
)
tablespace GPN_OIM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

--rollback DROP table GPN_OIM.REST_ENDPOINTS;
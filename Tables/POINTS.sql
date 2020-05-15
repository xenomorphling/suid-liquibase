--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

-- Create table
create table GPN_OIM.POINTS
(
  id          NUMBER not null,
  point_name  VARCHAR2(100) not null,
  point_title VARCHAR2(100) not null
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

-- Add keys constraints
alter table GPN_OIM.POINTS
  add constraint points_pk primary key (ID);


--rollback DROP table GPN_OIM.POINTS;
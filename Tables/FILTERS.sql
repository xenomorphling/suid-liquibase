--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

-- Create table
create table GPN_OIM.FILTERS
(
  id                NUMBER not null,
  point_id          NUMBER not null,
  ugp_key           NUMBER not null,
  sql_filter_clause VARCHAR2(4000),
  created_date      TIMESTAMP(6),
  display_title     VARCHAR2(4000)
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
alter table GPN_OIM.FILTERS
  add constraint filters_pk primary key (ID);




--rollback DROP TABLE GPN_OIM.FILTERS;
--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

-- Create table
create table GPN_OIM.WIDGET_FUNCTIONS_ROLE_SETTINGS
(
  widget_set_code VARCHAR2(255) not null,
  widget_code     VARCHAR2(255) not null,
  function_id     NUMBER,
  status          VARCHAR2(10),
  create_date     TIMESTAMP(6),
  update_date     TIMESTAMP(6)
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

-- Add comments to the table
comment on table GPN_OIM.WIDGET_FUNCTIONS_ROLE_SETTINGS
  is 'Справочник виджетов, входящих в наборы виджетов';

-- Privileges
grant select, insert, update on GPN_OIM.WIDGET_FUNCTIONS_ROLE_SETTINGS to DEVELOPER;
grant select, insert, update, delete, references, alter, index on GPN_OIM.WIDGET_FUNCTIONS_ROLE_SETTINGS to FATKULINADV;
grant select, insert, update, delete, references, alter, index on GPN_OIM.WIDGET_FUNCTIONS_ROLE_SETTINGS to GUBELKA;
grant select, insert, update, delete, references, alter, index on GPN_OIM.WIDGET_FUNCTIONS_ROLE_SETTINGS to IVANOVIAN;
grant select, insert, update, delete, references, alter, index on GPN_OIM.WIDGET_FUNCTIONS_ROLE_SETTINGS to KONDRATENKOVV;
grant select, insert, update on GPN_OIM.WIDGET_FUNCTIONS_ROLE_SETTINGS to SUPPORT;
grant select, insert, update, delete, references, alter, index on GPN_OIM.WIDGET_FUNCTIONS_ROLE_SETTINGS to VOLTORNISTYUN;

-- Add checks constraints
alter table GPN_OIM.WIDGET_FUNCTIONS_ROLE_SETTINGS
  add check (STATUS IN ('enable', 'disable'));

--rollback DROP table GPN_OIM.WIDGET_FUNCTIONS_ROLE_SETTINGS;
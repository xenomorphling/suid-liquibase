--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

-- Create table
create table gpn_oim.Z_USER_PHOTO
(
  usr_key       NUMBER(19) not null,
  image         BLOB not null,
  creation_date TIMESTAMP(6) default to_timestamp(sysdate) not null,
  update_date   TIMESTAMP(6) default to_timestamp(sysdate) not null,
  file_name     VARCHAR2(400 char),
  uploaded_by   NUMBER(19) not null
)
tablespace GPN_OIM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  ( initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

grant select, insert, update, delete on gpn_oim.Z_USER_PHOTO to BONDARFV;
grant select, insert, update on gpn_oim.Z_USER_PHOTO to DEVELOPER;
grant select, insert, update on gpn_oim.Z_USER_PHOTO to SUPPORT;

create index gpn_oim.IDX_Z_USER_PHOTO_CREATION_DATE on gpn_oim.Z_USER_PHOTO (CREATION_DATE)
  tablespace GPN_OIM
  pctfree 10
  initrans 2
  maxtrans 255;
  
create index gpn_oim.IDX_Z_USER_PHOTO_UPDATE_DATE on gpn_oim.Z_USER_PHOTO (UPDATE_DATE)
  tablespace GPN_OIM
  pctfree 10
  initrans 2
  maxtrans 255;

alter table gpn_oim.Z_USER_PHOTO
  add constraint pk_z_user_photo primary key (USR_KEY);




--rollback DROP TABLE gpn_oim.Z_USER_PHOTO;
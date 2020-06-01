--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

create table LOGICAL_SYSTEM_EXT_OWNER
(
    SYSTEM_ID NUMBER(19) not null
        constraint LOGICAL_SYSTEM_EXT_OWNER
            primary key
        constraint FK_LSEO_ZLS
            references Z_LOGICAL_SYSTEMS,
    FIRST_NAME VARCHAR2(128 char) not null,
    LAST_NAME VARCHAR2(128 char) not null,
    PATRONYMIC VARCHAR2(128 char),
    JOB_TITLE VARCHAR2(128 char) not null,
    DEPARTMENT VARCHAR2(1024 char),
    ORGANISATION_NAME VARCHAR2(1024 char),
    ORGANISATION_SHORT_NAME VARCHAR2(128 char)
)
/

comment on table LOGICAL_SYSTEM_EXT_OWNER is 'Cвязь Информационная система - владелец не пользователь СУИД'
/

comment on column LOGICAL_SYSTEM_EXT_OWNER.FIRST_NAME is 'Фамилия'
/

comment on column LOGICAL_SYSTEM_EXT_OWNER.LAST_NAME is 'Имя'
/

comment on column LOGICAL_SYSTEM_EXT_OWNER.PATRONYMIC is 'Отчество'
/

comment on column LOGICAL_SYSTEM_EXT_OWNER.JOB_TITLE is 'Должность'
/

comment on column LOGICAL_SYSTEM_EXT_OWNER.DEPARTMENT is 'Подразделение'
/

comment on column LOGICAL_SYSTEM_EXT_OWNER.ORGANISATION_NAME is 'Дочернее общество'
/

comment on column LOGICAL_SYSTEM_EXT_OWNER.ORGANISATION_SHORT_NAME is 'Дочернее общество, кратко'
/



--rollback DROP table LOGICAL_SYSTEM_EXT_OWNER;
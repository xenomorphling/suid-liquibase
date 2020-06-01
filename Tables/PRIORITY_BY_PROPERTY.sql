--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

create table PRIORITY_BY_PROPERTY
(
    CLIENT_ID VARCHAR2(36 char) not null
        constraint PBP_EDS_FK
            references EXTERNAL_DATA_SOURCE,
    PROPERTY_NAME VARCHAR2(64 char) not null,
    PRIORITY NUMBER default 0 not null
)
/

create unique index PRIORITY_BY_PROPERTY_uindex
    on PRIORITY_BY_PROPERTY (CLIENT_ID, PROPERTY_NAME)
/

comment on table PRIORITY_BY_PROPERTY is 'Приоритеты источников внешних данных
для конкретных свойств информационной системы'
/


--rollback DROP table PRIORITY_BY_PROPERTY;
--rollback DROP index PRIORITY_BY_PROPERTY_uindex;
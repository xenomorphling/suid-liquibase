--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

create table EXTERNAL_DATA_SOURCE
(
    CLIENT_ID VARCHAR2(36 char) not null
        constraint EXTERNAL_DATA_SOURCE_PK
            primary key,
    SOURCE_NAME VARCHAR2(64 char),
    DESCRIPTION VARCHAR2(1024 char),
    PRIORITY NUMBER default 0 not null
)
/

comment on table EXTERNAL_DATA_SOURCE is 'Источники внешних данных'
/

create unique index IDX_EDS_NAME
    on EXTERNAL_DATA_SOURCE (SOURCE_NAME)
/



--rollback drop table EXTERNAL_DATA_SOURCE;
--rollback drop index IDX_EDS_NAME;
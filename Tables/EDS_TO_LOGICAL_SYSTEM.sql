--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

create table EDS_TO_LOGICAL_SYSTEM
(
    CLIENT_ID VARCHAR2(36 char) not null
        constraint EDS_TO_LS_FK
            references EXTERNAL_DATA_SOURCE,
    LOGICAL_SYSTEM_ID NUMBER not null
        constraint LS_TO_EDC_FK
            references Z_LOGICAL_SYSTEMS,
    EXT_LOGICAL_SYSTEM_ID VARCHAR2(100 char) not null,
    constraint EDS_TO_LOGICAL_SYSTEM_PK
        primary key (CLIENT_ID, LOGICAL_SYSTEM_ID)
)
/




--rollback DROP table EDS_TO_LOGICAL_SYSTEM;
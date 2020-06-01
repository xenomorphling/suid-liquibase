--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

create table LOGICAL_SYSTEM_OWNER
(
    SYSTEM_ID NUMBER(19) not null
        constraint PK_LOGICAL_SYSTEM_OWNER
            primary key
        constraint FK_LSO_ZLS
            references Z_LOGICAL_SYSTEMS,
    USR_KEY NUMBER(19)
        constraint FK_LSO_USR
            references USR
)
/

comment on table LOGICAL_SYSTEM_OWNER is 'Cвязь Информационная система - владелец'
/



--rollback DROP table LOGICAL_SYSTEM_OWNER;
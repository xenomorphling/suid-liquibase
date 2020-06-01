--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

create table JV_GLOBAL_ID
(
    GLOBAL_ID_PK NUMBER not null
        constraint JV_GLOBAL_ID_PK
            primary key,
    LOCAL_ID VARCHAR2(191 char),
    FRAGMENT VARCHAR2(200 char),
    TYPE_NAME VARCHAR2(200 char),
    OWNER_ID_FK NUMBER
        constraint JV_GLOBAL_ID_OWNER_ID_FK
            references JV_GLOBAL_ID
)
/

create index JV_GLOBAL_ID_LOCAL_ID_IDX
    on JV_GLOBAL_ID (LOCAL_ID)
/

create index JV_GLOBAL_ID_OWNER_ID_FK_IDX
    on JV_GLOBAL_ID (OWNER_ID_FK)
/



--rollback DROP table JV_GLOBAL_ID;
--rollback DROP index JV_GLOBAL_ID_LOCAL_ID_IDX;
--rollback DROP index JV_GLOBAL_ID_OWNER_ID_FK_IDX;
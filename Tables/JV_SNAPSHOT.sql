--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

create table JV_SNAPSHOT
(
    SNAPSHOT_PK NUMBER not null
        constraint JV_SNAPSHOT_PK
            primary key,
    TYPE VARCHAR2(200 char),
    VERSION NUMBER,
    STATE CLOB,
    CHANGED_PROPERTIES CLOB,
    MANAGED_TYPE VARCHAR2(200 char),
    GLOBAL_ID_FK NUMBER
        constraint JV_SNAPSHOT_GLOBAL_ID_FK
            references JV_GLOBAL_ID,
    COMMIT_FK NUMBER
        constraint JV_SNAPSHOT_COMMIT_FK
            references JV_COMMIT
)
/

create index JV_SNAPSHOT_GLOBAL_ID_FK_IDX
    on JV_SNAPSHOT (GLOBAL_ID_FK)
/

create index JV_SNAPSHOT_COMMIT_FK_IDX
    on JV_SNAPSHOT (COMMIT_FK)
/



--rollback DROP table JV_SNAPSHOT;
--rollback DROP index JV_SNAPSHOT_GLOBAL_ID_FK_IDX;
--rollback DROP index JV_SNAPSHOT_COMMIT_FK_IDX;
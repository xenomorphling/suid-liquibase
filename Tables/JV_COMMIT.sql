--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

create table JV_COMMIT
(
    COMMIT_PK NUMBER not null
        constraint JV_COMMIT_PK
            primary key,
    AUTHOR VARCHAR2(200 char),
    COMMIT_DATE TIMESTAMP(6),
    COMMIT_DATE_INSTANT VARCHAR2(30 char),
    COMMIT_ID NUMBER(22,2)
)
/

create index JV_COMMIT_COMMIT_ID_IDX
    on JV_COMMIT (COMMIT_ID)
/



--rollback DROP table JV_COMMIT;
--rollback DROP index JV_COMMIT_COMMIT_ID_IDX;
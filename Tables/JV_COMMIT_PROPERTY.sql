--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

create table JV_COMMIT_PROPERTY
(
    PROPERTY_NAME VARCHAR2(191 char) not null,
    PROPERTY_VALUE VARCHAR2(600 char),
    COMMIT_FK NUMBER not null
        constraint JV_COMMIT_PROPERTY_COMMIT_FK
            references JV_COMMIT,
    constraint JV_COMMIT_PROPERTY_PK
        primary key (COMMIT_FK, PROPERTY_NAME)
)
/

create index JV_COMMIT_PROPERTY_COMMIT_FK_I
    on JV_COMMIT_PROPERTY (COMMIT_FK)
/

create index JV_COMMIT_PROPERTY_PROPERTY_NA
    on JV_COMMIT_PROPERTY (PROPERTY_NAME, PROPERTY_VALUE)
/



--rollback DROP table JV_COMMIT_PROPERTY;
--rollback DROP index JV_COMMIT_PROPERTY_COMMIT_FK_I;
--rollback DROP index JV_COMMIT_PROPERTY_PROPERTY_NA;
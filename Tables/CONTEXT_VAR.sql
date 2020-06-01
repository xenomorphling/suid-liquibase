--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

create table CONTEXT_VAR (
    ID number(19),
    NAME varchar2(128) not null,
    constraint PK_CONTEXT_VAR primary key (ID)
)
;
create index IDX_CONTEXT_VAR_NAME ON CONTEXT_VAR(NAME)
;
create sequence CONTEXT_VAR_SEQ
;
comment on table CONTEXT_VAR is 'Имена переменных контекста'
;

/*
 rollback
    drop sequence CONTEXT_VAR_SEQ
    ;
    drop index IDX_CONTEXT_VAR_NAME
    ;
    drop table CONTEXT_VAR
 */


--rollback drop sequence CONTEXT_VAR_SEQ;
--rollback drop index IDX_CONTEXT_VAR_NAME;
--rollback drop table CONTEXT_VAR;
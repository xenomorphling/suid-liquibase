--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

create table CONTEXT_VAL_STRING (
    ID number(19),
    VAL varchar2(1024),
    VAR_ID number(19) not null constraint FK_CTX_VAL_STRING_CTX_VAR references CONTEXT_VAR,
    constraint PK_CONTEXT_VAL_STRING primary key (ID),
    constraint UC_PK_CONTEXT_VAL_STRING_VAR_ID unique (VAR_ID)
)
;
create sequence CONTEXT_VAL_STRING_SEQ
;
comment on table CONTEXT_VAL_STRING is 'Значения строковых переменных контекста'
;

/*
 rollback
    drop sequence CONTEXT_VAL_STRING_SEQ
    ;
    drop table CONTEXT_VAL_STRING
    ;
 */

--rollback drop sequence CONTEXT_VAL_STRING_SEQ;
--rollback drop table CONTEXT_VAL_STRING;
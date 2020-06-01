--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

create table CONTEXT_VAL_LONG (
    ID number(19),
    VAL number(19),
    VAR_ID number(19) not null constraint FK_CTX_VAL_LONG_CTX_VAR references CONTEXT_VAR,
    constraint PK_CONTEXT_VAL_LONG primary key (ID),
    constraint UC_PK_CONTEXT_VAL_LONG_VAR_ID unique (VAR_ID)
)
;
create sequence CONTEXT_VAL_LONG_SEQ
;
comment on table CONTEXT_VAL_LONG is 'Значения целочисленных переменных контекста'
;

/*
 rollback
    drop sequence CONTEXT_VAL_LONG_SEQ
    ;
    drop table CONTEXT_VAL_LONG
    ;
 */

--rollback drop sequence CONTEXT_VAL_LONG_SEQ;
--rollback drop table CONTEXT_VAL_LONG;
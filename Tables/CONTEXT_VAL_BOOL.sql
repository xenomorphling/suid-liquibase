--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

create table CONTEXT_VAL_BOOL (
                                  ID number(19),
                                  VAL  NUMBER(1) CHECK (val IN (0,1)),
                                  VAR_ID number(19) not null constraint FK_CTX_VAL_BOOL_CTX_VAR references CONTEXT_VAR,
                                  constraint PK_CONTEXT_VAL_BOOL primary key (ID),
                                  constraint UC_PK_CONTEXT_VAL_BOOL_VAR_ID unique (VAR_ID)
)
;
create sequence CONTEXT_VAL_BOOL_SEQ
;
comment on table CONTEXT_VAL_BOOL is 'Значения булевых переменных контекста'
;

/*
 rollback
    drop sequence CONTEXT_VAL_BOOL_SEQ
    ;
    drop table CONTEXT_VAL_BOOL
    ;
 */

--rollback drop sequence CONTEXT_VAL_BOOL_SEQ;
--rollback drop table CONTEXT_VAL_BOOL;
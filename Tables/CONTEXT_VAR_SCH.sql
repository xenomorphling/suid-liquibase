--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

create table CONTEXT_VAR_SCH (
                                 SCH_KEY number(19) not null constraint FK_CONTEXT_VAR_SCH_SCH references SCH,
                                 VAR_ID number(19) not null constraint FK_CONTEXT_VAR_SCH_VAR references CONTEXT_VAR,
                                 constraint PK_CONTEXT_VAR_SCH primary key (SCH_KEY, VAR_ID)
)
;
comment on table CONTEXT_VAR_SCH is 'Связь переменных контекста с задачей'
;

/*
 rollback
    drop table CONTEXT_VAR_SCH
 */

--rollback drop table CONTEXT_VAR_SCH;
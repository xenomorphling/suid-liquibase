--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

--ALTER TABLE GPN_OIM.Z_PROCESS_STEP_HIST
--DROP PRIMARY KEY CASCADE;

--DROP TABLE GPN_OIM.Z_PROCESS_STEP_HIST CASCADE CONSTRAINTS;

CREATE TABLE GPN_OIM.Z_PROCESS_STEP_HIST
(
  STEP_ID                          NUMBER            NOT NULL,
  IDM_PROCESS_ID  NUMBER,
  OPERATION CHAR(1),
  STEP_TYPE  VARCHAR2(100),
  MODIFIED_DATE                    DATE,
  APPROVED_BY                      NUMBER,
  STEP_STATE VARCHAR2(50),
  STEP_OUTCOME VARCHAR2(50),
  ORDER_NUM NUMBER
)
TABLESPACE GPN_OIM
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING
NOCOMPRESS
NOCACHE
MONITORING;


CREATE OR REPLACE TRIGGER GPN_OIM.Z_PROCESS_STEP_TRG
before insert or update or delete on GPN_OIM.Z_PROCESS_STEP
REFERENCING NEW AS newRow OLD as oldRow
for each row
declare
  action_type varchar2(1);
begin
  if (INSERTING) then
    action_type := 'i';
  elsif (UPDATING) then
    action_type := 'u';
  elsif (DELETING) then
    action_type := 'd';
  end if;
  if (inserting or updating) then
    insert into GPN_OIM.Z_PROCESS_STEP_HIST (
           STEP_ID  ,
           IDM_PROCESS_ID ,
           OPERATION ,
           STEP_TYPE  ,
           MODIFIED_DATE,
           APPROVED_BY,
           STEP_STATE,
           STEP_OUTCOME,
           ORDER_NUM
    )
    values (
      :newRow.STEP_ID,
      :newRow.IDM_PROCESS_ID,
      action_type,
      :newRow.STEP_TYPE,
      sysdate,
      :newRow.APPROVED_BY,
      :newRow.STEP_STATE,
      :newRow.STEP_OUTCOME,
      :newRow.ORDER_NUM
   );
  elsif (deleting) then
    insert into Z_PROCESS_STEP_HIST (
           STEP_ID  ,
           IDM_PROCESS_ID,
           OPERATION,
           STEP_TYPE,
           MODIFIED_DATE,
           APPROVED_BY,
           STEP_STATE,
           STEP_OUTCOME,
           ORDER_NUM
    )
    values (
      :oldRow.STEP_ID,
      :oldRow.IDM_PROCESS_ID,
      action_type,
      :oldRow.STEP_TYPE,
      sysdate,
      :oldRow.APPROVED_BY,
      :oldRow.STEP_STATE,
      :oldRow.STEP_OUTCOME,
      :oldRow.ORDER_NUM
    );
  end if;
END ITSK_APPROVAL_ROUTES_TRG;

--rollback DROP TABLE GPN_OIM.Z_PROCESS_STEP_HIST;
--rollback DROP TRIGGER GPN_OIM.Z_PROCESS_STEP_TRG;
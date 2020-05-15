--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

--
-- A hint submitted by a user: Oracle DB MUST be created as "shared" and the
-- job_queue_processes parameter  must be greater than 2
-- However, these settings are pretty much standard after any
-- Oracle install, so most users need not worry about this.
--
-- Many other users (including the primary author of Quartz) have had success
-- running in dedicated mode, so only consider the above as a hint ;-)

-- delete from qrtz_fired_triggers;
-- delete from qrtz_simple_triggers;
-- delete from qrtz_simprop_triggers;
-- delete from qrtz_cron_triggers;
-- delete from qrtz_blob_triggers;
-- delete from qrtz_suid5_triggers;
-- delete from qrtz_suid5_job_details;
-- delete from qrtz_suid5_calendars;
-- delete from qrtz_suid5_paused_trigger_grps;
-- delete from qrtz_suid5_locks;
-- delete from qrtz_suid5_scheduler_state;
--
-- drop table qrtz_suid5_calendars;
-- drop table qrtz_suid5_fired_triggers;
-- drop table qrtz_suid5_blob_triggers;
-- drop table qrtz_suid5_cron_triggers;
-- drop table qrtz_suid5_simple_triggers;
-- drop table qrtz_suid5_simprop_triggers;
-- drop table qrtz_suid5_triggers;
-- drop table qrtz_suid5_job_details;
-- drop table qrtz_suid5_paused_trigger_grps;
-- drop table qrtz_suid5_locks;
-- drop table qrtz_suid5_scheduler_state;


CREATE TABLE GPN_OIM.qrtz_suid5_job_history
  (
    TRIGGER_NAME VARCHAR2(120) NOT NULL,
    TASK_CLASS_NAME VARCHAR2(120),
    TRIGGER_START_TIME NUMBER NOT NULL,
    TRIGGER_END_TIME NUMBER NOT NULL,
    DESCRIPTION VARCHAR2(20) NOT NULL
);
CREATE TABLE GPN_OIM.qrtz_suid5_job_details
  (
    SCHED_NAME VARCHAR2(120) NOT NULL,
    JOB_NAME  VARCHAR2(200) NOT NULL,
    JOB_GROUP VARCHAR2(200) NOT NULL,
    DESCRIPTION VARCHAR2(250) NULL,
    JOB_CLASS_NAME   VARCHAR2(250) NOT NULL,
    IS_DURABLE VARCHAR2(1) NOT NULL,
    IS_NONCONCURRENT VARCHAR2(1) NOT NULL,
    IS_UPDATE_DATA VARCHAR2(1) NOT NULL,
    REQUESTS_RECOVERY VARCHAR2(1) NOT NULL,
    JOB_DATA BLOB NULL,
    CONSTRAINT QRTZ_JOB_DETAILS_PK PRIMARY KEY (SCHED_NAME,JOB_NAME,JOB_GROUP)
);
CREATE TABLE GPN_OIM.qrtz_suid5_triggers
  (
    SCHED_NAME VARCHAR2(120) NOT NULL,
    TRIGGER_NAME VARCHAR2(200) NOT NULL,
    TRIGGER_GROUP VARCHAR2(200) NOT NULL,
    JOB_NAME  VARCHAR2(200) NOT NULL,
    JOB_GROUP VARCHAR2(200) NOT NULL,
    DESCRIPTION VARCHAR2(250) NULL,
    NEXT_FIRE_TIME NUMBER(19) NULL,
    PREV_FIRE_TIME NUMBER(19) NULL,
    PRIORITY NUMBER(13) NULL,
    TRIGGER_STATE VARCHAR2(16) NOT NULL,
    TRIGGER_TYPE VARCHAR2(8) NOT NULL,
    START_TIME NUMBER(19) NOT NULL,
    END_TIME NUMBER(19) NULL,
    CALENDAR_NAME VARCHAR2(200) NULL,
    MISFIRE_INSTR NUMBER(2) NULL,
    JOB_DATA BLOB NULL,
    CONSTRAINT QRTZ_TRIGGERS_PK PRIMARY KEY (SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP),
    CONSTRAINT QRTZ_TRIGGER_TO_JOBS_FK FOREIGN KEY (SCHED_NAME,JOB_NAME,JOB_GROUP)
      REFERENCES GPN_OIM.qrtz_suid5_JOB_DETAILS(SCHED_NAME,JOB_NAME,JOB_GROUP)
);
CREATE TABLE GPN_OIM.qrtz_suid5_simple_triggers
  (
    SCHED_NAME VARCHAR2(120) NOT NULL,
    TRIGGER_NAME VARCHAR2(200) NOT NULL,
    TRIGGER_GROUP VARCHAR2(200) NOT NULL,
    REPEAT_COUNT NUMBER(7) NOT NULL,
    REPEAT_INTERVAL NUMBER(12) NOT NULL,
    TIMES_TRIGGERED NUMBER(10) NOT NULL,
    CONSTRAINT QRTZ_SIMPLE_TRIG_PK PRIMARY KEY (SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP),
    CONSTRAINT QRTZ_SIMPLE_TRIG_TO_TRIG_FK FOREIGN KEY (SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP)
	REFERENCES GPN_OIM.qrtz_suid5_TRIGGERS(SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP)
);
CREATE TABLE GPN_OIM.qrtz_suid5_cron_triggers
  (
    SCHED_NAME VARCHAR2(120) NOT NULL,
    TRIGGER_NAME VARCHAR2(200) NOT NULL,
    TRIGGER_GROUP VARCHAR2(200) NOT NULL,
    CRON_EXPRESSION VARCHAR2(120) NOT NULL,
    TIME_ZONE_ID VARCHAR2(80),
    CONSTRAINT QRTZ_CRON_TRIG_PK PRIMARY KEY (SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP),
    CONSTRAINT QRTZ_CRON_TRIG_TO_TRIG_FK FOREIGN KEY (SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP)
      REFERENCES GPN_OIM.qrtz_suid5_TRIGGERS(SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP)
);
CREATE TABLE GPN_OIM.qrtz_suid5_simprop_triggers
  (
    SCHED_NAME VARCHAR2(120) NOT NULL,
    TRIGGER_NAME VARCHAR2(200) NOT NULL,
    TRIGGER_GROUP VARCHAR2(200) NOT NULL,
    STR_PROP_1 VARCHAR2(512) NULL,
    STR_PROP_2 VARCHAR2(512) NULL,
    STR_PROP_3 VARCHAR2(512) NULL,
    INT_PROP_1 NUMBER(10) NULL,
    INT_PROP_2 NUMBER(10) NULL,
    LONG_PROP_1 NUMBER(19) NULL,
    LONG_PROP_2 NUMBER(19) NULL,
    DEC_PROP_1 NUMERIC(13,4) NULL,
    DEC_PROP_2 NUMERIC(13,4) NULL,
    BOOL_PROP_1 VARCHAR2(1) NULL,
    BOOL_PROP_2 VARCHAR2(1) NULL,
    TIME_ZONE_ID VARCHAR2(80) NULL,
    CONSTRAINT QRTZ_SIMPROP_TRIG_PK PRIMARY KEY (SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP),
    CONSTRAINT QRTZ_SIMPROP_TRIG_TO_TRIG_FK FOREIGN KEY (SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP)
      REFERENCES GPN_OIM.qrtz_suid5_TRIGGERS(SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP)
);
CREATE TABLE GPN_OIM.qrtz_suid5_blob_triggers
  (
    SCHED_NAME VARCHAR2(120) NOT NULL,
    TRIGGER_NAME VARCHAR2(200) NOT NULL,
    TRIGGER_GROUP VARCHAR2(200) NOT NULL,
    BLOB_DATA BLOB NULL,
    CONSTRAINT QRTZ_BLOB_TRIG_PK PRIMARY KEY (SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP),
    CONSTRAINT QRTZ_BLOB_TRIG_TO_TRIG_FK FOREIGN KEY (SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP)
        REFERENCES GPN_OIM.qrtz_suid5_TRIGGERS(SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP)
);
CREATE TABLE GPN_OIM.qrtz_suid5_calendars
  (
    SCHED_NAME VARCHAR2(120) NOT NULL,
    CALENDAR_NAME  VARCHAR2(200) NOT NULL,
    CALENDAR BLOB NOT NULL,
    CONSTRAINT QRTZ_CALENDARS_PK PRIMARY KEY (SCHED_NAME,CALENDAR_NAME)
);
CREATE TABLE GPN_OIM.qrtz_suid5_paused_trigger_grps
  (
    SCHED_NAME VARCHAR2(120) NOT NULL,
    TRIGGER_GROUP  VARCHAR2(200) NOT NULL,
    CONSTRAINT QRTZ_PAUSED_TRIG_GRPS_PK PRIMARY KEY (SCHED_NAME,TRIGGER_GROUP)
);
CREATE TABLE GPN_OIM.qrtz_suid5_fired_triggers
  (
    SCHED_NAME VARCHAR2(120) NOT NULL,
    ENTRY_ID VARCHAR2(140) NOT NULL,
    TRIGGER_NAME VARCHAR2(200) NOT NULL,
    TRIGGER_GROUP VARCHAR2(200) NOT NULL,
    INSTANCE_NAME VARCHAR2(200) NOT NULL,
    FIRED_TIME NUMBER(19) NOT NULL,
    SCHED_TIME NUMBER(19) NOT NULL,
	PRIORITY NUMBER(13) NOT NULL,
    STATE VARCHAR2(16) NOT NULL,
    JOB_NAME VARCHAR2(200) NULL,
    JOB_GROUP VARCHAR2(200) NULL,
    IS_NONCONCURRENT VARCHAR2(1) NULL,
    REQUESTS_RECOVERY VARCHAR2(1) NULL,
    CONSTRAINT QRTZ_FIRED_TRIGGER_PK PRIMARY KEY (SCHED_NAME,ENTRY_ID)
);
CREATE TABLE GPN_OIM.qrtz_suid5_scheduler_state
  (
    SCHED_NAME VARCHAR2(120) NOT NULL,
    INSTANCE_NAME VARCHAR2(200) NOT NULL,
    LAST_CHECKIN_TIME NUMBER(19) NOT NULL,
    CHECKIN_INTERVAL NUMBER(13) NOT NULL,
    CONSTRAINT QRTZ_SCHEDULER_STATE_PK PRIMARY KEY (SCHED_NAME,INSTANCE_NAME)
);
CREATE TABLE GPN_OIM.qrtz_suid5_locks
  (
    SCHED_NAME VARCHAR2(120) NOT NULL,
    LOCK_NAME  VARCHAR2(40) NOT NULL,
    CONSTRAINT QRTZ_LOCKS_PK PRIMARY KEY (SCHED_NAME,LOCK_NAME)
);

create index idx_qrtz_j_req_recovery on GPN_OIM.qrtz_suid5_job_details(SCHED_NAME,REQUESTS_RECOVERY);
create index idx_qrtz_j_grp on GPN_OIM.qrtz_suid5_job_details(SCHED_NAME,JOB_GROUP);

create index idx_qrtz_t_j on GPN_OIM.qrtz_suid5_triggers(SCHED_NAME,JOB_NAME,JOB_GROUP);
create index idx_qrtz_t_jg on GPN_OIM.qrtz_suid5_triggers(SCHED_NAME,JOB_GROUP);
create index idx_qrtz_t_c on GPN_OIM.qrtz_suid5_triggers(SCHED_NAME,CALENDAR_NAME);
create index idx_qrtz_t_g on GPN_OIM.qrtz_suid5_triggers(SCHED_NAME,TRIGGER_GROUP);
create index idx_qrtz_t_state on GPN_OIM.qrtz_suid5_triggers(SCHED_NAME,TRIGGER_STATE);
create index idx_qrtz_t_n_state on GPN_OIM.qrtz_suid5_triggers(SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP,TRIGGER_STATE);
create index idx_qrtz_t_n_g_state on GPN_OIM.qrtz_suid5_triggers(SCHED_NAME,TRIGGER_GROUP,TRIGGER_STATE);
create index idx_qrtz_t_next_fire_time on GPN_OIM.qrtz_suid5_triggers(SCHED_NAME,NEXT_FIRE_TIME);
create index idx_qrtz_t_nft_st on GPN_OIM.qrtz_suid5_triggers(SCHED_NAME,TRIGGER_STATE,NEXT_FIRE_TIME);
create index idx_qrtz_t_nft_misfire on GPN_OIM.qrtz_suid5_triggers(SCHED_NAME,MISFIRE_INSTR,NEXT_FIRE_TIME);
create index idx_qrtz_t_nft_st_misfire on GPN_OIM.qrtz_suid5_triggers(SCHED_NAME,MISFIRE_INSTR,NEXT_FIRE_TIME,TRIGGER_STATE);
create index idx_qrtz_t_nft_st_misfire_grp on GPN_OIM.qrtz_suid5_triggers(SCHED_NAME,MISFIRE_INSTR,NEXT_FIRE_TIME,TRIGGER_GROUP,TRIGGER_STATE);

create index idx_qrtz_ft_trig_inst_name on GPN_OIM.qrtz_suid5_fired_triggers(SCHED_NAME,INSTANCE_NAME);
create index idx_qrtz_ft_inst_job_req_rcvry on GPN_OIM.qrtz_suid5_fired_triggers(SCHED_NAME,INSTANCE_NAME,REQUESTS_RECOVERY);
create index idx_qrtz_ft_j_g on GPN_OIM.qrtz_suid5_fired_triggers(SCHED_NAME,JOB_NAME,JOB_GROUP);
create index idx_qrtz_ft_jg on GPN_OIM.qrtz_suid5_fired_triggers(SCHED_NAME,JOB_GROUP);
create index idx_qrtz_ft_t_g on GPN_OIM.qrtz_suid5_fired_triggers(SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP);
create index idx_qrtz_ft_tg on GPN_OIM.qrtz_suid5_fired_triggers(SCHED_NAME,TRIGGER_GROUP);

INSERT INTO GPN_OIM.QRTZ_SUID5_JOB_DETAILS (SCHED_NAME, JOB_NAME, JOB_GROUP, DESCRIPTION, JOB_CLASS_NAME, IS_DURABLE, IS_NONCONCURRENT, IS_UPDATE_DATA, REQUESTS_RECOVERY, JOB_DATA) VALUES ('springBootQuartzApp', 'HandleVacations', 'SampleGroup', null, 'HandleVacations', '0', '0', '0', '0', '230D0A23467269204F63742031382031323A32383A3431204D534B20323031390D0A6D794B65793D6D7956616C75650D0A');
INSERT INTO GPN_OIM.QRTZ_SUID5_JOB_DETAILS (SCHED_NAME, JOB_NAME, JOB_GROUP, DESCRIPTION, JOB_CLASS_NAME, IS_DURABLE, IS_NONCONCURRENT, IS_UPDATE_DATA, REQUESTS_RECOVERY, JOB_DATA) VALUES ('springBootQuartzApp', 'ProvisionChangesToTargetSystems', 'SampleGroup', null, 'ProvisionChangesToTargetSystems', '0', '0', '0', '0', '230D0A23467269204F63742031382031313A30313A3539204D534B20323031390D0A6D794B65793D6D7956616C75650D0A');
INSERT INTO GPN_OIM.QRTZ_SUID5_JOB_DETAILS (SCHED_NAME, JOB_NAME, JOB_GROUP, DESCRIPTION, JOB_CLASS_NAME, IS_DURABLE, IS_NONCONCURRENT, IS_UPDATE_DATA, REQUESTS_RECOVERY, JOB_DATA) VALUES ('springBootQuartzApp', 'HandleRequests', 'SampleGroup', null, 'HandleRequests', '0', '0', '0', '0', '230D0A23467269204F63742031382031313A30393A3439204D534B20323031390D0A6D794B65793D6D7956616C75650D0A');

INSERT INTO GPN_OIM.QRTZ_SUID5_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, JOB_NAME, JOB_GROUP, DESCRIPTION, NEXT_FIRE_TIME, PREV_FIRE_TIME, PRIORITY, TRIGGER_STATE, TRIGGER_TYPE, START_TIME, END_TIME, CALENDAR_NAME, MISFIRE_INSTR, JOB_DATA) VALUES ('springBootQuartzApp', 'HandleVacations', 'DEFAULT', 'HandleVacations', 'SampleGroup', null, 1571391000000, 1571390940000, 0, 'ERROR', 'CRON', 1571390880000, 0, null, 1, null);
INSERT INTO GPN_OIM.QRTZ_SUID5_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, JOB_NAME, JOB_GROUP, DESCRIPTION, NEXT_FIRE_TIME, PREV_FIRE_TIME, PRIORITY, TRIGGER_STATE, TRIGGER_TYPE, START_TIME, END_TIME, CALENDAR_NAME, MISFIRE_INSTR, JOB_DATA) VALUES ('springBootQuartzApp', 'ProvisionChangesToTargetSystems', 'DEFAULT', 'ProvisionChangesToTargetSystems', 'SampleGroup', null, 1571385780000, 1571385728553, 0, 'ERROR', 'CRON', 1571385660000, 0, null, 1, null);
INSERT INTO GPN_OIM.QRTZ_SUID5_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, JOB_NAME, JOB_GROUP, DESCRIPTION, NEXT_FIRE_TIME, PREV_FIRE_TIME, PRIORITY, TRIGGER_STATE, TRIGGER_TYPE, START_TIME, END_TIME, CALENDAR_NAME, MISFIRE_INSTR, JOB_DATA) VALUES ('springBootQuartzApp', 'HandleRequests', 'DEFAULT', 'HandleRequests', 'SampleGroup', null, 1571391000000, 1571390940000, 0, 'ERROR', 'CRON', 1571386140000, 0, null, 1, null);

INSERT INTO GPN_OIM.QRTZ_SUID5_CRON_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, CRON_EXPRESSION, TIME_ZONE_ID) VALUES ('springBootQuartzApp', 'HandleVacations', 'DEFAULT', '0 0/1 * 1/1 * ? *', 'Europe/Moscow');
INSERT INTO GPN_OIM.QRTZ_SUID5_CRON_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, CRON_EXPRESSION, TIME_ZONE_ID) VALUES ('springBootQuartzApp', 'ProvisionChangesToTargetSystems', 'DEFAULT', '0 0/1 * 1/1 * ? *', 'Europe/Moscow');
INSERT INTO GPN_OIM.QRTZ_SUID5_CRON_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, CRON_EXPRESSION, TIME_ZONE_ID) VALUES ('springBootQuartzApp', 'HandleRequests', 'DEFAULT', '0 0/1 * 1/1 * ? *', 'Europe/Moscow');

COMMIT;


--rollback TABLE GPN_OIM.qrtz_suid5_job_history;
--rollback TABLE GPN_OIM.qrtz_suid5_job_details;
--rollback TABLE GPN_OIM.qrtz_suid5_triggers;
--rollback TABLE GPN_OIM.qrtz_suid5_simple_triggers;
--rollback TABLE GPN_OIM.qrtz_suid5_cron_triggers;
--rollback TABLE GPN_OIM.qrtz_suid5_simprop_triggers;
--rollback TABLE GPN_OIM.qrtz_suid5_blob_triggers;
--rollback TABLE GPN_OIM.qrtz_suid5_calendars;
--rollback TABLE GPN_OIM.qrtz_suid5_paused_trigger_grps;
--rollback TABLE GPN_OIM.qrtz_suid5_fired_triggers;
--rollback TABLE GPN_OIM.qrtz_suid5_scheduler_state;
--rollback TABLE GPN_OIM.qrtz_suid5_locks;

--rollback drop index idx_qrtz_j_req_recovery on GPN_OIM.qrtz_suid5_job_details(SCHED_NAME,REQUESTS_RECOVERY);
--rollback drop index idx_qrtz_j_grp on GPN_OIM.qrtz_suid5_job_details(SCHED_NAME,JOB_GROUP);
--rollback drop index idx_qrtz_t_j on GPN_OIM.qrtz_suid5_triggers(SCHED_NAME,JOB_NAME,JOB_GROUP);
--rollback drop index idx_qrtz_t_jg on GPN_OIM.qrtz_suid5_triggers(SCHED_NAME,JOB_GROUP);
--rollback drop index idx_qrtz_t_c on GPN_OIM.qrtz_suid5_triggers(SCHED_NAME,CALENDAR_NAME);
--rollback drop index idx_qrtz_t_g on GPN_OIM.qrtz_suid5_triggers(SCHED_NAME,TRIGGER_GROUP);
--rollback drop index idx_qrtz_t_state on GPN_OIM.qrtz_suid5_triggers(SCHED_NAME,TRIGGER_STATE);
--rollback drop index idx_qrtz_t_n_state on GPN_OIM.qrtz_suid5_triggers(SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP,TRIGGER_STATE);
--rollback drop index idx_qrtz_t_n_g_state on GPN_OIM.qrtz_suid5_triggers(SCHED_NAME,TRIGGER_GROUP,TRIGGER_STATE);
--rollback drop index idx_qrtz_t_next_fire_time on GPN_OIM.qrtz_suid5_triggers(SCHED_NAME,NEXT_FIRE_TIME);
--rollback drop index idx_qrtz_t_nft_st on GPN_OIM.qrtz_suid5_triggers(SCHED_NAME,TRIGGER_STATE,NEXT_FIRE_TIME);
--rollback drop index idx_qrtz_t_nft_misfire on GPN_OIM.qrtz_suid5_triggers(SCHED_NAME,MISFIRE_INSTR,NEXT_FIRE_TIME);
--rollback drop index idx_qrtz_t_nft_st_misfire on GPN_OIM.qrtz_suid5_triggers(SCHED_NAME,MISFIRE_INSTR,NEXT_FIRE_TIME,TRIGGER_STATE);
--rollback drop index idx_qrtz_t_nft_st_misfire_grp on GPN_OIM.qrtz_suid5_triggers(SCHED_NAME,MISFIRE_INSTR,NEXT_FIRE_TIME,TRIGGER_GROUP,TRIGGER_STATE);
--rollback drop index idx_qrtz_ft_trig_inst_name on GPN_OIM.qrtz_suid5_fired_triggers(SCHED_NAME,INSTANCE_NAME);
--rollback drop index idx_qrtz_ft_inst_job_req_rcvry on GPN_OIM.qrtz_suid5_fired_triggers(SCHED_NAME,INSTANCE_NAME,REQUESTS_RECOVERY);
--rollback drop index idx_qrtz_ft_j_g on GPN_OIM.qrtz_suid5_fired_triggers(SCHED_NAME,JOB_NAME,JOB_GROUP);
--rollback drop index idx_qrtz_ft_jg on GPN_OIM.qrtz_suid5_fired_triggers(SCHED_NAME,JOB_GROUP);
--rollback drop index idx_qrtz_ft_t_g on GPN_OIM.qrtz_suid5_fired_triggers(SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP);
--rollback drop index idx_qrtz_ft_tg on GPN_OIM.qrtz_suid5_fired_triggers(SCHED_NAME,TRIGGER_GROUP);
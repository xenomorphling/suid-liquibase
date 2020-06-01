--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

CREATE TABLE gpn_oim.z_user_settings
(
  usr_key       NUMBER(19)		NOT NULL,
  name          VARCHAR2(255)	NOT NULL,
  value         VARCHAR2(4000),
  create_date   TIMESTAMP(6),
  update_date   TIMESTAMP(6)
)
TABLESPACE gpn_oim
PCTFREE    10
INITRANS   2    
MAXTRANS   255
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;

COMMENT ON TABLE gpn_oim.z_user_settings IS 'Настройки пользователя';

CREATE INDEX gpn_oim.z_user_settings$usr_key ON gpn_oim.z_user_settings
(usr_key)
LOGGING
TABLESPACE gpn_oim
PCTFREE    10
INITRANS   10
MAXTRANS   255;

CREATE UNIQUE INDEX gpn_oim.z_user_settings$usr_key_name ON gpn_oim.z_user_settings
(usr_key, name)
LOGGING
TABLESPACE gpn_oim
PCTFREE    10
INITRANS   10
MAXTRANS   255;

ALTER TABLE gpn_oim.z_user_settings ADD (
  CONSTRAINT fk_z_user_settings_usr_key 
  FOREIGN KEY (usr_key) 
  REFERENCES gpn_oim.usr (usr_key)
  ENABLE VALIDATE);

GRANT INSERT, SELECT, UPDATE ON gpn_oim.z_user_settings TO developer;
GRANT INSERT, SELECT, UPDATE ON gpn_oim.z_user_settings TO support;

--rollback drop table gpn_oim.z_user_settings;
--rollback drop index gpn_oim.z_user_settings;
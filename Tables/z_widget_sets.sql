--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

CREATE TABLE gpn_oim.z_widget_sets
(
  id                NUMBER		    NOT NULL,
  widget_set_code   VARCHAR2(255)	NOT NULL,
  widget_set_name   VARCHAR2(255),
  widget_set_desc   VARCHAR2(4000),
  create_date       TIMESTAMP(6),
  update_date       TIMESTAMP(6)
)
TABLESPACE gpn_oim
PCTFREE    10
INITRANS   2    
MAXTRANS   255
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;

COMMENT ON TABLE gpn_oim.z_widget_sets IS 'Справочник наборов виджетов';


CREATE UNIQUE INDEX gpn_oim.z_widget_sets$widget_set_code ON gpn_oim.z_widget_sets
(widget_set_code)
LOGGING
TABLESPACE gpn_oim
PCTFREE    10
INITRANS   2
MAXTRANS   255;

CREATE UNIQUE INDEX gpn_oim.pk_z_widget_sets ON gpn_oim.z_widget_sets
(id)
LOGGING
TABLESPACE gpn_oim
PCTFREE    10
INITRANS   2
MAXTRANS   255;

ALTER TABLE gpn_oim.z_widget_sets ADD (
  CONSTRAINT pk_z_widget_sets
  PRIMARY KEY (id)
  USING INDEX gpn_oim.pk_z_widget_sets
  ENABLE VALIDATE);

GRANT INSERT, SELECT, UPDATE ON gpn_oim.z_widget_sets TO developer;
GRANT INSERT, SELECT, UPDATE ON gpn_oim.z_widget_sets TO support;

--rollback DROP TABLE gpn_oim.z_widget_sets;
--rollback DROP INDEX gpn_oim.z_widget_sets$widget_set_code ON gpn_oim.z_widget_sets;
--rollback DROP INDEX gpn_oim.pk_z_widget_sets ON gpn_oim.z_widget_sets;
--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

CREATE TABLE gpn_oim.z_widgets
(
  id            NUMBER		    NOT NULL,
  widget_code   VARCHAR2(255)	NOT NULL,
  widget_name   VARCHAR2(255),
  widget_desc   VARCHAR2(4000),
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

COMMENT ON TABLE gpn_oim.z_widgets IS 'Справочник виджетов';


CREATE UNIQUE INDEX gpn_oim.z_widgets$widget_code ON gpn_oim.z_widgets
(widget_code)
LOGGING
TABLESPACE gpn_oim
PCTFREE    10
INITRANS   2
MAXTRANS   255;

CREATE UNIQUE INDEX gpn_oim.pk_z_widgets ON gpn_oim.z_widgets
(id)
LOGGING
TABLESPACE gpn_oim
PCTFREE    10
INITRANS   2
MAXTRANS   255;

ALTER TABLE gpn_oim.z_widgets ADD (
  CONSTRAINT pk_z_widgets
  PRIMARY KEY (id)
  USING INDEX gpn_oim.pk_z_widgets
  ENABLE VALIDATE);

GRANT INSERT, SELECT, UPDATE ON gpn_oim.z_widgets TO developer;
GRANT INSERT, SELECT, UPDATE ON gpn_oim.z_widgets TO support;

--rollback DROP TABLE gpn_oim.z_widgets;
--rollback DROP INDEX gpn_oim.z_widgets$widget_code;
--rollback DROP INDEX gpn_oim.pk_z_widgets;
--rollback DROP ALTER TABLE gpn_oim.z_widgets drop pk_z_widgets;
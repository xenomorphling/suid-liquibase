--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

--DROP TABLE gpn_oim.z_widget_sets_widgets;

CREATE TABLE gpn_oim.z_widget_sets_widgets
(
  widget_set_code       VARCHAR2(255)		    NOT NULL,
  widget_code           VARCHAR2(255)		    NOT NULL,
  function_code_list    VARCHAR2(4000),
  create_date           TIMESTAMP(6),
  update_date           TIMESTAMP(6)
)
TABLESPACE gpn_oim
PCTFREE    10
INITRANS   2    
MAXTRANS   255
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;

COMMENT ON TABLE gpn_oim.z_widget_sets_widgets IS '���������� ��������, �������� � ������ ��������';


CREATE UNIQUE INDEX gpn_oim.pk_z_widget_sets_widgets ON gpn_oim.z_widget_sets_widgets
(widget_set_code, widget_code)
LOGGING
TABLESPACE gpn_oim
PCTFREE    10
INITRANS   2
MAXTRANS   255;

/*ALTER TABLE gpn_oim.z_widget_sets_widgets ADD (
  CONSTRAINT fk_z_widg_sets_widgs_widg_sets
  FOREIGN KEY (widget_set_code) 
  REFERENCES gpn_oim.z_widget_sets (widget_set_code)
  ENABLE VALIDATE);

ALTER TABLE gpn_oim.z_widget_sets_widgets ADD (
  CONSTRAINT fk_z_widg_sets_widgs_widgs
  FOREIGN KEY (widget_code) 
  REFERENCES gpn_oim.z_widgets (widget_code)
  ENABLE VALIDATE); */
  
ALTER TABLE gpn_oim.z_widget_sets_widgets ADD (
  CONSTRAINT pk_z_widget_sets_widgets
  PRIMARY KEY (widget_set_code, widget_code)
  USING INDEX gpn_oim.pk_z_widget_sets_widgets
  ENABLE VALIDATE);

GRANT INSERT, SELECT, UPDATE ON gpn_oim.z_widget_sets_widgets TO DEVELOPER;
GRANT INSERT, SELECT, UPDATE ON gpn_oim.z_widget_sets_widgets TO SUPPORT;

--rollback DROP TABLE gpn_oim.z_widget_sets_widgetsж
--rollback DROP INDEX gpn_oim.pk_z_widget_sets_widgets ON gpn_oim.z_widget_sets_widgetsж
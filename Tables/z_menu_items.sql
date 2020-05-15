--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

CREATE TABLE gpn_oim.z_menu_items
(
  id                NUMBER	    NOT NULL,
  widget_id         NUMBER,
  menu_item_name    VARCHAR2(255),
  menu_item_desc    VARCHAR2(4000),
  parent_id         NUMBER,
  level_value       NUMBER,
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

COMMENT ON TABLE gpn_oim.z_menu_items IS '���������� ������� ����';


CREATE INDEX gpn_oim.z_menu_items$widget_id ON gpn_oim.z_menu_items
(widget_id)
LOGGING
TABLESPACE gpn_oim
PCTFREE    10
INITRANS   2
MAXTRANS   255;

CREATE UNIQUE INDEX gpn_oim.pk_z_menu_items ON gpn_oim.z_menu_items
(id)
LOGGING
TABLESPACE gpn_oim
PCTFREE    10
INITRANS   2
MAXTRANS   255;

ALTER TABLE gpn_oim.z_menu_items ADD (
  CONSTRAINT pk_z_menu_items
  PRIMARY KEY (id)
  USING INDEX gpn_oim.pk_z_menu_items
  ENABLE VALIDATE);

ALTER TABLE gpn_oim.z_menu_items ADD (
  CONSTRAINT fk_z_menu_items_parent_id
  FOREIGN KEY (parent_id) 
  REFERENCES gpn_oim.z_menu_items (id)
  ENABLE VALIDATE);

ALTER TABLE gpn_oim.z_menu_items ADD (
  CONSTRAINT fk_z_menu_items_widget_id
  FOREIGN KEY (widget_id) 
  REFERENCES gpn_oim.z_widgets (id)
  ENABLE VALIDATE);
  

GRANT INSERT, SELECT, UPDATE ON gpn_oim.z_menu_items TO developer;
GRANT INSERT, SELECT, UPDATE ON gpn_oim.z_menu_items TO support;

--rollback DROP TABLE gpn_oim.z_menu_items;
--rollback DROP INDEX gpn_oim.z_menu_items$widget_id ON gpn_oim.z_menu_items;
--rollback DROP INDEX gpn_oim.pk_z_menu_items ON gpn_oim.z_menu_items;
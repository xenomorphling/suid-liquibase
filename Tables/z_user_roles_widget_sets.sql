--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

CREATE TABLE gpn_oim.z_user_roles_widget_sets
(
  ugp_key       NUMBER		NOT NULL,
  widget_set_id NUMBER  	NOT NULL,
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

COMMENT ON TABLE gpn_oim.z_user_roles_widget_sets IS '������� ������������ ����� ������������� OIM, � ������� �������� (���� � ������)';

CREATE UNIQUE INDEX gpn_oim.z_usr_rls_wdg_sts$ugp_key ON gpn_oim.z_user_roles_widget_sets
(ugp_key)
LOGGING
TABLESPACE gpn_oim
PCTFREE    10
INITRANS   2
MAXTRANS   255;

CREATE UNIQUE INDEX gpn_oim.pk_z_usr_rls_wdg_sts ON gpn_oim.z_user_roles_widget_sets
(ugp_key, widget_set_id)
LOGGING
TABLESPACE gpn_oim
PCTFREE    10
INITRANS   2
MAXTRANS   255;

ALTER TABLE gpn_oim.z_user_roles_widget_sets ADD (
  CONSTRAINT fk_z_usr_rls_wdg_sts_ugp_k
  FOREIGN KEY (ugp_key) 
  REFERENCES gpn_oim.ugp (ugp_key)
  ENABLE VALIDATE);

ALTER TABLE gpn_oim.z_user_roles_widget_sets ADD (
  CONSTRAINT fk_z_usr_rls_wdg_sts_wdg_st_id
  FOREIGN KEY (widget_set_id) 
  REFERENCES gpn_oim.z_widget_sets (id)
  ENABLE VALIDATE);
  
ALTER TABLE gpn_oim.z_user_roles_widget_sets ADD (
  CONSTRAINT pk_z_usr_rls_wdg_sts
  PRIMARY KEY (ugp_key, widget_set_id)
  USING INDEX gpn_oim.pk_z_usr_rls_wdg_sts
  ENABLE VALIDATE);
  
GRANT INSERT, SELECT, UPDATE ON gpn_oim.z_user_roles_widget_sets TO developer;
GRANT INSERT, SELECT, UPDATE ON gpn_oim.z_user_roles_widget_sets TO support;

--rollback DROP TABLE gpn_oim.z_user_roles_widget_sets;
--rollback DROP INDEX gpn_oim.z_usr_rls_wdg_sts$ugp_key ON gpn_oim.z_user_roles_widget_sets;
--rollback DROP INDEX gpn_oim.pk_z_usr_rls_wdg_sts ON gpn_oim.z_user_roles_widget_sets;
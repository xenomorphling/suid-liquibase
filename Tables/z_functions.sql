--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

CREATE TABLE gpn_oim.z_functions
(
  id                NUMBER		    NOT NULL,
  function_code     VARCHAR2(255)	NOT NULL,
  function_name     VARCHAR2(255),
  function_desc     VARCHAR2(4000),
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

COMMENT ON TABLE gpn_oim.z_functions IS '���������� �������';


CREATE UNIQUE INDEX gpn_oim.z_functions$function_code ON gpn_oim.z_functions
(function_code)
LOGGING
TABLESPACE gpn_oim
PCTFREE    10
INITRANS   2
MAXTRANS   255;

CREATE UNIQUE INDEX gpn_oim.pk_z_functions ON gpn_oim.z_functions
(id)
LOGGING
TABLESPACE gpn_oim
PCTFREE    10
INITRANS   2
MAXTRANS   255;

ALTER TABLE gpn_oim.z_functions ADD (
  CONSTRAINT pk_z_functions
  PRIMARY KEY (id)
  USING INDEX gpn_oim.pk_z_functions
  ENABLE VALIDATE);

GRANT INSERT, SELECT, UPDATE ON gpn_oim.z_functions TO developer;
GRANT INSERT, SELECT, UPDATE ON gpn_oim.z_functions TO support;

--rollback DROP TABLE gpn_oim.z_functions;
--rollback DROP INDEX gpn_oim.z_functions$function_code ON gpn_oim.z_functions;
--rollback DROP INDEX gpn_oim.pk_z_functions ON gpn_oim.z_functions;
--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

INSERT INTO gpn_oim.z_user_roles_widget_sets (ugp_key, widget_set_id, create_date, update_date) 
VALUES (1, 5, SYSDATE, NULL);

INSERT INTO gpn_oim.z_user_roles_widget_sets (ugp_key, widget_set_id, create_date, update_date) 
VALUES (3, 2, SYSDATE, NULL);

COMMIT;

--rollback truncate table gpn_oim.z_user_roles_widget_sets;
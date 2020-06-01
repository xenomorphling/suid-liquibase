--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

INSERT INTO gpn_oim.z_widget_sets
 (id, widget_set_code, widget_set_name, widget_set_desc, create_date, update_date) 
SELECT 1, 'BASE_SET', 'Набор виджетов "Базовый"', NULL, SYSDATE, NULL FROM dual 
UNION ALL
SELECT 2, 'USER_SET', 'Набор виджетов "Пользователь"', NULL, SYSDATE, NULL FROM dual 
UNION ALL
SELECT 3, 'SUPPORT_SET', 'Набор виджетов "Сотрудник службы поддержки"', NULL, SYSDATE, NULL FROM dual 
UNION ALL
SELECT 4, 'MANAGER_SET', 'Набор виджетов "Менеджер"', NULL, SYSDATE, NULL FROM dual 
UNION ALL
SELECT 5, 'ADMIN_SET', 'Набор виджетов "Администратор"', NULL, SYSDATE, NULL FROM dual; 
 
COMMIT;

--rollback truncate table gpn_oim.z_widget_sets;
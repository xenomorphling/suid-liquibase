--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

INSERT INTO gpn_oim.z_functions
 (id, function_code, function_name, function_desc, create_date, update_date) 
SELECT 1, 'RETRY_REQUEST', 'Повторить запрос', NULL, SYSDATE, NULL FROM dual 
UNION ALL
SELECT 2, 'APPROVE_REQUEST', 'Согласовать запрос', NULL, SYSDATE, NULL FROM dual 
UNION ALL
SELECT 3, 'REJECT_REQUEST', 'Отклонить запрос', NULL, SYSDATE, NULL FROM dual 
UNION ALL
SELECT 4, 'FORWARD_REQUEST', 'Перенаправить запрос', NULL, SYSDATE, NULL FROM dual
UNION ALL
SELECT 5, 'USER_SETTINGS', 'Пользовательские настройки', NULL, SYSDATE, NULL FROM dual 
UNION ALL
SELECT 6, 'ADMIN_SETTINGS', 'Административные настройки', NULL, SYSDATE, NULL FROM dual;  
 
COMMIT;



--rollback DELETE FROM gpn_oim.z_functions WHERE (id, function_code, function_name, function_desc, create_date, update_date) IN (SELECT 'RETRY_REQUEST', 'Повторить запрос', NULL, SYSDATE, NULL FROM dual) or (SELECT 'APPROVE_REQUEST', 'Согласовать запрос', NULL, SYSDATE, NULL FROM dual) or (SELECT 'REJECT_REQUEST', 'Отклонить запрос', NULL, SYSDATE, NULL FROM dual) or (SELECT 'FORWARD_REQUEST', 'Перенаправить запрос', NULL, SYSDATE, NULL FROM dual) or (SELECT 'USER_SETTINGS', 'Пользовательские настройки', NULL, SYSDATE, NULL FROM dual) or (SELECT 'ADMIN_SETTINGS', 'Административные настройки', NULL, SYSDATE, NULL FROM dual);
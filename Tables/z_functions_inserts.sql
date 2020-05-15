--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

INSERT INTO gpn_oim.z_functions
 (id, function_code, function_name, function_desc, create_date, update_date) 
SELECT 1, 'RETRY_REQUEST', '��������� ������', NULL, SYSDATE, NULL FROM dual 
UNION ALL
SELECT 2, 'APPROVE_REQUEST', '����������� ������', NULL, SYSDATE, NULL FROM dual 
UNION ALL
SELECT 3, 'REJECT_REQUEST', '��������� ������', NULL, SYSDATE, NULL FROM dual 
UNION ALL
SELECT 4, 'FORWARD_REQUEST', '������������� ������', NULL, SYSDATE, NULL FROM dual
UNION ALL
SELECT 5, 'USER_SETTINGS', '���������������� ���������', NULL, SYSDATE, NULL FROM dual 
UNION ALL
SELECT 6, 'ADMIN_SETTINGS', '���������������� ���������', NULL, SYSDATE, NULL FROM dual;  
 
COMMIT;

--rollback DROP PROCEDURE get_folder_tree_limit;
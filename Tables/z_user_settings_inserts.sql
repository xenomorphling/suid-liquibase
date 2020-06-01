--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

INSERT INTO gpn_oim.z_user_settings (usr_key, name, value, create_date) 
SELECT 16651, 'widgets', 'access_request, change_access_dates, sent_requests, requests_history', SYSDATE FROM dual
UNION ALL
SELECT 1576, 'widgets', 'access_request, change_access_dates, set_replacement, sent_requests', SYSDATE FROM dual
UNION ALL
SELECT 16651, 'play_sounds', 'false', SYSDATE FROM dual;

COMMIT;

--rollback truncate table gpn_oim.z_user_settings;
--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

UPDATE z_logical_systems
SET is_resource_creation_supported = 1
WHERE system_name IN
('Почта: дополнительный почтовый ящик', 'Почта: общие календари', 
 'Почта: общие ящики', 'Почта: списки рассылки', 'Файловые ресурсы');

COMMIT;

--rollback ;
--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

INSERT INTO GPN_OIM.Z_MENU_ITEMS (ID, WIDGET_ID, MENU_ITEM_NAME, MENU_ITEM_DESC, PARENT_ID, LEVEL_VALUE, CREATE_DATE, UPDATE_DATE) VALUES (1, 24, 'Заявки', null, null, 1, TO_TIMESTAMP('2019-01-29 14:28:29.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), null);
INSERT INTO GPN_OIM.Z_MENU_ITEMS (ID, WIDGET_ID, MENU_ITEM_NAME, MENU_ITEM_DESC, PARENT_ID, LEVEL_VALUE, CREATE_DATE, UPDATE_DATE) VALUES (2, 20, 'Каталоги', null, null, 1, TO_TIMESTAMP('2019-01-29 14:28:29.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), null);
INSERT INTO GPN_OIM.Z_MENU_ITEMS (ID, WIDGET_ID, MENU_ITEM_NAME, MENU_ITEM_DESC, PARENT_ID, LEVEL_VALUE, CREATE_DATE, UPDATE_DATE) VALUES (3, 14, 'Пользователи', null, 2, 2, TO_TIMESTAMP('2019-01-29 14:28:29.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), null);
INSERT INTO GPN_OIM.Z_MENU_ITEMS (ID, WIDGET_ID, MENU_ITEM_NAME, MENU_ITEM_DESC, PARENT_ID, LEVEL_VALUE, CREATE_DATE, UPDATE_DATE) VALUES (4, 15, 'Информационные ресурсы', null, 2, 2, TO_TIMESTAMP('2019-01-29 14:28:29.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), null);
INSERT INTO GPN_OIM.Z_MENU_ITEMS (ID, WIDGET_ID, MENU_ITEM_NAME, MENU_ITEM_DESC, PARENT_ID, LEVEL_VALUE, CREATE_DATE, UPDATE_DATE) VALUES (5, 16, 'Подрядные организации', null, 2, 2, TO_TIMESTAMP('2019-01-29 14:28:29.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), null);
INSERT INTO GPN_OIM.Z_MENU_ITEMS (ID, WIDGET_ID, MENU_ITEM_NAME, MENU_ITEM_DESC, PARENT_ID, LEVEL_VALUE, CREATE_DATE, UPDATE_DATE) VALUES (6, 17, 'Справка', null, null, 1, TO_TIMESTAMP('2019-01-29 14:28:29.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), null);
INSERT INTO GPN_OIM.Z_MENU_ITEMS (ID, WIDGET_ID, MENU_ITEM_NAME, MENU_ITEM_DESC, PARENT_ID, LEVEL_VALUE, CREATE_DATE, UPDATE_DATE) VALUES (7, 18, 'Найти заявку', null, null, 1, TO_TIMESTAMP('2019-01-29 14:28:29.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), null);
INSERT INTO GPN_OIM.Z_MENU_ITEMS (ID, WIDGET_ID, MENU_ITEM_NAME, MENU_ITEM_DESC, PARENT_ID, LEVEL_VALUE, CREATE_DATE, UPDATE_DATE) VALUES (8, 21, 'Настройки', null, null, 1, TO_TIMESTAMP('2019-01-29 14:28:29.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), null);
INSERT INTO GPN_OIM.Z_MENU_ITEMS (ID, WIDGET_ID, MENU_ITEM_NAME, MENU_ITEM_DESC, PARENT_ID, LEVEL_VALUE, CREATE_DATE, UPDATE_DATE) VALUES (9, 7, 'История заявок', null, 1, 2, TO_TIMESTAMP('2019-01-30 00:00:00.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), null);
INSERT INTO GPN_OIM.Z_MENU_ITEMS (ID, WIDGET_ID, MENU_ITEM_NAME, MENU_ITEM_DESC, PARENT_ID, LEVEL_VALUE, CREATE_DATE, UPDATE_DATE) VALUES (10, 5, 'Согласование', null, 1, 2, TO_TIMESTAMP('2019-01-30 00:00:00.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), null);
INSERT INTO GPN_OIM.Z_MENU_ITEMS (ID, WIDGET_ID, MENU_ITEM_NAME, MENU_ITEM_DESC, PARENT_ID, LEVEL_VALUE, CREATE_DATE, UPDATE_DATE) VALUES (11, 19, 'Создание заявки', null, 1, 2, TO_TIMESTAMP('2019-01-30 00:00:00.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), null);
INSERT INTO GPN_OIM.Z_MENU_ITEMS (ID, WIDGET_ID, MENU_ITEM_NAME, MENU_ITEM_DESC, PARENT_ID, LEVEL_VALUE, CREATE_DATE, UPDATE_DATE) VALUES (12, 37, 'Орг.структура', null, 2, 2, TO_TIMESTAMP('2019-01-30 18:53:15.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), null);
INSERT INTO GPN_OIM.Z_MENU_ITEMS (ID, WIDGET_ID, MENU_ITEM_NAME, MENU_ITEM_DESC, PARENT_ID, LEVEL_VALUE, CREATE_DATE, UPDATE_DATE) VALUES (13, 25, 'Информационные системы', null, 2, 2, TO_TIMESTAMP('2019-01-30 18:53:15.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), null);
INSERT INTO GPN_OIM.Z_MENU_ITEMS (ID, WIDGET_ID, MENU_ITEM_NAME, MENU_ITEM_DESC, PARENT_ID, LEVEL_VALUE, CREATE_DATE, UPDATE_DATE) VALUES (14, 46, 'Компании', null, 2, 2, TO_TIMESTAMP('2019-01-30 18:53:15.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), null);
INSERT INTO GPN_OIM.Z_MENU_ITEMS (ID, WIDGET_ID, MENU_ITEM_NAME, MENU_ITEM_DESC, PARENT_ID, LEVEL_VALUE, CREATE_DATE, UPDATE_DATE) VALUES (15, 27, 'Роли', null, 2, 2, TO_TIMESTAMP('2019-01-30 18:53:15.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), null);
INSERT INTO GPN_OIM.Z_MENU_ITEMS (ID, WIDGET_ID, MENU_ITEM_NAME, MENU_ITEM_DESC, PARENT_ID, LEVEL_VALUE, CREATE_DATE, UPDATE_DATE) VALUES (16, 28, 'Администрирование', null, null, 1, TO_TIMESTAMP('2019-01-30 19:04:04.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), null);
INSERT INTO GPN_OIM.Z_MENU_ITEMS (ID, WIDGET_ID, MENU_ITEM_NAME, MENU_ITEM_DESC, PARENT_ID, LEVEL_VALUE, CREATE_DATE, UPDATE_DATE) VALUES (17, 29, 'Аудит', null, 16, 2, TO_TIMESTAMP('2019-01-30 19:04:04.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), null);
INSERT INTO GPN_OIM.Z_MENU_ITEMS (ID, WIDGET_ID, MENU_ITEM_NAME, MENU_ITEM_DESC, PARENT_ID, LEVEL_VALUE, CREATE_DATE, UPDATE_DATE) VALUES (18, 30, 'Изменить доступы и УЗ', null, 16, 2, TO_TIMESTAMP('2019-01-30 19:04:04.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), null);
INSERT INTO GPN_OIM.Z_MENU_ITEMS (ID, WIDGET_ID, MENU_ITEM_NAME, MENU_ITEM_DESC, PARENT_ID, LEVEL_VALUE, CREATE_DATE, UPDATE_DATE) VALUES (19, 31, 'Диагностика', null, 16, 2, TO_TIMESTAMP('2019-01-30 19:04:04.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), null);
INSERT INTO GPN_OIM.Z_MENU_ITEMS (ID, WIDGET_ID, MENU_ITEM_NAME, MENU_ITEM_DESC, PARENT_ID, LEVEL_VALUE, CREATE_DATE, UPDATE_DATE) VALUES (20, 32, 'Отчеты', null, 16, 2, TO_TIMESTAMP('2019-01-30 19:04:04.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), null);
INSERT INTO GPN_OIM.Z_MENU_ITEMS (ID, WIDGET_ID, MENU_ITEM_NAME, MENU_ITEM_DESC, PARENT_ID, LEVEL_VALUE, CREATE_DATE, UPDATE_DATE) VALUES (21, 33, 'Административные задачи', null, 16, 2, TO_TIMESTAMP('2019-01-30 19:04:04.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), null);
INSERT INTO GPN_OIM.Z_MENU_ITEMS (ID, WIDGET_ID, MENU_ITEM_NAME, MENU_ITEM_DESC, PARENT_ID, LEVEL_VALUE, CREATE_DATE, UPDATE_DATE) VALUES (22, 34, 'События сверки', null, 16, 2, TO_TIMESTAMP('2019-01-30 19:04:04.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), null);
INSERT INTO GPN_OIM.Z_MENU_ITEMS (ID, WIDGET_ID, MENU_ITEM_NAME, MENU_ITEM_DESC, PARENT_ID, LEVEL_VALUE, CREATE_DATE, UPDATE_DATE) VALUES (23, 35, 'Загрузка', null, 16, 2, TO_TIMESTAMP('2019-01-30 19:04:04.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), null);
INSERT INTO GPN_OIM.Z_MENU_ITEMS (ID, WIDGET_ID, MENU_ITEM_NAME, MENU_ITEM_DESC, PARENT_ID, LEVEL_VALUE, CREATE_DATE, UPDATE_DATE) VALUES (24, 36, 'Связывание сервисных УЗ SAP', null, 23, 3, TO_TIMESTAMP('2019-01-30 19:04:04.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), null);
INSERT INTO GPN_OIM.Z_MENU_ITEMS (ID, WIDGET_ID, MENU_ITEM_NAME, MENU_ITEM_DESC, PARENT_ID, LEVEL_VALUE, CREATE_DATE, UPDATE_DATE) VALUES (26, 38, 'Связывание тендерных УЗ SAP', null, 23, 3, TO_TIMESTAMP('2019-01-30 19:04:04.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), null);

commit;

--rollback truncate table GPN_OIM.Z_MENU_ITEMS;
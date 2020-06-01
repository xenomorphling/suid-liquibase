--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

delete from GPN_OIM.Z_WIDGET_SETS
where ID in (6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36);

insert into GPN_OIM.Z_WIDGET_SETS (ID, WIDGET_SET_CODE, WIDGET_SET_NAME, WIDGET_SET_DESC, CREATE_DATE, UPDATE_DATE)
values (6, 'ADMIN_INFO_SECURITY_SET', 'Набор виджетов "Администратор ИБ"', Null, to_date('14-11-2019 13:56:00', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGET_SETS (ID, WIDGET_SET_CODE, WIDGET_SET_NAME, WIDGET_SET_DESC, CREATE_DATE, UPDATE_DATE)
values (7, 'ADMIN_IS_SET', 'Набор виджетов "Администратор ИС"', Null, to_date('14-11-2019 14:33:19', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGET_SETS (ID, WIDGET_SET_CODE, WIDGET_SET_NAME, WIDGET_SET_DESC, CREATE_DATE, UPDATE_DATE)
values (8, 'EMPLOYEE_IT_SET', 'Набор виджетов "Работник ИТ"', Null, to_date('14-11-2019 14:33:19', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGET_SETS (ID, WIDGET_SET_CODE, WIDGET_SET_NAME, WIDGET_SET_DESC, CREATE_DATE, UPDATE_DATE)
values (9, 'REFERENT_SET', 'Набор виджетов "Референт"', Null, to_date('14-11-2019 14:33:19', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGET_SETS (ID, WIDGET_SET_CODE, WIDGET_SET_NAME, WIDGET_SET_DESC, CREATE_DATE, UPDATE_DATE)
values (10, 'ADMIN_IR_CATALOG_SET', 'Набор виджетов "Администратор каталога ИР"', Null, to_date('14-11-2019 14:33:19', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGET_SETS (ID, WIDGET_SET_CODE, WIDGET_SET_NAME, WIDGET_SET_DESC, CREATE_DATE, UPDATE_DATE)
values (11, 'ADMIN_SECURITY_SAP_SET', 'Набор виджетов "Администратор ИБ SAP"', Null, to_date('14-11-2019 14:33:19', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGET_SETS (ID, WIDGET_SET_CODE, WIDGET_SET_NAME, WIDGET_SET_DESC, CREATE_DATE, UPDATE_DATE)
values (12, 'REQUEST_CREATOR_SET', 'Набор виджетов "Создание заявок на доступ"', Null, to_date('14-11-2019 14:33:20', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGET_SETS (ID, WIDGET_SET_CODE, WIDGET_SET_NAME, WIDGET_SET_DESC, CREATE_DATE, UPDATE_DATE)
values (13, 'REQUEST_SPEC_ACCNT_SET', 'Набор виджетов "Запрос доступа к специальным УЗ"', Null, to_date('14-11-2019 14:33:20', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGET_SETS (ID, WIDGET_SET_CODE, WIDGET_SET_NAME, WIDGET_SET_DESC, CREATE_DATE, UPDATE_DATE)
values (14, 'CHANGE_USER_DATA_SET', 'Набор виджетов "Редактирование контактных данных пользователей"', Null, to_date('14-11-2019 14:33:20', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGET_SETS (ID, WIDGET_SET_CODE, WIDGET_SET_NAME, WIDGET_SET_DESC, CREATE_DATE, UPDATE_DATE)
values (15, 'MASS_SAP_MANAG_SET', 'Набор виджетов "Массовое управление учетными записями SAP"', Null, to_date('14-11-2019 14:33:20', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGET_SETS (ID, WIDGET_SET_CODE, WIDGET_SET_NAME, WIDGET_SET_DESC, CREATE_DATE, UPDATE_DATE)
values (16, 'ADMIN_KT_040_SET', 'Набор виджетов "Администратор КТ-040"', Null, to_date('14-11-2019 14:33:20', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGET_SETS (ID, WIDGET_SET_CODE, WIDGET_SET_NAME, WIDGET_SET_DESC, CREATE_DATE, UPDATE_DATE)
values (17, 'OPER_IR_CATALOG_SET', 'Набор виджетов "Оператор каталога ИР"', Null, to_date('14-11-2019 14:33:20', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGET_SETS (ID, WIDGET_SET_CODE, WIDGET_SET_NAME, WIDGET_SET_DESC, CREATE_DATE, UPDATE_DATE)
values (18, 'OPER_FF_SET', 'Набор виджетов "Контроллеры FireFighter"', Null, to_date('14-11-2019 14:33:20', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGET_SETS (ID, WIDGET_SET_CODE, WIDGET_SET_NAME, WIDGET_SET_DESC, CREATE_DATE, UPDATE_DATE)
values (19, 'OWNER_FF_SET', 'Набор виджетов "Владельцы FireFighter"', Null, to_date('14-11-2019 14:33:20', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGET_SETS (ID, WIDGET_SET_CODE, WIDGET_SET_NAME, WIDGET_SET_DESC, CREATE_DATE, UPDATE_DATE)
values (20, 'ADMIN_IR_SAP_CATALOG_SET', 'Набор виджетов "Администратор каталога ИР SAP"', Null, to_date('14-11-2019 14:33:20', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGET_SETS (ID, WIDGET_SET_CODE, WIDGET_SET_NAME, WIDGET_SET_DESC, CREATE_DATE, UPDATE_DATE)
values (21, 'OWNER_FF_SAP_SET', 'Набор виджетов "Владельцы FFP УЗ SAP"', Null, to_date('14-11-2019 14:33:21', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGET_SETS (ID, WIDGET_SET_CODE, WIDGET_SET_NAME, WIDGET_SET_DESC, CREATE_DATE, UPDATE_DATE)
values (22, 'VIEW_REQUESTS_SET', 'Набор виджетов "Просмотр заявок СУИД"', Null, to_date('14-11-2019 14:33:21', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGET_SETS (ID, WIDGET_SET_CODE, WIDGET_SET_NAME, WIDGET_SET_DESC, CREATE_DATE, UPDATE_DATE)
values (23, 'ADMIN_1C_SET', 'Набор виджетов "Администратор ИБ 1С"', Null, to_date('14-11-2019 14:33:21', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGET_SETS (ID, WIDGET_SET_CODE, WIDGET_SET_NAME, WIDGET_SET_DESC, CREATE_DATE, UPDATE_DATE)
values (24, 'SPEC_ACCNT_SET', 'Набор виджетов "Работа со специальным УЗ"', Null, to_date('14-11-2019 14:33:21', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGET_SETS (ID, WIDGET_SET_CODE, WIDGET_SET_NAME, WIDGET_SET_DESC, CREATE_DATE, UPDATE_DATE)
values (25, 'OTV_TENDER_ACCNT_SET', 'Набор виджетов "Ответственный за работу с тендерными УЗ"', Null, to_date('14-11-2019 14:33:21', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGET_SETS (ID, WIDGET_SET_CODE, WIDGET_SET_NAME, WIDGET_SET_DESC, CREATE_DATE, UPDATE_DATE)
values (26, 'SUID_OWNER_SET', 'Набор виджетов "Владелец СУИД"', Null, to_date('14-11-2019 14:33:21', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGET_SETS (ID, WIDGET_SET_CODE, WIDGET_SET_NAME, WIDGET_SET_DESC, CREATE_DATE, UPDATE_DATE)
values (27, 'ADMIN_CONF_DOCUMENTS_SET', 'Набор виджетов "Ведение договоров конфиденциальности"', Null, to_date('14-11-2019 14:33:21', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGET_SETS (ID, WIDGET_SET_CODE, WIDGET_SET_NAME, WIDGET_SET_DESC, CREATE_DATE, UPDATE_DATE)
values (28, 'EMPLOYEE_EKDS_SET', 'Набор виджетов "Сотрудник ЕКДС"', Null, to_date('14-11-2019 14:33:21', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGET_SETS (ID, WIDGET_SET_CODE, WIDGET_SET_NAME, WIDGET_SET_DESC, CREATE_DATE, UPDATE_DATE)
values (29, 'ADMIN_SECURE_MOBILE_SET', 'Набор виджетов "Администратор ЗМ"', Null, to_date('14-11-2019 14:33:22', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGET_SETS (ID, WIDGET_SET_CODE, WIDGET_SET_NAME, WIDGET_SET_DESC, CREATE_DATE, UPDATE_DATE)
values (30, 'ADMIN_COZAK_SET', 'Набор виджетов "Администратор системы компетентный закупщик"', Null, to_date('14-11-2019 14:33:22', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGET_SETS (ID, WIDGET_SET_CODE, WIDGET_SET_NAME, WIDGET_SET_DESC, CREATE_DATE, UPDATE_DATE)
values (31, 'ZAM_OTV_ZA_KDP_SP_SET', 'Набор виджетов "Зам. ответственного за конфиденциальное делопроизводство самостоятельного подразделения"', Null, to_date('14-11-2019 14:33:22', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGET_SETS (ID, WIDGET_SET_CODE, WIDGET_SET_NAME, WIDGET_SET_DESC, CREATE_DATE, UPDATE_DATE)
values (32, 'OTV_ZA_KDP_SP_SET', 'Набор виджетов "Ответственный за конфиденциальное делопроизводство самостоятельного подразделения"', Null, to_date('14-11-2019 14:33:22', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGET_SETS (ID, WIDGET_SET_CODE, WIDGET_SET_NAME, WIDGET_SET_DESC, CREATE_DATE, UPDATE_DATE)
values (33, 'RSP_SET', 'Набор виджетов "Руководитель самостоятельного подразделения"', Null, to_date('14-11-2019 14:33:22', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGET_SETS (ID, WIDGET_SET_CODE, WIDGET_SET_NAME, WIDGET_SET_DESC, CREATE_DATE, UPDATE_DATE)
values (34, 'OTV_ZA_KDP_SET', 'Набор виджетов "Ответственный за КДП"', Null, to_date('14-11-2019 14:33:22', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGET_SETS (ID, WIDGET_SET_CODE, WIDGET_SET_NAME, WIDGET_SET_DESC, CREATE_DATE, UPDATE_DATE)
values (35, 'ZAM_OTV_ZA_KDP_SET', 'Набор виджетов "Зам ответственного за КДП"', Null, to_date('14-11-2019 14:33:22', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGET_SETS (ID, WIDGET_SET_CODE, WIDGET_SET_NAME, WIDGET_SET_DESC, CREATE_DATE, UPDATE_DATE)
values (36, 'PASSWORD_SENDER_SET', 'Набор виджетов "Рассылка начальных паролей"', Null, to_date('14-11-2019 14:33:22', 'dd-mm-yyyy hh24:mi:ss'), Null);

Commit;


--rollback delete from GPN_OIM.Z_WIDGET_SETS where ID in (6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36);
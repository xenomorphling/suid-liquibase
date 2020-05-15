--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

insert into GPN_OIM.POINTS (ID, POINT_NAME, POINT_TITLE)
values (gpn_oim.points_seq.nextval, 'ExternalUser_EmployeeTypesChoice', 'Выбор типа сотрудника при создании внешнего пользователя');

insert into GPN_OIM.POINTS (ID, POINT_NAME, POINT_TITLE)
values (gpn_oim.points_seq.nextval, 'COMPANIES_CATALOG', 'Каталог компаний');

insert into GPN_OIM.POINTS (ID, POINT_NAME, POINT_TITLE)
values (gpn_oim.points_seq.nextval, 'SYSTEMS_CATALOG', 'Каталог ИС');

insert into GPN_OIM.POINTS (ID, POINT_NAME, POINT_TITLE)
values (gpn_oim.points_seq.nextval, 'SYSTEMS_ResourceCreation', 'Карточка ресурса, список систем');

insert into GPN_OIM.POINTS (ID, POINT_NAME, POINT_TITLE)
values (gpn_oim.points_seq.nextval, 'SYSTEMS_ResourceCreation_WithApproval', 'Карточка ресурса, в заявке на создание ресурса');

insert into GPN_OIM.POINTS (ID, POINT_NAME, POINT_TITLE)
values (gpn_oim.points_seq.nextval, 'USER_RequestForward', 'Переназначение заявки');

insert into GPN_OIM.POINTS (ID, POINT_NAME, POINT_TITLE)
values (gpn_oim.points_seq.nextval, 'USER_DeleteAccessGrant', 'Список пользователей Отзыв доступа');

insert into GPN_OIM.POINTS (ID, POINT_NAME, POINT_TITLE)
values (gpn_oim.points_seq.nextval, 'USER_ConfItemAccessRequest', 'Список пользователей Запрос доступа к конф. данным');

insert into GPN_OIM.POINTS (ID, POINT_NAME, POINT_TITLE)
values (gpn_oim.points_seq.nextval, 'USER_AccessRequest', 'Список пользователей Запрос доступа');

insert into GPN_OIM.POINTS (ID, POINT_NAME, POINT_TITLE)
values (gpn_oim.points_seq.nextval, 'USER_Account_Controller', 'Профиль пользователя');

insert into GPN_OIM.POINTS (ID, POINT_NAME, POINT_TITLE)
values (gpn_oim.points_seq.nextval, 'USER_Account_Owner_FF', 'FF');

insert into GPN_OIM.POINTS (ID, POINT_NAME, POINT_TITLE)
values (gpn_oim.points_seq.nextval, 'USER_Account_Owner_FFP', 'FFP');

insert into GPN_OIM.POINTS (ID, POINT_NAME, POINT_TITLE)
values (gpn_oim.points_seq.nextval, 'RESOURCE_ACCESSREQUEST', 'Запрос доступа выбор доступов');

--------------------------------------------------------------------------------

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 2, 1, ' (LKV_ENCODED in (''Contractor'', ''Consultant'', ''Intern'', ''CWK''))', sysdate, 'Все типы внешних сотрудников');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 2, 266, ' (LKV_ENCODED in (''Contractor'', ''Consultant'', ''Intern'', ''CWK''))', sysdate, 'Все типы внешних сотрудников');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 2, 6, ' (LKV_ENCODED in (''Contractor'', ''Consultant'', ''Intern'')))', sysdate, 'Типы внешних сотрудников которые должны видеть все ');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 2, 7, ' (LKV_ENCODED in (''Contractor'', ''Consultant'', ''Intern'')))', sysdate, 'Типы внешних сотрудников которые должны видеть все ');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 2, 8, ' (LKV_ENCODED in (''Contractor'', ''Consultant'', ''Intern'')))', sysdate, 'Типы внешних сотрудников которые должны видеть все ');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 2, 9, ' (LKV_ENCODED in (''Contractor'', ''Consultant'', ''Intern'')))', sysdate, 'Типы внешних сотрудников которые должны видеть все ');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 2, 10, ' (LKV_ENCODED in (''Contractor'', ''Consultant'', ''Intern'')))', sysdate, 'Типы внешних сотрудников которые должны видеть все ');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 2, 12, ' (LKV_ENCODED in (''Contractor'', ''Consultant'', ''Intern'')))', sysdate, 'Типы внешних сотрудников которые должны видеть все ');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 2, 104, ' (LKV_ENCODED in (''Contractor'', ''Consultant'', ''Intern'')))', sysdate, 'Типы внешних сотрудников которые должны видеть все ');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 2, 106, ' (LKV_ENCODED in (''Contractor'', ''Consultant'', ''Intern'')))', sysdate, 'Типы внешних сотрудников которые должны видеть все ');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 2, 103, ' (LKV_ENCODED in (''Contractor'', ''Consultant'', ''Intern'')))', sysdate, 'Типы внешних сотрудников которые должны видеть все ');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 2, 13, ' (LKV_ENCODED in (''Contractor'', ''Consultant'', ''Intern'')))', sysdate, 'Типы внешних сотрудников которые должны видеть все ');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 2, 21, ' (LKV_ENCODED in (''Contractor'', ''Consultant'', ''Intern'')))', sysdate, 'Типы внешних сотрудников которые должны видеть все ');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 2, 126, ' (LKV_ENCODED in (''Contractor'', ''Consultant'', ''Intern'')))', sysdate, 'Типы внешних сотрудников которые должны видеть все ');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 2, 167, ' (LKV_ENCODED in (''Contractor'', ''Consultant'', ''Intern'')))', sysdate, 'Типы внешних сотрудников которые должны видеть все ');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 2, 186, ' (LKV_ENCODED in (''Contractor'', ''Consultant'', ''Intern'')))', sysdate, 'Типы внешних сотрудников которые должны видеть все ');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 2, 206, ' (LKV_ENCODED in (''Contractor'', ''Consultant'', ''Intern'')))', sysdate, 'Типы внешних сотрудников которые должны видеть все ');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 2, 226, ' (LKV_ENCODED in (''Contractor'', ''Consultant'', ''Intern'')))', sysdate, 'Типы внешних сотрудников которые должны видеть все ');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 2, 328, ' (LKV_ENCODED in (''Contractor'', ''Consultant'', ''Intern'')))', sysdate, 'Типы внешних сотрудников которые должны видеть все ');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 2, 329, ' (LKV_ENCODED in (''Contractor'', ''Consultant'', ''Intern'')))', sysdate, 'Типы внешних сотрудников которые должны видеть все ');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 2, 11, ' (LKV_ENCODED in (''Contractor'', ''Consultant'', ''Intern'')))', sysdate, 'Типы внешних сотрудников которые должны видеть все ');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 2, 166, ' (LKV_ENCODED in (''Contractor'', ''Consultant'', ''Intern'')))', sysdate, 'Типы внешних сотрудников которые должны видеть все ');

--------------------------------------------------------------

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 1, 1, '  1 = 1', sysdate, 'Видимость каталог компании - все компании');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 1, 266, '  1 = 1', sysdate, 'Видимость каталог компании - все компании');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 1, 6, ' (is_deleted=0)', sysdate, 'Видимость каталог компании - не удаленные компании');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 1, 7, ' (is_deleted=0)', sysdate, 'Видимость каталог компании - не удаленные компании');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 1, 8, ' (is_deleted=0)', sysdate, 'Видимость каталог компании - не удаленные компании');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 1, 9, ' (is_deleted=0)', sysdate, 'Видимость каталог компании - не удаленные компании');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 1, 10, ' (is_deleted=0)', sysdate, 'Видимость каталог компании - не удаленные компании');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 1, 12, ' (is_deleted=0)', sysdate, 'Видимость каталог компании - не удаленные компании');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 1, 104, ' (is_deleted=0)', sysdate, 'Видимость каталог компании - не удаленные компании');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 1, 106, ' (is_deleted=0)', sysdate, 'Видимость каталог компании - не удаленные компании');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 1, 103, ' (is_deleted=0)', sysdate, 'Видимость каталог компании - не удаленные компании');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 1, 13, ' (is_deleted=0)', sysdate, 'Видимость каталог компании - не удаленные компании');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 1, 21, ' (is_deleted=0)', sysdate, 'Видимость каталог компании - не удаленные компании');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 1, 126, ' (is_deleted=0)', sysdate, 'Видимость каталог компании - не удаленные компании');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 1, 167, ' (is_deleted=0)', sysdate, 'Видимость каталог компании - не удаленные компании');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 1, 186, ' (is_deleted=0)', sysdate, 'Видимость каталог компании - не удаленные компании');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 1, 206, ' (is_deleted=0)', sysdate, 'Видимость каталог компании - не удаленные компании');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 1, 226, ' (is_deleted=0)', sysdate, 'Видимость каталог компании - не удаленные компании');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 1, 328, ' (is_deleted=0)', sysdate, 'Видимость каталог компании - не удаленные компании');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 1, 329, ' (is_deleted=0)', sysdate, 'Видимость каталог компании - не удаленные компании');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 1, 11, ' (is_deleted=0)', sysdate, 'Видимость каталог компании - не удаленные компании');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 1, 166, ' (is_deleted=0)', sysdate, 'Видимость каталог компании - не удаленные компании');

---------------------------------------------------

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 3, 1, '  1 = 1', sysdate, 'Видимость каталог систем - все системы');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 3, 266, '  1 = 1', sysdate, 'Видимость каталог систем - все системы');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 3, 6, ' 1 = 1', sysdate, 'Видимость каталог систем - все системы');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 3, 7, ' 1 = 1', sysdate, 'Видимость каталог систем - все системы');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 3, 8, ' 1 = 1', sysdate, 'Видимость каталог систем - все системы');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 3, 9, ' 1 = 1', sysdate, 'Видимость каталог систем - все системы');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 3, 10, ' 1 = 1', sysdate, 'Видимость каталог систем - все системы');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 3, 12, ' 1 = 1', sysdate, 'Видимость каталог систем - все системы');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 3, 104, ' 1 = 1', sysdate, 'Видимость каталог систем - все системы');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 3, 106, ' 1 = 1', sysdate, 'Видимость каталог систем - все системы');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 3, 103, ' 1 = 1', sysdate, 'Видимость каталог систем - все системы');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 3, 13, ' 1 = 1', sysdate, 'Видимость каталог систем - все системы');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 3, 21, ' 1 = 1', sysdate, 'Видимость каталог систем - все системы');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 3, 126, ' 1 = 1', sysdate, 'Видимость каталог систем - все системы');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 3, 167, ' 1 = 1', sysdate, 'Видимость каталог систем - все системы');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 3, 186, ' 1 = 1', sysdate, 'Видимость каталог систем - все системы');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 3, 206, ' 1 = 1', sysdate, 'Видимость каталог систем - все системы');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 3, 226, ' 1 = 1', sysdate, 'Видимость каталог систем - все системы');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 3, 328, ' 1 = 1', sysdate, 'Видимость каталог систем - все системы');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 3, 329, ' 1 = 1', sysdate, 'Видимость каталог систем - все системы');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 3, 11, ' 1 = 1', sysdate, 'Видимость каталог систем - все системы');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 3, 166, ' 1 = 1', sysdate, 'Видимость каталог систем - все системы');

----------------------------------------

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 4, 1, ' ((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)', sysdate, 'Выпадающий список систем - Все кроме SAP систем и не удаленные и не скрытые');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 4, 266, ' ((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)', sysdate, 'Выпадающий список систем - Все кроме SAP систем и не удаленные и не скрытые');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 4, 6, ' ((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)', sysdate, 'Выпадающий список систем - Все кроме SAP систем и не удаленные и не скрытые');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 4, 7, ' ((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)', sysdate, 'Выпадающий список систем - Все кроме SAP систем и не удаленные и не скрытые');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 4, 8, ' ((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)', sysdate, 'Выпадающий список систем - Все кроме SAP систем и не удаленные и не скрытые');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 4, 9, ' ((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)', sysdate, 'Выпадающий список систем - Все кроме SAP систем и не удаленные и не скрытые');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 4, 10, ' ((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)', sysdate, 'Выпадающий список систем - Все кроме SAP систем и не удаленные и не скрытые');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 4, 12, ' ((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)', sysdate, 'Выпадающий список систем - Все кроме SAP систем и не удаленные и не скрытые');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 4, 104, ' ((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)', sysdate, 'Выпадающий список систем - Все кроме SAP систем и не удаленные и не скрытые');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 4, 106, ' ((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)', sysdate, 'Выпадающий список систем - Все кроме SAP систем и не удаленные и не скрытые');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 4, 103, ' ((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)', sysdate, 'Выпадающий список систем - Все кроме SAP систем и не удаленные и не скрытые');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 4, 13, ' ((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)', sysdate, 'Выпадающий список систем - Все кроме SAP систем и не удаленные и не скрытые');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 4, 21, ' ((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)', sysdate, 'Выпадающий список систем - Все кроме SAP систем и не удаленные и не скрытые');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 4, 126, ' ((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)', sysdate, 'Выпадающий список систем - Все кроме SAP систем и не удаленные и не скрытые');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 4, 167, ' ((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)', sysdate, 'Выпадающий список систем - Все кроме SAP систем и не удаленные и не скрытые');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 4, 186, ' ((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)', sysdate, 'Выпадающий список систем - Все кроме SAP систем и не удаленные и не скрытые');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 4, 206, ' ((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)', sysdate, 'Выпадающий список систем - Все кроме SAP систем и не удаленные и не скрытые');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 4, 226, ' ((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)', sysdate, 'Выпадающий список систем - Все кроме SAP систем и не удаленные и не скрытые');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 4, 328, ' ((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)', sysdate, 'Выпадающий список систем - Все кроме SAP систем и не удаленные и не скрытые');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 4, 329, ' ((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)', sysdate, 'Выпадающий список систем - Все кроме SAP систем и не удаленные и не скрытые');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 4, 11, ' ((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)', sysdate, 'Выпадающий список систем - Все кроме SAP систем и не удаленные и не скрытые');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 4 , 166, ' ((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)', sysdate, 'Выпадающий список систем - Все кроме SAP систем и не удаленные и не скрытые');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 4 , 3, ' ((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)', sysdate, 'Выпадающий список систем - Все кроме SAP систем и не удаленные и не скрытые');


-------------------------------------------------------
insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 5, 1, ' (((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)) and (id in (select system_id from z_logical_systems_attrs where attrname = ''ResourceCreationLimit''))', sysdate, 'Выпадающий список систем в карточке ресурса при согласовании - Все кроме SAP систем и неудаленные и нескрытые и системы с флагом ResourceCreationLimit');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 5, 266, ' (((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)) and (id in (select system_id from z_logical_systems_attrs where attrname = ''ResourceCreationLimit''))', sysdate, 'Выпадающий список систем в карточке ресурса при согласовании - Все кроме SAP систем и неудаленные и нескрытые и системы с флагом ResourceCreationLimit');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 5, 6, ' (((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)) and (id in (select system_id from z_logical_systems_attrs where attrname = ''ResourceCreationLimit''))', sysdate, 'Выпадающий список систем в карточке ресурса при согласовании - Все кроме SAP систем и неудаленные и нескрытые и системы с флагом ResourceCreationLimit');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 5, 7, ' (((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)) and (id in (select system_id from z_logical_systems_attrs where attrname = ''ResourceCreationLimit''))', sysdate, 'Выпадающий список систем в карточке ресурса при согласовании - Все кроме SAP систем и неудаленные и нескрытые и системы с флагом ResourceCreationLimit');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 5, 8, ' (((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)) and (id in (select system_id from z_logical_systems_attrs where attrname = ''ResourceCreationLimit''))', sysdate, 'Выпадающий список систем в карточке ресурса при согласовании - Все кроме SAP систем и неудаленные и нескрытые и системы с флагом ResourceCreationLimit');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 5, 9, ' (((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)) and (id in (select system_id from z_logical_systems_attrs where attrname = ''ResourceCreationLimit''))', sysdate, 'Выпадающий список систем в карточке ресурса при согласовании - Все кроме SAP систем и неудаленные и нескрытые и системы с флагом ResourceCreationLimit');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 5, 10, ' (((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)) and (id in (select system_id from z_logical_systems_attrs where attrname = ''ResourceCreationLimit''))', sysdate, 'Выпадающий список систем в карточке ресурса при согласовании - Все кроме SAP систем и неудаленные и нескрытые и системы с флагом ResourceCreationLimit');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 5, 12, ' (((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)) and (id in (select system_id from z_logical_systems_attrs where attrname = ''ResourceCreationLimit''))', sysdate, 'Выпадающий список систем в карточке ресурса при согласовании - Все кроме SAP систем и неудаленные и нескрытые и системы с флагом ResourceCreationLimit');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 5, 104, ' (((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)) and (id in (select system_id from z_logical_systems_attrs where attrname = ''ResourceCreationLimit''))', sysdate, 'Выпадающий список систем в карточке ресурса при согласовании - Все кроме SAP систем и неудаленные и нескрытые и системы с флагом ResourceCreationLimit');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 5, 106, ' (((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)) and (id in (select system_id from z_logical_systems_attrs where attrname = ''ResourceCreationLimit''))', sysdate, 'Выпадающий список систем в карточке ресурса при согласовании - Все кроме SAP систем и неудаленные и нескрытые и системы с флагом ResourceCreationLimit');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 5, 103, ' (((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)) and (id in (select system_id from z_logical_systems_attrs where attrname = ''ResourceCreationLimit''))', sysdate, 'Выпадающий список систем в карточке ресурса при согласовании - Все кроме SAP систем и неудаленные и нескрытые и системы с флагом ResourceCreationLimit');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 5, 13, ' (((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)) and (id in (select system_id from z_logical_systems_attrs where attrname = ''ResourceCreationLimit''))', sysdate, 'Выпадающий список систем в карточке ресурса при согласовании - Все кроме SAP систем и неудаленные и нескрытые и системы с флагом ResourceCreationLimit');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 5, 21, ' (((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)) and (id in (select system_id from z_logical_systems_attrs where attrname = ''ResourceCreationLimit''))', sysdate, 'Выпадающий список систем в карточке ресурса при согласовании - Все кроме SAP систем и неудаленные и нескрытые и системы с флагом ResourceCreationLimit');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 5, 126, ' (((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)) and (id in (select system_id from z_logical_systems_attrs where attrname = ''ResourceCreationLimit''))', sysdate, 'Выпадающий список систем в карточке ресурса при согласовании - Все кроме SAP систем и неудаленные и нескрытые и системы с флагом ResourceCreationLimit');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 5, 167, ' (((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)) and (id in (select system_id from z_logical_systems_attrs where attrname = ''ResourceCreationLimit''))', sysdate, 'Выпадающий список систем в карточке ресурса при согласовании - Все кроме SAP систем и неудаленные и нескрытые и системы с флагом ResourceCreationLimit');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 5, 186, ' (((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)) and (id in (select system_id from z_logical_systems_attrs where attrname = ''ResourceCreationLimit''))', sysdate, 'Выпадающий список систем в карточке ресурса при согласовании - Все кроме SAP систем и неудаленные и нескрытые и системы с флагом ResourceCreationLimit');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 5, 206, ' (((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)) and (id in (select system_id from z_logical_systems_attrs where attrname = ''ResourceCreationLimit''))', sysdate, 'Выпадающий список систем в карточке ресурса при согласовании - Все кроме SAP систем и неудаленные и нескрытые и системы с флагом ResourceCreationLimit');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 5, 226, ' (((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)) and (id in (select system_id from z_logical_systems_attrs where attrname = ''ResourceCreationLimit''))', sysdate, 'Выпадающий список систем в карточке ресурса при согласовании - Все кроме SAP систем и неудаленные и нескрытые и системы с флагом ResourceCreationLimit');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 5, 328, ' (((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)) and (id in (select system_id from z_logical_systems_attrs where attrname = ''ResourceCreationLimit''))', sysdate, 'Выпадающий список систем в карточке ресурса при согласовании - Все кроме SAP систем и неудаленные и нескрытые и системы с флагом ResourceCreationLimit');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 5, 329, ' (((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)) and (id in (select system_id from z_logical_systems_attrs where attrname = ''ResourceCreationLimit''))', sysdate, 'Выпадающий список систем в карточке ресурса при согласовании - Все кроме SAP систем и неудаленные и нескрытые и системы с флагом ResourceCreationLimit');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 5, 11, ' (((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)) and (id in (select system_id from z_logical_systems_attrs where attrname = ''ResourceCreationLimit''))', sysdate, 'Выпадающий список систем в карточке ресурса при согласовании - Все кроме SAP систем и неудаленные и нескрытые и системы с флагом ResourceCreationLimit');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 5 , 166, ' (((is_sap_system is null or is_sap_system!=''true'') and is_hidden=0 and is_deleted=0)) and (id in (select system_id from z_logical_systems_attrs where attrname = ''ResourceCreationLimit''))', sysdate, 'Выпадающий список систем в карточке ресурса при согласовании - Все кроме SAP систем и неудаленные и нескрытые и системы с флагом ResourceCreationLimit');

-----------------------------------------------------------------

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 6, 1, ' (usr_status=''Active'')', sysdate, 'Переназначение заявки');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 6, 266, ' (usr_status=''Active'')', sysdate, 'Переназначение заявки');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 6, 6, '(usr_status=''Active'')', sysdate, 'Переназначение заявки');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 6, 7, ' (usr_status=''Active'')', sysdate, 'Переназначение заявки');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 6, 8, ' (usr_status=''Active'')', sysdate, 'Переназначение заявки');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 6, 9, ' (usr_status=''Active'')', sysdate, 'Переназначение заявки');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 6, 10, ' (usr_status=''Active'')', sysdate, 'Переназначение заявки');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 6, 12, ' (usr_status=''Active'')', sysdate, 'Переназначение заявки');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 6, 104, ' (usr_status=''Active'')', sysdate, 'Переназначение заявки');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 6, 106, ' (usr_status=''Active'')', sysdate, 'Переназначение заявки');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 6, 103, ' (usr_status=''Active'')', sysdate, 'Переназначение заявки');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 6, 13, ' (usr_status=''Active'')', sysdate, 'Переназначение заявки');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 6, 21, ' (usr_status=''Active'')', sysdate, 'Переназначение заявки');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 6, 126, ' (usr_status=''Active'')', sysdate, 'Переназначение заявки');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 6, 167, ' (usr_status=''Active'')', sysdate, 'Переназначение заявки');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 6, 186, ' (usr_status=''Active'')', sysdate, 'Переназначение заявки');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 6, 206, ' (usr_status=''Active'')', sysdate, 'Переназначение заявки');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 6, 226, ' (usr_status=''Active'')', sysdate, 'Переназначение заявки');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 6, 328, ' (usr_status=''Active'')', sysdate, 'Переназначение заявки');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 6, 329, ' (usr_status=''Active'')', sysdate, 'Переназначение заявки');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 6, 11, ' (usr_status=''Active'')', sysdate, 'Переназначение заявки');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 6, 166, ' (usr_status=''Active'')', sysdate, 'Переназначение заявки');

-------------------------------------

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 7, 12, ' (usr_udf_is_deleted is null or usr_udf_is_deleted!=''true'')', sysdate, 'Список пользователей, отзыв доступа');

------------------------------------------------------------------
insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 8, 1, '  1 = 1', sysdate, 'Видимость каталог пользователей - все пользователи');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 8, 266, '  1 = 1', sysdate, 'Видимость каталог пользователей - все пользователи');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 8, 6, ' 1 = 1', sysdate, 'Видимость каталог пользователей - все пользователи');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 8, 103, ' union all ' ||
                    ' ( select v2.usr_key
                          from z_vw_usr_func_roles v1
                              inner join z_mv_employments_with_comp v2
                                      on to_char(v1.role_udf_role_sub_type) = ' ||
                                  z_func_role_sub_type('ContactAdmin') || '
                                  and v1.target_object_id = v2.company_id
                         where v1.usr_key = ?) ', sysdate, 'Видимость каталог пользователей');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 8, 12, ' (usr_udf_is_deleted is null or usr_udf_is_deleted!=''true'')', sysdate, 'Видимость каталог пользователей - все пользователи');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 8, 104, ' 1 = 1', sysdate, 'Видимость каталог пользователей - все пользователи');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 8, 329, '( usr_key in (
                    SELECT usr_key FROM Z_VW_USER_ENTITLEMENTS zue join z_logical_systems zls on zls.id = zue.logical_system_id
                     WHERE zls.is_1c_system = 1
                       and provisioning_status in (''Provisioned'', ''Enabled'')
                         and ( DEPROVISIONING_STATUS is null or DEPROVISIONING_STATUS != (''Provisioning'') )
                       UNION
                     SELECT usr_key FROM z_employments WHERE manager_usr_key = ?
                    ) )', sysdate, 'Видимость каталог пользователей - все пользователи с доступом в системы 1С');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 8, 11, ' 1 = 1', sysdate, 'Видимость каталог пользователей - все пользователи');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 8, 21, ' union all ' ||
                      ' ( select v2.usr_key
                            from z_vw_usr_func_roles v1
                                inner join z_mv_employments_with_comp v2
                                        on to_char(v1.role_udf_role_sub_type) = ' || z_func_role_sub_type('KT040Admin') || '
                                          and v1.target_object_id = v2.company_id
                           where v1.usr_key = ?) ', sysdate, 'Видимость каталог пользователей для Администратора КТ040');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 8, 13, ' (usr_udf_is_deleted is null or usr_udf_is_deleted!=''true'')', sysdate, 'Видимость пользователей в каталоге пользователей - все неудаленные');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 8, 3, ' (usr_key in (SELECT usr_key FROM usr where act_key in (
                        SELECT act_key
                          FROM act
                          CONNECT BY PRIOR act_key = parent_key
                          START WITH act_key = ?)))', sysdate, 'Видимость каталог пользователей - для роли ALL USERS');

                          insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 8, 1000365, '( usr_key in (
                    SELECT usr_key FROM Z_VW_USER_ENTITLEMENTS
                     WHERE logical_system_id = itsk_get_logical_system_id(''SECURE_MOBILE_SYSTEM'')
                       and provisioning_status in (''Provisioned'', ''Enabled'')
                         and ( DEPROVISIONING_STATUS is null or DEPROVISIONING_STATUS != (''Provisioning'') )
                       UNION
                     SELECT usr_key FROM z_employments WHERE manager_usr_key = ?
                    ) )', sysdate, 'Видимость каталог пользователей - все с доступом в ЗМ');

 insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 8, 1000485, '( usr_key in (
                    SELECT usr_key FROM Z_VW_USER_ENTITLEMENTS zue join z_logical_systems zls on zls.id = zue.logical_system_id
                     WHERE zls.is_1c_system = 1
                       and provisioning_status in (''Provisioned'', ''Enabled'')
                         and ( DEPROVISIONING_STATUS is null or DEPROVISIONING_STATUS != (''Provisioning'') )
                       UNION
                     SELECT usr_key FROM z_employments WHERE manager_usr_key = ?
                    ) )', sysdate, 'Видимость каталог пользователей - все с доступом в 1C');

-------------------------------------------------------------
insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 9, 1, '( (usr_status=''Active'') and (usr_udf_is_deleted is null or usr_udf_is_deleted!=''true'')', sysdate, 'Видимость пользователей при запросе доступа - все пользователи');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 9, 13, '( (usr_status=''Active'') and (usr_udf_is_deleted is null or usr_udf_is_deleted!=''true'')', sysdate, 'Видимость пользователей при запросе доступа - все пользователи');

----------------------------------------------------------------
insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 10, 3, ' (usr_key in (select usr_key from z_vw_active_user_access where role_id= select z_get_ff_controllers_ugp_key() as res from dual)', sysdate, 'USER_Account_Controller');
-------------------------------------------------------------------

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 11, 3, ' (usr_key in (select usr_key from z_vw_active_user_access where role_id= select z_get_ff_owners_ugp_key() as res from dual )) ', sysdate, 'USER_OWNER_FF');
----------------------------------------------------------------------

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 12, 3, ' (usr_key in (select usr_key from z_vw_active_user_access where role_id= select z_get_ffp_owners_ugp_key() as res from dual)) ', sysdate, 'USER_OWNER_FFP');
--------------------------------------------------------------------------------

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 13, 10, ' 1=1 ', sysdate, 'все ресурсы на этапе выбора доступов в заявке');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 13, 6, ' 1=1 ', sysdate, 'все ресурсы на этапе выбора доступов в заявке');

insert into GPN_OIM.FILTERS (ID, POINT_ID, UGP_KEY, SQL_FILTER_CLAUSE, CREATED_DATE, DISPLAY_TITLE)
values (gpn_oim.filters_seq.nextval, 13, 13, ' 1=1 ', sysdate, 'все ресурсы на этапе выбора доступов в заявке');

COMMIT;

 -- rollback delete GPN_OIM.POINTS where ID = gpn_oim.points_seq.nextval;
 -- rollback delete GPN_OIM.FILTERS where ID = gpn_oim.filters_seq.nextval;

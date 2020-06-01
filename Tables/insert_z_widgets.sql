--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

delete from GPN_OIM.Z_WIDGETS
where ID in (66, 67, 68, 69, 70);

insert into GPN_OIM.Z_WIDGETS (ID, WIDGET_CODE, WIDGET_NAME, WIDGET_DESC, CREATE_DATE, UPDATE_DATE)
values (66, 'catalog_systems', 'Каталог ресурсов', Null, to_date('24-11-2019 17:09:58', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGETS (ID, WIDGET_CODE, WIDGET_NAME, WIDGET_DESC, CREATE_DATE, UPDATE_DATE)
values (67, 'catalog_systems_add', 'Добавление новой системы', Null, to_date('24-11-2019 17:09:58', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGETS (ID, WIDGET_CODE, WIDGET_NAME, WIDGET_DESC, CREATE_DATE, UPDATE_DATE)
values (68, 'catalog_systems_edit', 'Редактирование информации о системе', Null, to_date('24-11-2019 17:09:58', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGETS (ID, WIDGET_CODE, WIDGET_NAME, WIDGET_DESC, CREATE_DATE, UPDATE_DATE)
values (69, 'mass_resources_change_request', 'Создание заявки на массовое изменение ресурсов', Null, to_date('24-11-2019 17:09:58', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_WIDGETS (ID, WIDGET_CODE, WIDGET_NAME, WIDGET_DESC, CREATE_DATE, UPDATE_DATE)
values (70, 'add_entitlements_in_request ', 'Добавление прав доступа в заявку к ресурсу', Null, to_date('24-11-2019 17:09:58', 'dd-mm-yyyy hh24:mi:ss'), Null);

Commit;


--rollback delete from GPN_OIM.Z_WIDGETS where ID in (66, 67, 68, 69, 70);
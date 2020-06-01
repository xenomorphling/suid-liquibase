--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

delete from GPN_OIM.Z_FUNCTIONS;
commit;

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (1, 'HISTORY_CHANGES', Null, Null, 'Просмотр истории изменений', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (2, 'PERSONAL_ENTITLEMENTS_LINK_ACCOUNT', Null, Null, 'Привязать доступы персональной УЗ к другой учетной записи', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (3, 'PERSONAL_ENTITLEMENTS_LINK_EMPLOYMENT', Null, Null, 'Привязать доступы персональной УЗ к другому друдоустройству', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (4, 'SPECIAL_ENTITLEMENTS_LINK_ACCOUNT', Null, Null, 'Привязать доступы специальной УЗ к другой учетной записи', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (5, 'SPECIAL_ENTITLEMENTS_LINK_EMPLOYMENT', Null, Null, 'Привязать доступы специальной УЗ к другому друдоустройству', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (6, 'PERSONAL_ACCOUNT_RULES_RETRY', Null, Null, 'Создать заявку на ранее имеющиеся доступы персональной УЗ', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (7, 'SPECIAL_ACCOUNT_RULES_RETRY', Null, Null, 'Создать заявку на ранее имеющиеся доступы специальной УЗ', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (8, 'PERSONAL_ACCOUNTS_LINK_ACCOUNT', Null, Null, 'Привязать персональную учетную запись', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (9, 'PERSONAL_ACCOUNTS_UNLINK_ACCOUNT', Null, Null, 'Отвязать персональную учетную запись', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (10, 'PERSONAL_ACCOUNTS_SYNCHRONIZATION_FROM_SYSTEM', Null, Null, 'Синхронизировать персональную УЗ из ИС', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (11, 'PERSONAL_ACCOUNTS_UPDATE_ATTRS', Null, Null, 'Обновить атрибуты персональной УЗ в целевой системе', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (12, 'PERSONAL_ACCOUNTS_HISTORY', Null, Null, 'Просмотр истории изменений персональной УЗ', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (13, 'PERSONAL_ACCOUNTS_LOCK_BY_ALL_INCIDENTS', Null, Null, 'Блокировать персональную УЗ по любому инциденту', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (14, 'SPECIAL_ACCOUNTS_LINK_ACCOUNT', Null, Null, 'Привязать специальную учетную запись', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (15, 'SPECIAL_ACCOUNTS_UNLINK_ACCOUNT', Null, Null, 'Отвязать специальную учетную запись', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (16, 'SPECIAL_ACCOUNTS_SYNCHRONIZATION_FROM_SYSTEM', Null, Null, 'Синхронизировать специальную УЗ из ИС', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (17, 'SPECIAL_ACCOUNTS_UPDATE_ATTRS', Null, Null, 'Обновить атрибуты специальной УЗ в целевой системе', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (18, 'SPECIAL_ACCOUNTS_HISTORY', Null, Null, 'Просмотр истории изменений специальной УЗ', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (19, 'SPECIAL_ACCOUNTS_LOCK_BY_ALL_INCIDENTS', Null, Null, 'Блокировать специальную УЗ по любому инциденту', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (20, 'ENTITLEMENT_TO_SPECIAL_ACCOUNT_REPEAT_GRANT', Null, Null, 'Повторить доступ к специальной УЗ', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (21, 'ENTITLEMENT_TO_SPECIAL_ACCOUNT_REPEAT_REVOKE', Null, Null, 'Повторить отзыв к специальной УЗ', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (22, 'ENTITLEMENT_TO_SPECIAL_ACCOUNT_REPEAT_CHANGE_DATE', Null, Null, 'Повторить изменение срока дествия доступа к специальной УЗ', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (23, 'EDIT_BASIC_LAST_NAME', Null, Null, 'Редактировать фамилию', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (24, 'EDIT_BASIC_FIRST_NAME', Null, Null, 'Редактировать имя', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (25, 'EDIT_BASIC_MIDDLE_NAME', Null, Null, 'Редактировать отчество', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (26, 'EDIT_BASIC_BIRTH_DATE', Null, Null, 'Редактировать дату рождения', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (27, 'EDIT_BASIC_EMAIL', Null, Null, 'Редактировать электронную почту', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (28, 'EDIT_TIMOUT_BLOCK', Null, Null, 'Редактировать таймаут блокировки', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (29, 'EDIT_TIMOUT_REVOKE', Null, Null, 'Редактировать таймаут отзыва', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (30, 'EDIT_CONTACT_INNER_PHONE', Null, Null, 'Редактировать внутренний номер телефона', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (31, 'EDIT_CONTACT_PHONE', Null, Null, 'Редактировать номер телефона', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (32, 'EDIT_CONTACT_MOBILE_PHONE', Null, Null, 'Редактировать мобильный номер телефона', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (33, 'EDIT_CONTACT_EMAIL', Null, Null, 'Редактировать электронную почту в контактах', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (34, 'EDIT_LOCATION_REAL_CITY', Null, Null, 'Редактировать город в метоположении', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (35, 'EDIT_LOCATION_REAL_ADDRESS', Null, Null, 'Редактировать адрес в метоположении', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (36, 'EDIT_EMPLOYMENT_ADD', Null, Null, 'Добавить трудоустройство', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (37, 'KDP_TAB_DISPLAY', Null, Null, 'Отображать КДП', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (38, 'REQUEST_SKIP_APPROVALS', Null, Null, 'Пропустить согласование', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (39, 'LOGIN', 1, Null, 'Войти в систему', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (40, 'LOAD_CONTEXT', 2, Null, 'Получение набора доступов при логине', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (41, 'LOAD_WIDGETS', 3, Null, 'Добавить виджет', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (42, 'LOAD_MENU_ITEMS', 4, Null, 'Получить для данного пользователя его пункты бокового меню в СУИД 5.0', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (43, 'LOAD_SETTINGS', 26, Null, 'Настройки пользователя (в части выставленных видимами виджетов)', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (44, 'GET_ACCOUNTS_BY_USERS_ARRAY', 5, Null, 'Получить список УЗ пользователей', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (45, 'GET_EMPLOYMENTS', 6, Null, 'Выбрать трудоустройство', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (46, 'GET_OTHER_ROLES', 7, Null, 'Получить списком доступы на вкладке Прочие при создании заявки', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (47, 'GET_SAP_ROLES', 8, Null, 'Получить списком доступы на вкладке SAP при создании заявки', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (48, 'GET_1C_ROLES', 9, Null, 'Получить списком доступы на вкладке 1C при создании заявки', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (49, 'GET_SUID_ROLES', 10, Null, 'Получить спискомдоступы на вкладке Роли СУИД при создании заявки', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (50, 'GET_BUSINESS_ROLES', 11, Null, 'Получить списком доступы на вкладке Бизнес-роли при создании заявки', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (51, 'GET_REQUEST_ITEM_APPROVALS', 12, Null, 'Просмотр маршрута согласования заявки', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (52, 'GET_USERS', 13, Null, 'Выбрать пользователей', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (53, 'GET_USER_INFO', 14, Null, 'Просмотреть информацию  по пользователю', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (54, 'GET_REQUEST_DETAILS', 15, Null, 'Просмотр детальной информация по заявке', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (55, 'GET_REQUESTS_BY_BENEFICIARY', 16, Null, 'Просмотр заявок по бенефициару', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (56, 'GET_REQUESTS', 17, Null, 'Получить список заявок', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (57, 'GET_REQUESTS_BY_ASSIGNED', 18, Null, 'Просмотр заявок в разделе Мои согласования на вкладке Заявки', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (58, 'GET_REQUESTS_FOR_APPROVE_GROUPED_BY_USER', 19, Null, 'Просмотр заявок в разделе Мои согласования на вкладке Пользователи', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (59, 'GET_REQUESTS_FOR_APPROVE_GROUPED_BY_ENTITLEMENT', 20, Null, 'Просмотр заявок в разделе Мои согласования на вкладке Доступы', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (60, 'GET_PROFILE_MAIN_INFO', 21, Null, 'Просмотр профиля пользователя: Основная информация', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (61, 'GET_PROFILE_DELEGATIONS', 22, Null, 'Просмотр профиля пользователя: Делегирование', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (62, 'GET_PROFILE_CERTIFICATES', 23, Null, 'Просмотр профиля пользователя: Сертификаты УЦ', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (63, 'GET_PROFILE_CONFIDENTIALITY_AGREEMENTS', 24, Null, 'Просмотр профиля пользователя: Договоры конфиденциальности', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (64, 'GET_EMPLOYMENT_INTERN_DOCUMENT', 25, Null, 'Получить документ для практиканта. Договор о прохождении практики(?)', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (65, 'GET_USER_ENTITLEMENTS', 27, Null, 'Просмотр профиля пользователя: Фактические доступы', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (66, 'GET_CONTRACT_AGENTS', 28, Null, 'Просмот раздела Поиск подрядных организаций', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (67, 'DOWNLOAD_CONTRACT_AGENTS_CONTRACT', 29, Null, 'Скачать договор с подрядной организацией', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (68, 'DOWNLOAD_CONTRACT_AGENTS_AGREEMENT', 30, Null, 'Скачать соглашение о конфиденциальности с подрядной организацией', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (69, 'GET_CONTRACT_AGENT_INFO', 31, Null, 'Просмотр профиля подрядной организации', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (70, 'GET_RESOURCES', 32, Null, 'Выбрать ресурс', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (71, 'GET_RESOURCES_INFO', 33, Null, 'Просмотр профиля ресурса: Основные сведения', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (72, 'GET_RESOURCES_PUBLICATIONS', 34, Null, 'Просмотр профиля ресурса: Публикации', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (73, 'GET_RESOURCES_MEMBERS', 35, Null, 'Просмотр профиля ресурса: Сотрудники, имеющие доступ', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (74, 'GET_RESOURCES_ROLES', 36, Null, 'Просмотр профиля ресурса: Основные сведения, Название ', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (75, 'GET_RESOURCES_ACCESS_TYPES', 41, Null, 'Просмотр профиля ресурса: Права доступа', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (76, 'GET_RESOURCES_CONFIDENTIALITY_TYPES', 42, Null, 'Просмотр профиля ресурса: Основные сведения, Гриф конфиденциальности', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (77, 'GET_RESOURCES_RESOURCE_TYPES', 43, Null, 'Просмотр профиля ресурса: Основные сведения, Тип ресурса', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (78, 'GET_RESOURCES_REGIONS', 44, Null, 'Просмотр профиля ресурса: Основные сведения, Регион', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (79, 'GET_SHORT_INFO_COMPANIES', 37, Null, 'Получить инофрмацию по компаниям', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (80, 'GET_COMPANIES_WITH_DEPARTMENT_KEY', 38, Null, 'Отбираем только те компании, у которых есть внутри активные департаменты, пустые компании отсеиваем', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (81, 'GET_COMPANIES', 39, Null, 'Получить список организаций', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (82, 'GET_COMPANY_INFO', 40, Null, 'Просмотр профиля компании', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (83, 'GET_LOGICAL_SYSTEMS', 45, Null, 'Получить список систем', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (84, 'GET_SHORT_SYSTEMS_FOR_RESOURCE_CREATION', 46, Null, 'Выбрать систему из выпадающего списка при создании ресурса', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (85, 'GET_RESOURCE_ENTITLEMENT_TYPES', 47, Null, 'Выбрать тип доступа к ресурсу', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (86, 'GET_ENTITLEMENTS', 48, Null, 'Выбрать доступ к ресурсу', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (87, 'GET_ORGANIZATIONS_UNITS_TREE', 49, Null, 'Просмотр дерева организаций ', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (88, 'GET_ACCOUNTS_BY_USER', 50, Null, 'Вернуть учетные записи пользователя', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (89, 'GET_ENTITLEMENTS_BY_USER_ACCOUNT', 51, Null, 'Доступы к спец УЗ', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (90, 'GET_SUPPORTED_ACCOUNT_LOCKS', 52, Null, 'Получение типов блокировки', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (91, 'GET_FILE_RESOURCES', 53, Null, 'Вернуть список файловых ресурсов', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (92, 'GET_LINK_ENTITLEMENTS', 54, Null, 'Получить связанные доступы', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (93, 'GET_FILE_RESOURCE_LOGICAL_SYSTEM', 55, Null, 'Получить систему для файловых ресурсов', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (94, 'GET_FILE_RESOURCE_LOGICAL_SYSTEM_FOR_ACCOUNT_TYPE', 56, Null, 'Получить список SAP систем ', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (95, 'GET_SCOPES_TYPES_BY_SUID_ROLE', 57, Null, 'Выбрать область действия для роли СУИД при запросе доступа', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (96, 'GET_SECURE_MOBILE_TYPES', 58, Null, 'Выбрать тип мобильного устройста (при запросе доступа в систему Защищенная мобильность)', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (97, 'GET_SECURE_MOBILE_FLAGS_BY_RESOURCES', 59, Null, 'Выбрать доступ Защищенная мобильность при запросе доступа для вставки шага выбора типа мобильного устройства', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (98, 'GET_INDEPENDENT_ORGANIZATIONS_UNITS_TREE', 60, Null, 'Просмотр дерева подразделений организаций ', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (99, 'GET_SAP_ROLES_BUSINESS_PROCESS_VALUES', 61, Null, 'Выбрать Бизнес-процесс из выпадающего списка при запросе доступа в SAP', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (100, 'GET_SAP_ROLES_BUSINESS_SUB_PROCESS_VALUES', 62, Null, 'Выбрать Бизнес-подпроцесс из выпадающего списка при запросе доступа в SAP', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (101, 'GET_SAP_ROLES_SOLUTION_VALUES', 63, Null, 'Выбрать Решение из выпадающего списка при запросе доступа в SAP', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (102, 'GET_SAP_ROLES_LANDSCAPE_VALUES', 64, Null, 'Выбрать Ландшафт из выпадающего списка при запросе доступа в SAP', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (103, 'GET_SAP_LOGICAL_SYSTEMS', 65, Null, 'Выбрать системы SAP', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (104, 'GET_ADDITION_ACCOUNT_SUPPORT_AREAS', 66, Null, 'Выбрать Направление поддержки при запросе создания учетной записи FireFighter', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (105, 'GET_ADDITION_ACCOUNT_SUPPORT_LEVELS', 67, Null, 'Выбрать Линию поддержки при запросе создания учетной записи FireFighter', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (106, 'GET_ADDITION_ACCOUNT_PROTOCOLS', 68, Null, 'Выбрать Протокол при запросе создания учетной записи Коммуникационная', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (107, 'GET_ADDITION_ACCOUNT_KSHD_CODES', 69, Null, 'Выбрать Код КШД при запросе создания учетной записи Коммуникационная', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (108, 'GET_SPECIAL_ACCOUNTS_FOR_ACCOUNT_ACCESS', 70, Null, 'Выбрать специальную учетную запись SAP при запросе временного доступа к ней', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (109, 'GET_PERSONAL_SAP_USER_ACCOUNT', 71, Null, 'Выбрать персональную учетную запись SAP', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (110, 'GET_SAP_SPECIAL_ACCOUNT', 72, Null, 'Выбрать специальную учетную запись SAP', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (111, 'GET_ENTITLEMENTS_BY_USERS_FOR_DELETE', 73, Null, 'Выбрать доступы пользователя в заявке на отзыв', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (112, 'GET_ENTITLEMENTS_BY_USERS_FOR_CHANGE_DATE', 74, Null, 'Выбрать доступы пользователя в заявке на изменение срока действия', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (113, 'GET_SAP_ACCOUNT_TYPES', 75, Null, 'Выбрать тип учетной записи при запросе создания дополнительной учетной записи', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (114, 'GET_EXIST_ENTITLEMENTS_FOR_SPECIAL_ACCOUNT', 77, Null, 'Вернуть список имеющихся доступов для спец УЗ', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (115, 'GET_SAP_SPECIAL_ACCOUNTS_BY_USER', 78, Null, 'Вернуть список доступов к спец УЗ SAP', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (116, 'GET_REQUEST_STATISTICS_BY_WEEK', 79, Null, 'Для сбора статистики заявок (виджет для построения графиков который еще не реализован)', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (117, 'GET_REQUEST_STATISTICS_BY_COMPANY', 80, Null, 'Для сбора статистики заявок (виджет для построения графиков который еще не реализован)', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (118, 'GET_USER_WITH_CONFIDENTIAL_CONTRACT', 81, Null, 'Получить всех пользователей, у которых есть документ на доступ к конфиденциальным данным', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (119, 'GET_USER_WITH_CONFIDENTIAL_ITEMS_BY_COMPANY', 76, Null, 'Ищем все доступы к конфиденциальным данным для пользователя', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (120, 'EDIT_USER_SETTINGS', 105, Null, 'Редактировать пользовательские настройки', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (121, 'ADD_DELEGATION', 84, Null, 'Добавить делегирование', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (122, 'DELETE_DELEGATION', 82, Null, 'Удалить делегирование', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (123, 'UPDATE_CONFIDENTIALITY_AGREEMENTS', 88, Null, 'Изменить даты окончания договоров конфиденциальности', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (124, 'ADD_RESOURCE', 86, Null, 'Создать ресурс', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (125, 'EDIT_RESOURCE', 86, Null, 'Редактировать ресурс', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (126, 'APPROVE_REQUEST', 101, Null, 'Согласовать заявку', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (127, 'APPROVE_REQUEST_ITEMS', 103, Null, 'Согласовать доступ в заявке', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (128, 'REJECT_REQUEST', 102, Null, 'Отклонить заявку', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (129, 'REJECT_REQUEST_ITEMS', 104, Null, 'Отклогить доступ в заявке', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (130, 'FORWARD_REQUEST', Null, Null, 'Переназначить согласование заявки', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (131, 'EDIT_SUBORDINATES_USERS', 89, Null, 'Редактировать профили подчиненных пользователей', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (132, 'EDIT_ALL_USERS', 89, Null, 'Редактировать профили всех пользователей', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (133, 'ADD_USER', 83, Null, 'Создать профиль пользователя', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (134, 'CONTRACTOR_EDIT', 85, Null, 'Редактирование существующей подрядной организации', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (135, 'CONTRACTOR_ADD', 85, Null, 'Создание новой подрядной организации', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (136, 'CREATE_REQUEST_SPECIAL_ACCOUNT_UPDATE', 87, Null, 'Заявка на изменение специальной учетной записи', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (137, 'CREATE_REQUEST_ACCOUNT_ACCESS', 90, Null, 'Заявка на создание доступа к специальной учетной записи', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (138, 'CREATE_REQUEST_SPECIAL_ACCOUNT_CREATE', 91, Null, 'Заявка на создание специальной учетной записи', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (139, 'CREATE_REQUEST_KT040', 92, Null, 'Заявка на доступ к пунктам 040', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (140, 'CREATE_REQUEST', 93, Null, 'Заявка на доступ', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (141, 'CREATE_REQUEST_DELETE_ACCESS_GRANT', 94, Null, 'Заявка на отзыв доступа', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (142, 'CREATE_REQUEST_MODIFY_ACCESS_GRANT', 95, Null, 'Заявка наизменение доступа', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (143, 'CREATE_REQUEST_SERVICE_ACCOUNT_ACCESS', 96, Null, 'Заявкана доступ для специальной учетной записи', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (144, 'CREATE_REQUEST_REVOKE_ENTITLEMENT_FOR_SPEC_ACCOUNT', 97, Null, 'Заявка на отзыв доступа для  специальной учетной записи', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (145, 'CREATE_REQUEST_REVOKE_ENTITLEMENT_TO_SPEC_ACCOUNT', 98, Null, 'Заявка на отзыв доступа к специальной учетной записи', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (146, 'CREATE_REQUEST_CHANGE_ENTITLEMENT_TO_SPEC_ACCOUNT', 99, Null, 'Заявка на изменение к учетной записи', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (147, 'CREATE_REQUEST_SERVICE_ACCOUNT_MODIFY_SPEC_ACCESS', 100, Null, 'Заявка на изменение специальной учетной записи', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (148, 'RETRY_REQUEST', Null, Null, 'Повторить заявку', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (149, 'ADMIN_SETTINGS', Null, Null, 'Настройки администратора', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (150, 'EDIT_MAIN_INFO', Null, Null, 'Редактировать основную информацию в профиле', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (151, 'USER_SETTINGS', Null, Null, 'Настройки пользователя', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (152, 'GET_SYSTEMS', Null, Null, 'Просмотр списка систем', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (153, 'ADD_SYSTEMS', Null, Null, 'Создать систему', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (154, 'EDIT_SYSTEMS', Null, Null, 'Редактирование системы', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (155, 'ADD_ENTITLEMENTS_FOR_CREATION_RESOURCE_REQ', Null, Null, 'Добавление групп доступа в заявке на создание ресурса', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (156, 'CREATE_MASS_CHANGE_RESOURCE_REQUEST', Null, Null, 'Создать массовую заявку на изменение ресурса', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (157, 'PERSONAL_ACCOUNTS_LOCK_BY_EMPLOYEE_UITAT', Null, Null, 'Блокировка персональных УЗ по инициативе работника УИТАТ', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (158, 'CREATE_REQUEST_BASED_ON_AN_AGREED_PAPER_REQUEST', Null, Null, 'Заявка на доступ на основе согласованной бумажной заявки', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (159, 'CREATE_REQUEST_TENDER_ACCOUNT_CREATE', Null, Null, 'Заявка на создание тендерной учетной записи', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (160, 'CREATE_REQUEST_TENDER_ACCOUNT_ACCESS', Null, Null, 'Заявкана доступ для тендерной учетной записи', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (161, 'EDIT_CONTACT_FAX', Null, Null, 'Редактировать факс', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (162, 'CHANGE_ENTITLEMENT_REQUEST_APPROVAL', Null, Null, 'Редактировать доступ на этапе согласования заявки', Null, Null);

insert into GPN_OIM.Z_FUNCTIONS (ID, FUNCTION_CODE, ENDPOINT_ID, FUNCTION_NAME, FUNCTION_DESC, CREATE_DATE, UPDATE_DATE)
values (163, 'CHANGE_ENTITLEMENT_TYPE_rEQUEST_APPROVAL', Null, Null, 'Редактировать тип доступа на этапе согласования заявки', Null, Null);

Commit;


--rollback delete from GPN_OIM.Z_FUNCTIONS; 
--rollback commit;
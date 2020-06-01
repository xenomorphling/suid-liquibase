--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

delete from GPN_OIM.Z_USER_ROLES_WIDGET_SETS;
commit;

insert into GPN_OIM.Z_USER_ROLES_WIDGET_SETS (UGP_KEY, WIDGET_SET_ID, CREATE_DATE, UPDATE_DATE)
values (328, 25, to_date('23-11-2019 13:25:36', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_USER_ROLES_WIDGET_SETS (UGP_KEY, WIDGET_SET_ID, CREATE_DATE, UPDATE_DATE)
values (306, 28, to_date('23-11-2019 13:39:23', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_USER_ROLES_WIDGET_SETS (UGP_KEY, WIDGET_SET_ID, CREATE_DATE, UPDATE_DATE)
values (307, 29, to_date('23-11-2019 13:25:36', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_USER_ROLES_WIDGET_SETS (UGP_KEY, WIDGET_SET_ID, CREATE_DATE, UPDATE_DATE)
values (206, 20, to_date('23-11-2019 13:25:36', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_USER_ROLES_WIDGET_SETS (UGP_KEY, WIDGET_SET_ID, CREATE_DATE, UPDATE_DATE)
values (186, 19, to_date('23-11-2019 13:25:36', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_USER_ROLES_WIDGET_SETS (UGP_KEY, WIDGET_SET_ID, CREATE_DATE, UPDATE_DATE)
values (167, 18, to_date('23-11-2019 13:21:16', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_USER_ROLES_WIDGET_SETS (UGP_KEY, WIDGET_SET_ID, CREATE_DATE, UPDATE_DATE)
values (166, 24, to_date('23-11-2019 13:25:36', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_USER_ROLES_WIDGET_SETS (UGP_KEY, WIDGET_SET_ID, CREATE_DATE, UPDATE_DATE)
values (126, 17, to_date('24-11-2019 13:25:36', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_USER_ROLES_WIDGET_SETS (UGP_KEY, WIDGET_SET_ID, CREATE_DATE, UPDATE_DATE)
values (106, 13, to_date('23-11-2019 13:26:32', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_USER_ROLES_WIDGET_SETS (UGP_KEY, WIDGET_SET_ID, CREATE_DATE, UPDATE_DATE)
values (104, 12, to_date('24-11-2019 13:25:36', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_USER_ROLES_WIDGET_SETS (UGP_KEY, WIDGET_SET_ID, CREATE_DATE, UPDATE_DATE)
values (103, 14, to_date('23-11-2019 13:25:36', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_USER_ROLES_WIDGET_SETS (UGP_KEY, WIDGET_SET_ID, CREATE_DATE, UPDATE_DATE)
values (22, 34, to_date('23-11-2019 13:25:36', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_USER_ROLES_WIDGET_SETS (UGP_KEY, WIDGET_SET_ID, CREATE_DATE, UPDATE_DATE)
values (13, 15, to_date('23-11-2019 13:25:36', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_USER_ROLES_WIDGET_SETS (UGP_KEY, WIDGET_SET_ID, CREATE_DATE, UPDATE_DATE)
values (11, 22, to_date('24-11-2019 13:25:36', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_USER_ROLES_WIDGET_SETS (UGP_KEY, WIDGET_SET_ID, CREATE_DATE, UPDATE_DATE)
values (10, 10, to_date('23-11-2019 13:25:36', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_USER_ROLES_WIDGET_SETS (UGP_KEY, WIDGET_SET_ID, CREATE_DATE, UPDATE_DATE)
values (9, 9, to_date('23-11-2019 13:25:36', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_USER_ROLES_WIDGET_SETS (UGP_KEY, WIDGET_SET_ID, CREATE_DATE, UPDATE_DATE)
values (8, 8, to_date('23-11-2019 13:20:13', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_USER_ROLES_WIDGET_SETS (UGP_KEY, WIDGET_SET_ID, CREATE_DATE, UPDATE_DATE)
values (7, 7, to_date('24-11-2019 13:25:36', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_USER_ROLES_WIDGET_SETS (UGP_KEY, WIDGET_SET_ID, CREATE_DATE, UPDATE_DATE)
values (3, 1, to_date('26-01-2019 18:23:11', 'dd-mm-yyyy hh24:mi:ss'), Null);

insert into GPN_OIM.Z_USER_ROLES_WIDGET_SETS (UGP_KEY, WIDGET_SET_ID, CREATE_DATE, UPDATE_DATE)
values (1, 5, to_date('26-01-2019 18:23:11', 'dd-mm-yyyy hh24:mi:ss'), Null);

Commit;

--rollback delete from GPN_OIM.Z_USER_ROLES_WIDGET_SETS; commit;
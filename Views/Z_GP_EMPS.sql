--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

CREATE OR REPLACE VIEW GPN_OIM.Z_GP_EMPS
AS (
    SELECT 
        empl.ID
        , empl.USR_KEY
        , zt.TITLE_ID_FULL
        , zt.TITLE_ID
        , zt.TITLE_NAME
        , nvl(act.ORG_UDF_DEPARTMENT_NAME 
                , ACT_NAME) AS DEPARTMENT_NAME 
        , nvl(act.ORG_UDF_DEPARTMENT_HIERARCHY
                ,ACT_NAME) AS DEPARTMENT_HIERARCHY
        , nvl(act.ORG_UDF_DEPARTMENT_ID
                , ACT_NAME) AS DEPARTMENT_ID
        , empl.CITY
        , empl.OFFICE
        , empl.EMPLOYEE_ID_FULL
        , empl.TITLE_MISSING
        , empl.TITLE_REQUESTED_NAME
        , empl.DEPARTMENT_REQUESTED_NAME
        , empl.EMPLOYEE_TYPE
        , empl.IS_PRIMARY_TRUSTED
        , act.ACT_KEY
        , empl.IS_PRIMARY AS IS_PRIMARY_NUM
        , ewc.COMPANY_ID
        , empl.EMPLOYEE_ID
        , (CASE WHEN empl.IS_MANAGER = 1 THEN 'true'
                ELSE 'false' 
                END) AS IS_MANAGER
        , empl.CONTRACT_ID 
        , to_char(empl.CONF_AGR_DATE, 'DD.MM.YYYY') AS CONF_AGR_DATE_HR
        , to_char(empl.START_DATE, 'DD.MM.YYYY') AS START_DATE_HR
        , to_char(empl.END_DATE, 'DD.MM.YYYY') AS END_DATE_HR
        , empl.CATEGORY_ID
        , empl.SOURCE_ID
        , empl.GROUP_ID
        , empl.EMPLOYMENT_WEIGHT
        , empl.MANAGER_USR_KEY
        , manager.USR_DISPLAY_NAME AS MANAGER_DISPLAY_NAME
        , decode(empl.EMPLOYEE_STATUS, 'Working', 'Работает','Fired', 'Уволен','Candidate', 'Кандидат', empl.EMPLOYEE_STATUS) AS EMPLOYEE_STATUS_HR
        , empl.EMPLOYEE_STATUS
        , empl_types.lkv_decoded AS EMPLOYEE_TYPE_HR
        , Z_CONF_ACCESS.NAME AS CONF_ACCESS_NAME
        , empl.CONF_ACCESS_ID
    FROM Z_EMPLOYMENTS empl
    LEFT JOIN Z_MV_EMPLOYMENTS_WITH_COMP ewc
        ON empl.ID = ewc.ID
    LEFT JOIN Z_TITLES zt 
        ON empl.TITLE_ID_FULL = zt.TITLE_ID_FULL 
        AND empl.TITLE_ID_FULL IS NOT NULL
    INNER JOIN (SELECT *FROM act WHERE act.act_status != 'Deleted') act 
        ON empl.ACT_KEY = act.ACT_KEY
    LEFT JOIN usr manager 
        ON empl.MANAGER_USR_KEY = manager.USR_KEY
    LEFT JOIN (
        SELECT lkv_encoded
             , lkv_decoded 
            FROM lkv 
            WHERE 1 = 1
            AND lku_key IN (
                SELECT lku_key 
                    FROM lku 
                    WHERE 1 = 1
                    AND lku_type_string_key = 'Lookup.Users.Role'
                    )
    ) empl_types 
        ON empl.EMPLOYEE_TYPE = empl_types.lkv_encoded
    LEFT JOIN Z_CONF_ACCESS 
        ON empl.CONF_ACCESS_ID = z_cONf_access.ID
)

--rollback DROP VIEW GPN_OIM.Z_GP_EMPS;
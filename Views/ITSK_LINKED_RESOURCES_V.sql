--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

CREATE OR REPLACE VIEW GPN_OIM.ITSK_LINKED_RESOURCES_V AS
SELECT 
      rtrim(zr."NAME"||case when zra.resource_access_type_id > 0 then ' - '||typ.RESOURCE_ACCESS_TYPE_NAME else '' end) as name
    , sle.entitlement_id
    , sle.id as linked_id
    , ze.app_instance_key
    , zre.entitlement_id AS base_ent_id
    , zre.resource_access_id
    , zra.RESOURCE_ACCESS_TYPE_ID as resource_access_type
    , sle.linking_approach
    , sle.system_id
    , zr."ID"    
    , zr."NAME" as resource_name
    , zr."IS_CONF",zr."DESCRIPTION",zr."RESOURCE_ID",zr."OWNER_ID",zr."OWNER_DN",zr."COMPANY_ID",zr."COMPANY_NAME"
    , zr."SYSTEM_ID" as RESOURCE_SYSTEM_ID
    , zr."SYSTEM_NAME",zr."SYSTEM_DESCRIPTION",zr."CONFGRIF_ID",zr."RESP_ID",zr."IS_DELETED",zr."IS_HIDDEN"
  FROM GPN_OIM.z_resource_entitlements zre
        JOIN GPN_OIM.z_resource_access zra  ON zra.id = zre.resource_access_id        
        JOIN GPN_OIM.z_vw_resource_list zr  ON zr.id = zra.resource_id and (zr.is_hidden = 0 and zr.is_deleted = 0)
        JOIN GPN_OIM.itsk_system_linked_ents sle  ON zre.entitlement_id = sle.entitlement_id
        JOIN GPN_OIM.z_entitlement ze  ON ze.id = sle.entitlement_id   
        LEFT JOIN GPN_OIM.z_resource_access_type_info typ on typ.id = zra.resource_access_type_id
  WHERE sle.entitlement_id IS NOT NULL
    AND (sle.revoke_approach = 0 or sle.revoke_approach is null)
    AND LINKING_APPROACH <> 'AUTO';



--rollback DROP VIEW GPN_OIM.ITSK_LINKED_RESOURCES_V;
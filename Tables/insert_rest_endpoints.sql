--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (1, '/login', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (2, 'usr/loadContext', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (3, 'widget/findAll', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (4, 'usr/getMenuItemsByUser', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (5, 'userAccounts/getUsersAccounts', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (6, 'usr/getEmploymentsByUsers', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (7, 'otherRoles/findAllFiltered', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (8, 'sapRoles/findAllFiltered', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (9, '1cRoles/findAllFiltered', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (10, 'suidRoles/findAllFiltered', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (11, 'businessRoles/findAllFiltered', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (12, 'requestItem/getApprovals', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (13, 'usr/findAllLimit', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (14, 'usr/findOne', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (15, 'requests/getRequestDetails', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (16, 'requests/findRequestsByBeneficiary', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (17, 'requests/findRequests', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (18, 'requests/findRequestsByAssigned', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (19, 'requests/getAssignedToCurrentUser', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (20, 'requests/findRequestsForApproval', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (21, 'profile/findOne', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (22, 'profile/getDelegationsByUser', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (23, 'profile/getCaCertificatesByUser', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (24, 'profile/getConfidentialityAgreementsByUser', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (25, 'employment/getInternDocumentWithContentByUser', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (26, 'usr/getSettingsByUser', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (27, 'userAccess/getUserAccesses', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (28, 'zContractAgents/findAllFiltered', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (29, '/zContractAgents/findContractDocumentByContractIdAndId', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (30, '/zContractAgents/findNdaDocumentByNdaIdAndId', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (31, 'zContractAgents/findOne', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (32, 'zResources/findAllFiltered', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (33, 'zResources/findOne', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (34, 'zResources/getResourcePublications', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (35, 'zResources/getResourceMembers', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (36, 'zResources/getResourceRoles', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (37, 'zCompanies/findAll', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (38, 'zCompanies/findAllWithDepartmentKey', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (39, 'zCompanies/findAllLimit', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (40, 'zCompanies/findOne', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (41, 'zResources/getAccessTypes', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (42, 'zResources/getConfidentialityTypes', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (43, 'zResources/getResourceTypes', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (44, 'zResources/getRegions', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (45, 'logicalSystem/findAll', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (46, 'logicalSystem/getLogicalSystemsForResourceCreation', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (47, 'logicalSystem/getResourceAccessTypesByLogicalSystem', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (48, 'entitlement/findAllFiltered', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (49, 'organizationalUnits/getOrganizationalUnitsTree', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (50, 'userAccount/getUserAccounts', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (51, 'userAccount/getUserAccountAccess', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (52, 'userAccount/getSupportedUserAccountLocks', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (53, 'fileResources/findAllFilteredTree', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (54, 'entitlement/getLinkedEntitlements', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (55, 'logicalSystem/getFileResourcesLogicalSystem', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (56, 'logicalSystem/getLogicalSystemForAccountType', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (57, 'suidRoles/getScopeTypesBySuidRoles', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (58, 'zResources/getSecureMobileTypes', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (59, 'otherRoles/getSecureMobileFlagsByResources', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (60, 'organizationalUnits/getIndependentOrganizationalUnitsTree', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (61, 'sapRoles/getBusinessProcessValues', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (62, 'sapRoles/getBusinessSubprocessValues', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (63, 'sapRoles/getSolutionValues', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (64, 'sapRoles/getLandscapeValues', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (65, 'logicalSystem/getSapLogicalSystems', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (66, 'zrequest/additionalAccount/getSupportAreas', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (67, 'zrequest/additionalAccount/getSupportLevels', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (68, 'zrequest/additionalAccount/getProtocols', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (69, 'zrequest/additionalAccount/getKshdCodes', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (70, 'userAccount/getSapSpecialAccountsForAccountAccess', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (71, 'userAccount/getSapPersonalAccounts', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (72, 'userAccount/getSapSpecialAccountsForAccessRequest', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (73, 'userAccess/findAllFilteredForDeleteAccessGrant', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (74, 'userAccess/findAllFilteredForModifyAccessGrant', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (75, 'zrequest/additionalAccount/getAccountTypes', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (76, 'confidentialItems/findByCompanyId', 'TEXT_POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (77, 'userAccess/findAllFilteredLimitSpecial', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (78, 'userAccount/getSapSpecialAccountsByUser', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (79, 'requestsStatistics/findAllByWeek', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (80, 'requestsStatistics/findAllByCompany', 'GET');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (81, 'confidentialItems/findUsersWithConfidentialContractor', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (82, 'userDelegation/deleteAll', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (83, 'profile/save', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (84, 'userDelegation/save', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (85, 'zContractAgents/save', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (86, 'zResources/save', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (87, 'zrequest/specialAccount/update', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (88, 'profile/updateConfidentialityAgreements', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (89, 'profile/update', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (90, 'requests/createAccountAccessRequest', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (91, 'zrequest/additionalAccount/create', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (92, 'requests/createConfidentialRequest', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (93, 'requests/createRequest', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (94, 'requests/createDeleteAccessGrantRequest', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (95, 'requests/createModifyAccessGrantRequest', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (96, 'requests/createServiceAccountAccessRequestRequest', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (97, 'requests/createServiceAccountDeleteAccessGrantRequest', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (98, 'requests/createDeleteAccountAccessRequest', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (99, 'requests/modifyAccountAccessRequest', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (100, 'requests/createServiceAccountModifyAccessGrantRequest', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (101, 'requests/approveRequests', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (102, 'requests/rejectRequests', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (103, 'requestItem/approveRequestItems', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (104, 'requestItem/rejectRequestItems', 'POST');

insert into GPN_OIM.REST_ENDPOINTS (ID, URL, METHOD_TYPE)
values (105, 'usr/editSettingsByUser', 'POST');

Commit;


--rollback truncate table GPN_OIM.REST_ENDPOINTS;
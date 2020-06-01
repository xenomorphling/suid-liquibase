--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

create table APPROVAL_ROUTE_STATUS (
   ID varchar2(40) primary key,
   REQUEST_ITEM_ID number(22),
   ROUTE_STATUS varchar2(5),
   constraint REQUEST_ITEM_FK foreign key (REQUEST_ITEM_ID) references Z_REQUEST_ITEM(ID)
);

--rollback DROP table APPROVAL_ROUTE_STATUS;
--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

begin
  sys.dbms_stats.GATHER_TABLE_STATS(ownname => 'gpn_oim', tabname => 'z_requests', cascade => true);
  sys.dbms_stats.GATHER_TABLE_STATS(ownname => 'gpn_oim', tabname => 'z_request_item', cascade => true);
  sys.dbms_stats.GATHER_TABLE_STATS(ownname => 'gpn_oim', tabname => 'z_process_step', cascade => true);
  sys.dbms_stats.GATHER_TABLE_STATS(ownname => 'gpn_oim', tabname => 'z_process_step_attrs', cascade => true);
end; 

--rollback ;
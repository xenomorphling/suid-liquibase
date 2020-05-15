--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

create or replace procedure gpn_oim.z_save_user_photo(i_usr_key number,
                                                      i_image blob,
                                                      i_file_name varchar2,
                                                      i_uploaded_by number,
                                                      i_meta_info varchar2)
as
current_timestamp TIMESTAMP := SYSTIMESTAMP;
begin
    merge into Z_USER_PHOTO m using dual on (usr_key = i_usr_key)
         when not matched then insert (usr_key, image, creation_date, update_date, file_name, uploaded_by, meta_info) 
                               values (i_usr_key, i_image, current_timestamp, current_timestamp, i_file_name, i_uploaded_by, i_meta_info)
             when matched then update set image = i_image, update_date = current_timestamp, file_name = i_file_name, uploaded_by = i_uploaded_by, meta_info = i_meta_info;
end z_save_user_photo;
/

--rollback DROP PROCEDURE gpn_oim.z_save_user_photo;
--liquibase formatted sql
--changeset matsyuk.yum:1 dbms=oracle

CREATE OR REPLACE FUNCTION GPN_OIM.ITSK_APPROVAL_ROUTES_FNC(i_n_idm_process_id IN Z_PROCESS.IDM_PROCESS_ID%TYPE) 
RETURN varchar2 IS
/******************************************************************************
   NAME:       ITSK_APPROVAL_ROUTES_FNC
   PURPOSE:    

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        21.12.2017   savenkov.dv       1. Created this function.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     ITSK_APPROVAL_ROUTES_FNC
      Sysdate:         21.12.2017
      Date and Time:   21.12.2017, 9:16:25, and 21.12.2017 9:16:25
      Username:        savenkov.dv (set in TOAD Options, Procedure Editor)
      Table Name:       (set in the "New PL/SQL Object" dialog)

******************************************************************************/
  l_n_default_route_types_id NUMBER;
  l_n_default_route_contexts_id NUMBER;
  
  
  TYPE l_t_approval_steps_record IS RECORD (
    id GPN_OIM.ITSK_APPROVAL_STEPS.ID%TYPE,
    order_num GPN_OIM.ITSK_APPROVAL_STEPS.ORDER_NUM%TYPE, 
    code GPN_OIM.ITSK_APPROVAL_ROLE_TYPES.CODE%TYPE
  );
  
  TYPE l_t_vars_record IS RECORD (
    code gpn_oim.ITSK_APPROVAL_ROUTE_VARS.code%type,
    expression  gpn_oim.ITSK_APPROVAL_ROUTE_VARS.expression%type,
    val varchar2(4000),
    data_type gpn_oim.ITSK_APPROVAL_ROUTE_VARS.data_type%type
  );
  
  TYPE l_t_ctx_record IS RECORD (
    context_id GPN_OIM.ITSK_APPROVAL_ROUTES_CONTEXT.ID%type,
    expression GPN_OIM.ITSK_REQUEST_ITEM_TYPES_CTX.EXPRESSION%type,
    val varchar2(4000)
  );
  
  TYPE l_t_approval_steps IS TABLE OF l_t_approval_steps_record;
  TYPE l_t_context IS TABLE OF GPN_OIM.ITSK_APPROVAL_ROUTES_CONTEXT%rowtype;
  TYPE l_t_vars IS TABLE OF l_t_vars_record; 
  TYPE l_t_ctx IS TABLE OF l_t_ctx_record;
  TYPE l_t_types IS TABLE OF gpn_oim.ITSK_OBJECT_STATEMENTS%rowtype;
  
  l_r_approval_steps l_t_approval_steps; -- ���������
  l_r_approval_steps_ind_route l_t_approval_steps; -- �������������� �������
  l_r_approval_steps_com_route l_t_approval_steps; -- ������� �������    
  l_r_context l_t_context; -- ��������, ������� ����� ����������� � ������������� ��.
    
  l_v_route VARCHAR2(4000);
    
  l_n_approval_route_types_id NUMBER;
  l_n_approval_route_contexts_id GPN_OIM.ITSK_APPROVAL_ROUTES.APPROVAL_ROUTE_CONTEXTS_ID%type;
  l_v_approval_route_context_val GPN_OIM.ITSK_APPROVAL_ROUTES.APPROVAL_ROUTE_CONTEXT_VAL%type;
    
  l_r_vars l_t_vars;  
  l_r_ctx l_t_ctx;
  l_r_st_types l_t_types;
    
  l_n_item_type number;
  l_n_request_type_id number;
    
  CURSOR l_cr_common_steps(i_n_request_type_id IN NUMBER, i_n_request_item_type_id IN NUMBER, i_n_route_types_id in NUMBER, i_n_route_contexts_id in NUMBER default l_n_default_route_contexts_id) IS 
    select s.ID, s.ORDER_NUM, rot.CODE
        from gpn_oim.ITSK_APPROVAL_ROUTES r
        join GPN_OIM.ITSK_APPROVAL_ROUTES_REF rf on (rf.approval_route_id = r.id)
        join GPN_OIM.ITSK_APPROVAL_STEPS s on (s.APPROVAL_ROUTE_ID = r.ID)
        join GPN_OIM.ITSK_APPROVAL_ROLE_TYPES rot on (rot.ID = s.APPROVAL_ROLE_TYPES_ID)
        where rf.REQUEST_TYPE_ID = i_n_request_type_id
          and rf.APPROVAL_ROUTE_TYPE_ID = i_n_route_types_id
          and rf.REQUEST_ITEM_TYPE_ID = i_n_request_item_type_id         
          and r.APPROVAL_ROUTE_CONTEXTS_ID = i_n_route_contexts_id
          and r.APPROVAL_ROUTE_CONTEXT_VAL IS NULL
          and trunc(sysdate) between trunc(r.DT_START) and trunc(r.DT_END)
        order by s.ORDER_NUM asc;

  CURSOR l_cr_indiv_steps(i_n_request_type_id IN NUMBER, i_n_request_item_type_id IN NUMBER, i_n_route_types_id IN NUMBER, i_n_route_contexts_id IN NUMBER, i_v_route_context_val IN VARCHAR2) IS
    select s.ID, s.ORDER_NUM, rot.CODE
        from gpn_oim.ITSK_APPROVAL_ROUTES r
        join GPN_OIM.ITSK_APPROVAL_ROUTES_REF rf on (rf.approval_route_id = r.id)
        join GPN_OIM.ITSK_APPROVAL_STEPS s on (s.APPROVAL_ROUTE_ID = r.ID)
        join GPN_OIM.ITSK_APPROVAL_ROLE_TYPES rot on (rot.ID = s.APPROVAL_ROLE_TYPES_ID)
        where rf.REQUEST_TYPE_ID = i_n_request_type_id
          and rf.APPROVAL_ROUTE_TYPE_ID = i_n_route_types_id
          and rf.REQUEST_ITEM_TYPE_ID = i_n_request_item_type_id        
          and r.APPROVAL_ROUTE_CONTEXTS_ID = i_n_route_contexts_id
          and r.APPROVAL_ROUTE_CONTEXT_VAL = i_v_route_context_val
          and trunc(sysdate) between trunc(r.DT_START) and trunc(r.DT_END)
        order by s.ORDER_NUM asc;
  /**
  * �������� ������� �� �������
  */
  FUNCTION steps#get_value_by_index(i_n_order_num IN NUMBER, i_t_set in l_t_approval_steps)
  RETURN l_t_approval_steps_record
  IS
  BEGIN
    IF i_t_set IS NULL THEN
      RETURN NULL;
    END IF;
    IF i_t_set.count = 0 THEN
      RETURN NULL;
    END IF;
    FOR idx IN i_t_set.first .. i_t_set.last 
    LOOP
      IF i_t_set(idx).order_num = i_n_order_num AND i_t_set(idx).code <> 'Blank' THEN
        RETURN i_t_set(idx);
      END IF;
    END LOOP;
    RETURN NULL;
  END;
    
  /**
  * ������� ���������� �������� �� �������� � ���������������
  * private scope
  */
  FUNCTION routes#merge(i_t_left in l_t_approval_steps, i_t_right in l_t_approval_steps) 
  RETURN l_t_approval_steps
  IS
    l_t_merged l_t_approval_steps;    
    l_n_max_left number;
    l_n_max_right number;    
    l_n_max_order_num number;    
  BEGIN
    -- ���������� ��������� ���������� ORDER_NUM �� ����� ��������
    -- � ��� ���� ��������������, ��� ��������� ������������ �� �����������,
    -- �.�. ��������� ������� � ������������ ��������.
    l_n_max_left := i_t_left(i_t_left.count).order_num;
    l_n_max_right := i_t_right(i_t_right.count).order_num;
    l_t_merged := l_t_approval_steps();    
    l_n_max_order_num := case when  l_n_max_left > l_n_max_right then l_n_max_left else l_n_max_right end;
    for order_num in 1 .. l_n_max_order_num
    loop     
      if steps#get_value_by_index(order_num, i_t_left).order_num is null and steps#get_value_by_index(order_num, i_t_right).order_num is null then
        continue;
      elsif steps#get_value_by_index(order_num, i_t_left).order_num is not null and steps#get_value_by_index(order_num, i_t_right).order_num is null then
        l_t_merged.extend();
        l_t_merged(l_t_merged.count):=steps#get_value_by_index(order_num, i_t_left);
      elsif (steps#get_value_by_index(order_num, i_t_left).order_num is null or steps#get_value_by_index(order_num, i_t_left).order_num is not null) 
        and steps#get_value_by_index(order_num, i_t_right).order_num is not null then
        if steps#get_value_by_index(order_num, i_t_right).code = 'Skip' then
          continue;
        end if;
        l_t_merged.extend();
        l_t_merged(l_t_merged.count):=steps#get_value_by_index(order_num, i_t_right);
      end if;
    end loop;    
    RETURN l_t_merged;
  END;
  
  /**
  * �������� ���������� ���������
  */
  FUNCTION setenv(i_n_idm_request_id IN NUMBER)
  RETURN l_t_vars  
  IS
    l_r_vars l_t_vars;
    CURSOR l_cr_vars IS 
      SELECT code, expression, NULL AS val, data_type 
      FROM gpn_oim.ITSK_APPROVAL_ROUTE_VARS; 
  BEGIN
    OPEN l_cr_vars;
    FETCH l_cr_vars BULK COLLECT INTO l_r_vars;
    CLOSE l_cr_vars;
    --��������� �������� ���������
    --� ������ ������� � ���������
    FOR idx IN l_r_vars.first .. l_r_vars.last 
    LOOP
      BEGIN
        EXECUTE 
            IMMEDIATE l_r_vars(idx).expression 
                 INTO l_r_vars(idx).val 
                USING i_n_idm_request_id;
      EXCEPTION WHEN no_data_found THEN
        l_r_vars(idx).val:=NULL;
      END;
      --dbms_output.put_line(l_r_vars(idx).code ||' = ' ||l_r_vars(idx).val);
    END LOOP;
    
    RETURN l_r_vars;
  END; 
    
  
  /**
  * ������ ���������� ���������� ���������
  */
  FUNCTION setenv#get(i_v_code IN VARCHAR2, i_r_vars IN l_t_vars)
  RETURN VARCHAR2
  IS
  BEGIN
    IF i_r_vars IS NULL THEN
      RETURN NULL;
    END IF;
    IF i_r_vars.count = 0 THEN
      RETURN NULL;
    END IF;
    
    FOR idx IN i_r_vars.first .. i_r_vars.last
    LOOP
      IF i_r_vars(idx).code = i_v_code THEN
        RETURN i_r_vars(idx).val;
      END IF;
    END LOOP;
    RETURN NULL;
  END;
  
  /**
  * ������� ���������� ���������
  */
  FUNCTION calc(i_v_sql IN VARCHAR2, i_r_vars IN l_t_vars)
  RETURN BOOLEAN 
  IS
    l_v_sql varchar2(4000); 
    l_n_ans number;
  BEGIN  
    l_v_sql := i_v_sql;
    --  dbms_output.put_line('l_v_sql1 = '||l_v_sql);
    FOR idx IN i_r_vars.first .. i_r_vars.last
    LOOP
      l_v_sql := REPLACE(l_v_sql, ':'||i_r_vars(idx).code, CASE
          WHEN i_r_vars(idx).val IS NULL THEN 'NULL'
          WHEN i_r_vars(idx).data_type = 'TEXT' THEN ''''||i_r_vars(idx).val||''''
          WHEN i_r_vars(idx).data_type = 'NUMBER' THEN i_r_vars(idx).val
          ELSE i_r_vars(idx).val
          END);    
    END LOOP;
    --  dbms_output.put_line('l_v_sql2 = '||l_v_sql);
    EXECUTE 
      IMMEDIATE l_v_sql
           INTO l_n_ans;        
    IF l_n_ans = 1 THEN            
      RETURN TRUE;
    END IF;
    RETURN FALSE;
  EXCEPTION WHEN no_data_found THEN
    RETURN FALSE;
  END; 
  
  /**
  * ���������� ��������������� ��������� ��� ����������� ����
  */
  FUNCTION steps#is_visible(i_n_step_id IN VARCHAR2, i_r_step_st_types IN l_t_types)
  RETURN BOOLEAN 
  IS
    l_n_object_statements_id number;
  BEGIN  
    SELECT ots.OBJECT_STATEMENTS_ID
      INTO l_n_object_statements_id
      FROM GPN_OIM.ITSK_OBJECT_TYPE_STATEMENTS ots 
     WHERE ots.OBJECT_TYPES_ID = 1 
       AND ots.OBJECT_REF_ID = i_n_step_id;
    FOR idx IN i_r_step_st_types.first .. i_r_step_st_types.last 
    LOOP
      IF i_r_step_st_types(idx).id = l_n_object_statements_id THEN
        RETURN (CASE WHEN i_r_step_st_types(idx).value=1 THEN TRUE ELSE FALSE END);
      END IF;
    END LOOP;
    RETURN TRUE;
  EXCEPTION WHEN no_data_found THEN
    RETURN TRUE;
  END;
  
  /**
  * ���������� ������� �������� �� ����������� ITSK_OBJECT_STATEMENTS
  */
  FUNCTION routes#calc_statements(i_r_vars IN l_t_vars)
  RETURN l_t_types
  IS
    l_r_route_types l_t_types;
  BEGIN
    l_r_route_types := l_t_types();
    FOR j in (select st.* 
                from ITSK_OBJECT_STATEMENTS st)
      LOOP        
        IF j.value = 1 THEN
          l_r_route_types.extend();
          l_r_route_types(l_r_route_types.count) := j;
          l_r_route_types(l_r_route_types.count).value := 1;
        ELSIF j.value = 0 THEN
          l_r_route_types.extend();
          l_r_route_types(l_r_route_types.count) := j;
          l_r_route_types(l_r_route_types.count).value := 0;          
        ELSIF calc(j.expression, i_r_vars) THEN
          l_r_route_types.extend();
          l_r_route_types(l_r_route_types.count) := j;
          l_r_route_types(l_r_route_types.count).value := 1;
        ELSE
          l_r_route_types.extend();
          l_r_route_types(l_r_route_types.count) := j;
          l_r_route_types(l_r_route_types.count).value := 0;        
        END IF; 
      --dbms_output.put_line(j.name || ' = ' || l_r_route_types(l_r_route_types.count).value);
    END LOOP;
    RETURN l_r_route_types;
  END;  
  
  /**
  * 
  */
  FUNCTION routes#statements_val(i_v_code IN VARCHAR2, i_r_route_types IN l_t_types)
  RETURN NUMBER
  IS
  BEGIN
    FOR idx IN i_r_route_types.first .. i_r_route_types.last 
    LOOP
      IF i_v_code = i_r_route_types(idx).name THEN
        RETURN i_r_route_types(idx).value;
      END IF;
    END LOOP;
    RETURN 0;
    --RAISE_APPLICATION_ERROR(-20343, 'Not found variable!');
  END;  

  /**
  * ����� ���� �������� �� ����������� ITSK_OBJECT_TYPE_STATEMENTS
  */
  FUNCTION routes#get_types_id(i_r_route_types IN l_t_types) 
  RETURN NUMBER
  IS
    l_n_route_type_id NUMBER;
  BEGIN
        if (routes#statements_val('Tndr', i_r_route_types) = 1) then
          l_n_route_type_id := l_n_default_route_types_id;
        elsif (routes#statements_val('Verification', i_r_route_types) = 1) then
          l_n_route_type_id := l_n_default_route_types_id;
        elsif (routes#statements_val('ModifyAccount', i_r_route_types) = 1) then
            l_n_route_type_id := l_n_default_route_types_id;
        elsif (routes#statements_val('ServiceAccount_AccessRequestOrServiceAccount_ModifyAccessGrant', i_r_route_types) = 1) then
          begin
            l_n_route_type_id := l_n_default_route_types_id;
          end;
        elsif (routes#statements_val('ServiceAccount_DeleteAccessGrant', i_r_route_types) = 1) then
          l_n_route_type_id := l_n_default_route_types_id;
        elsif (routes#statements_val('DeleteAccountAccessOrDeleteAccessGrant', i_r_route_types) = 1) then
          l_n_route_type_id := l_n_default_route_types_id;
        elsif (routes#statements_val('ModifyAccountAccess', i_r_route_types) = 1) then
          l_n_route_type_id := l_n_default_route_types_id;
        elsif (routes#statements_val('ReviewAccess', i_r_route_types) = 1) then
          if (routes#statements_val('SystemEnvironmentChange', i_r_route_types) = 1) then
            if (routes#statements_val('is_sap_resource_access', i_r_route_types) = 1) then
              l_n_route_type_id:=46;
            elsif (routes#statements_val('is_1c_resource_access', i_r_route_types) = 1) then
              l_n_route_type_id:=47;
            else
              l_n_route_type_id:=48;
            end if;
          else
            l_n_route_type_id := l_n_default_route_types_id;
          end if;
        elsif (routes#statements_val('ConfItemAccessRequest', i_r_route_types) = 1) then
          l_n_route_type_id := l_n_default_route_types_id;
        elsif (routes#statements_val('AccessRequestOrModifyAccessGrant', i_r_route_types) = 1) then
            if (routes#statements_val('Role', i_r_route_types) = 1) then
                if (routes#statements_val('KT040Admin', i_r_route_types) = 1) then
                  l_n_route_type_id := 49;
                elsif (routes#statements_val('ConfRespSecondaryOrConfResp', i_r_route_types) = 1) then
                  l_n_route_type_id := 50;
                elsif (routes#statements_val('WorkWithSpecAcc', i_r_route_types) = 1) then
                  l_n_route_type_id := 101;
                elsif (routes#statements_val('KDPRoleAccessRequest', i_r_route_types) = 1) then
                  l_n_route_type_id := 102;
                else
                  l_n_route_type_id := 51;
                end if;
            elsif (routes#statements_val('exchange_app_instance', i_r_route_types) = 1) then
              l_n_route_type_id := 53;
            else
                if (routes#statements_val('is_sap_resource_access', i_r_route_types) = 1) then
                  if (routes#statements_val('RequestBasedOnPaper', i_r_route_types) = 1) then
                    l_n_route_type_id := 54;
                  else
                    l_n_route_type_id := 55; --AccessRequestOrModifyAccessGrantAndnotRequestBasedOnPaperAndisSAP
                  end if;
                else
                    if (routes#statements_val('notResourceAccess', i_r_route_types) = 1) then
                      l_n_route_type_id := 56;
                    else
                      if (routes#statements_val('is_1c_resource_access', i_r_route_types) = 1) then
                        l_n_route_type_id := 58;
                      else
                        l_n_route_type_id := l_n_default_route_types_id;
                      end if;
                    end if;
                end if;
            end if;
        elsif (routes#statements_val('ModifyResource', i_r_route_types) = 1) then
          if (routes#statements_val('isSAPAndkt09_admin', i_r_route_types) = 1) then
            l_n_route_type_id := 62;
          else
            l_n_route_type_id := l_n_default_route_types_id;  
          end if;
        elsif (routes#statements_val('ResourceCreation', i_r_route_types) = 1) then
          l_n_route_type_id := l_n_default_route_types_id;
        elsif (routes#statements_val('AccountAccess', i_r_route_types) = 1) then
          l_n_route_type_id := l_n_default_route_types_id;
        elsif (routes#statements_val('AccountCreationAndAccountCreation', i_r_route_types) = 1) then
          if (routes#statements_val('SAPattr', i_r_route_types) = 1) then
            if (routes#statements_val('AccountTypeFF', i_r_route_types) = 1) then
              l_n_route_type_id := 68;
            else
              l_n_route_type_id := 69;
            end if;
          else
              l_n_route_type_id := 70;
          end if;
        elsif (routes#statements_val('AccountCreationAndResourceAccess', i_r_route_types) = 1) then
          l_n_route_type_id := 82;
        end if;  
    return l_n_route_type_id;
  END;  
  
  
  /**
  * ��������� ���������� � ����������� �� ���� �������� ������
  */ 
  FUNCTION setctx(i_n_idm_request_id IN NUMBER) 
  RETURN l_t_ctx
  IS
    l_r_ctx l_t_ctx;
    l_n_request_item_types_id NUMBER;
    CURSOR l_cr_context(i_n_request_item_types_id IN NUMBER) IS
    SELECT itc.ITSK_APPROVAL_ROUTES_CTX_ID, itc.EXPRESSION, NULL AS val FROM 
        GPN_OIM.ITSK_REQUEST_ITEM_TYPES_CTX itc join GPN_OIM.ITSK_APPROVAL_ROUTES_CONTEXT c on (c.ID = itc.ITSK_APPROVAL_ROUTES_CTX_ID)
        WHERE itc.REQUEST_ITEM_TYPES_ID = i_n_request_item_types_id
        and itc.EXPRESSION IS NOT NULL
        ORDER BY c.WEIGHT asc;
            
  BEGIN
    SELECT rit.id 
    INTO l_n_request_item_types_id
    FROM GPN_OIM.ITSK_REQUEST_ITEM_TYPES rit 
    JOIN gpn_oim.z_request_item i on (i.ITEM_TYPE = rit.code) 
    WHERE i.IDM_REQUEST_ID = to_char(i_n_idm_request_id);
  
    OPEN l_cr_context(l_n_request_item_types_id);
    FETCH l_cr_context BULK COLLECT INTO l_r_ctx;
    CLOSE l_cr_context;
    
    IF l_r_ctx.count = 0 THEN
      RETURN l_r_ctx;
    END IF;
    
    FOR idx IN l_r_ctx.first .. l_r_ctx.last 
    LOOP
      BEGIN
        EXECUTE 
            IMMEDIATE l_r_ctx(idx).expression 
                 INTO l_r_ctx(idx).val 
                USING i_n_idm_request_id;
      EXCEPTION WHEN no_data_found THEN
        l_r_ctx(idx).val:=NULL;
      END;
    END LOOP;
    RETURN l_r_ctx;    
  END;
         
  PROCedure init
  is 
  begin
    --������������� ��������� ��������
    SELECT ID 
        INTO l_n_default_route_types_id 
        FROM gpn_oim.itsk_approval_route_types 
        WHERE code='Blank';  
      --
    SELECT ID 
        INTO l_n_default_route_contexts_id 
        FROM gpn_oim.itsk_approval_routes_context 
        WHERE code='Blank';
    
  end;
       
BEGIN
  init;
  --0. ���������� ��������� �������� � ���������
  l_r_vars := setenv(i_n_idm_process_id);
  l_r_ctx := setctx(i_n_idm_process_id);
  l_r_st_types := routes#calc_statements(l_r_vars);
  l_n_approval_route_types_id := routes#get_types_id(l_r_st_types);         
  --    l_n_approval_route_types_id:= routes#approval_route_types_id(l_r_vars);
  --1. ���������� ��������� �������� ��� ���� ��������, ���������
  l_n_approval_route_types_id := COALESCE(l_n_approval_route_types_id, l_n_default_route_types_id);
  l_n_approval_route_contexts_id := l_n_default_route_contexts_id;
        
  l_n_item_type := to_number(setenv#get('reqItemTypeId', l_r_vars));
  l_n_request_type_id := to_number(setenv#get('reqTypeId', l_r_vars));
        
  --    dbms_output.put_line('l_n_approval_route_types_id='||l_n_approval_route_types_id
  --    ||', i_n_request_type_id='||i_n_request_type_id);

  --2. ������� ����� ��     
  OPEN l_cr_common_steps(l_n_request_type_id, l_n_item_type, l_n_approval_route_types_id);
  FETCH l_cr_common_steps BULK COLLECT INTO l_r_approval_steps_com_route;
  CLOSE l_cr_common_steps;
        
  IF l_r_approval_steps_com_route.count = 0 THEN
    raise_application_error(-20205, 'Common route is empty!');
  END IF;
        
  --3. ������� ����� �� �� ��������� ��������� �/-��� ���� ��������
  IF l_r_ctx.count > 0 THEN
    FOR idx IN l_r_ctx.first .. l_r_ctx.last LOOP
  --        --dbms_output.put_line ('l_r_ctx(idx).context_id = '||l_r_ctx(idx).context_id
  --        || ', l_r_ctx(idx).val = '||l_r_ctx(idx).val);
      OPEN l_cr_indiv_steps(l_n_request_type_id, l_n_item_type, l_n_approval_route_types_id, l_r_ctx(idx).context_id, l_r_ctx(idx).val);
      FETCH l_cr_indiv_steps BULK COLLECT INTO l_r_approval_steps_ind_route;
      CLOSE l_cr_indiv_steps;
      IF l_r_approval_steps_ind_route.count > 0 THEN
        EXIT;
      END IF;
    END LOOP;
  END IF;
        
  --    --dbms_output.put_line('l_r_approval_steps_com_route.count = ' || l_r_approval_steps_com_route.count);
  --    if l_r_approval_steps_ind_route is not null then
  --    --dbms_output.put_line('l_r_approval_steps_ind_route.count = ' || l_r_approval_steps_ind_route.count);
  --    end if;
            
        
  --4. ��������� �� � �� ���������� ����������,
  if l_r_approval_steps_ind_route is null then
    l_r_approval_steps := l_r_approval_steps_com_route;
  elsif l_r_approval_steps_ind_route.count = 0 then
    l_r_approval_steps := l_r_approval_steps_com_route;
  else 
    l_r_approval_steps := routes#merge(l_r_approval_steps_com_route, l_r_approval_steps_ind_route);
  end if;
        
  --5. �������� ������� ��� ������
  for idx in l_r_approval_steps.first..l_r_approval_steps.last
  loop
    if steps#is_visible(l_r_approval_steps(idx).id, l_r_st_types) then
      l_v_route:=l_v_route || l_r_approval_steps(idx).code || '|' ;
    end if;
  end loop;    
  l_v_route:=RTRIM(l_v_route, '|');
        
        
  --  dbms_output.put_line('l_v_route = ' || l_v_route);    
  return l_v_route;
END ITSK_APPROVAL_ROUTES_FNC;
/


--rollback DROP FUNCTION GPN_OIM.ITSK_APPROVAL_ROUTES_FNC;
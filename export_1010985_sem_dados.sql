--------------------------------------------------------
--  File created - Quinta-feira-Maio-07-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for DB Link OLTP_LINK_SCOTT.REGRESS.RDBMS.DEV.US.ORACLE.COM
--------------------------------------------------------

  CREATE DATABASE LINK "OLTP_LINK_SCOTT.REGRESS.RDBMS.DEV.US.ORACLE.COM"
   CONNECT TO "SCOTT" IDENTIFIED BY VALUES '056BF08D92D063CC3C9F99D05777A03385'
   USING 'oltp';
--------------------------------------------------------
--  DDL for DB Link OLTP_LINK_2015.REGRESS.RDBMS.DEV.US.ORACLE.COM
--------------------------------------------------------

  CREATE DATABASE LINK "OLTP_LINK_2015.REGRESS.RDBMS.DEV.US.ORACLE.COM"
   CONNECT TO "OLTP_QUERY" IDENTIFIED BY VALUES '052C3C0BB1273468FD0053B165C157F7C5A110D952709584C2'
   USING 'oltp';
--------------------------------------------------------
--  DDL for Sequence SEQ_LOG_ERRORS
--------------------------------------------------------

   CREATE SEQUENCE  "BDII_1010985"."SEQ_LOG_ERRORS"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_PROMOTIONS
--------------------------------------------------------

   CREATE SEQUENCE  "BDII_1010985"."SEQ_PROMOTIONS"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_PROMOTION_TYPE
--------------------------------------------------------

   CREATE SEQUENCE  "BDII_1010985"."SEQ_PROMOTION_TYPE"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_VENDAS
--------------------------------------------------------

   CREATE SEQUENCE  "BDII_1010985"."SEQ_VENDAS"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1040 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table LOG_ERRORS
--------------------------------------------------------

  CREATE TABLE "BDII_1010985"."LOG_ERRORS" 
   (	"ERROR_ID_SK" NUMBER, 
	"ERROR_CODE" NUMBER, 
	"ERROR_MSG" VARCHAR2(200 BYTE), 
	"OPERATION_NAME" VARCHAR2(30 BYTE), 
	"OPERATION_DESC" VARCHAR2(200 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROMOTIONS
--------------------------------------------------------

  CREATE TABLE "BDII_1010985"."PROMOTIONS" 
   (	"ID_PROMOTION" NUMBER(8,0), 
	"ID_PROMOTION_TYPE" NUMBER(8,0), 
	"PROMOTION" VARCHAR2(50 BYTE), 
	"DATE_START" DATE, 
	"DATE_END" DATE, 
	"DISCOUNT" NUMBER(3,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROMOTIONS_PRODUCTS
--------------------------------------------------------

  CREATE TABLE "BDII_1010985"."PROMOTIONS_PRODUCTS" 
   (	"ID_PROMOTION" NUMBER(8,0), 
	"ID_PRODUCT" NUMBER(8,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROMOTION_TYPES
--------------------------------------------------------

  CREATE TABLE "BDII_1010985"."PROMOTION_TYPES" 
   (	"ID_PROMOTION_TYPE" NUMBER(8,0), 
	"PROMOTION_TYPE" VARCHAR2(50 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into BDII_1010985.LOG_ERRORS
SET DEFINE OFF;
REM INSERTING into BDII_1010985.PROMOTIONS
SET DEFINE OFF;


--------------------------------------------------------
--  DDL for Index ID_PROMOTION_PRODUCTS_PF
--------------------------------------------------------

  CREATE UNIQUE INDEX "BDII_1010985"."ID_PROMOTION_PRODUCTS_PF" ON "BDII_1010985"."PROMOTIONS_PRODUCTS" ("ID_PROMOTION", "ID_PRODUCT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ID_PROMOTION_TYPE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BDII_1010985"."ID_PROMOTION_TYPE_PK" ON "BDII_1010985"."PROMOTION_TYPES" ("ID_PROMOTION_TYPE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LOG_ERRORS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BDII_1010985"."LOG_ERRORS_PK" ON "BDII_1010985"."LOG_ERRORS" ("ERROR_ID_SK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ID_PROMOTION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BDII_1010985"."ID_PROMOTION_PK" ON "BDII_1010985"."PROMOTIONS" ("ID_PROMOTION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table PROMOTIONS_PRODUCTS
--------------------------------------------------------

  ALTER TABLE "BDII_1010985"."PROMOTIONS_PRODUCTS" ADD CONSTRAINT "ID_PROMOTION_PRODUCTS_PF" PRIMARY KEY ("ID_PROMOTION", "ID_PRODUCT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "BDII_1010985"."PROMOTIONS_PRODUCTS" MODIFY ("ID_PROMOTION" NOT NULL ENABLE);
 
  ALTER TABLE "BDII_1010985"."PROMOTIONS_PRODUCTS" MODIFY ("ID_PRODUCT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LOG_ERRORS
--------------------------------------------------------

  ALTER TABLE "BDII_1010985"."LOG_ERRORS" ADD CONSTRAINT "LOG_ERRORS_PK" PRIMARY KEY ("ERROR_ID_SK")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "BDII_1010985"."LOG_ERRORS" MODIFY ("ERROR_ID_SK" NOT NULL ENABLE);
 
  ALTER TABLE "BDII_1010985"."LOG_ERRORS" MODIFY ("ERROR_CODE" NOT NULL ENABLE);
 
  ALTER TABLE "BDII_1010985"."LOG_ERRORS" MODIFY ("ERROR_MSG" NOT NULL ENABLE);
 
  ALTER TABLE "BDII_1010985"."LOG_ERRORS" MODIFY ("OPERATION_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROMOTIONS
--------------------------------------------------------

  ALTER TABLE "BDII_1010985"."PROMOTIONS" ADD CONSTRAINT "ID_PROMOTION_PK" PRIMARY KEY ("ID_PROMOTION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "BDII_1010985"."PROMOTIONS" MODIFY ("ID_PROMOTION" NOT NULL ENABLE);
 
  ALTER TABLE "BDII_1010985"."PROMOTIONS" MODIFY ("ID_PROMOTION_TYPE" NOT NULL ENABLE);
 
  ALTER TABLE "BDII_1010985"."PROMOTIONS" MODIFY ("PROMOTION" NOT NULL ENABLE);
 
  ALTER TABLE "BDII_1010985"."PROMOTIONS" MODIFY ("DATE_START" NOT NULL ENABLE);
 
  ALTER TABLE "BDII_1010985"."PROMOTIONS" MODIFY ("DATE_END" NOT NULL ENABLE);
 
  ALTER TABLE "BDII_1010985"."PROMOTIONS" MODIFY ("DISCOUNT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROMOTION_TYPES
--------------------------------------------------------

  ALTER TABLE "BDII_1010985"."PROMOTION_TYPES" ADD CONSTRAINT "ID_PROMOTION_TYPE_PK" PRIMARY KEY ("ID_PROMOTION_TYPE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "BDII_1010985"."PROMOTION_TYPES" MODIFY ("ID_PROMOTION_TYPE" NOT NULL ENABLE);
 
  ALTER TABLE "BDII_1010985"."PROMOTION_TYPES" MODIFY ("PROMOTION_TYPE" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table PROMOTIONS
--------------------------------------------------------

  ALTER TABLE "BDII_1010985"."PROMOTIONS" ADD CONSTRAINT "ID_PROMOTION_TYPE_FK" FOREIGN KEY ("ID_PROMOTION_TYPE")
	  REFERENCES "BDII_1010985"."PROMOTION_TYPES" ("ID_PROMOTION_TYPE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROMOTIONS_PRODUCTS
--------------------------------------------------------

  ALTER TABLE "BDII_1010985"."PROMOTIONS_PRODUCTS" ADD CONSTRAINT "ID_PROMOTION_FK" FOREIGN KEY ("ID_PROMOTION")
	  REFERENCES "BDII_1010985"."PROMOTIONS" ("ID_PROMOTION") ENABLE;
--------------------------------------------------------
--  DDL for Trigger ID_PROMOTIONS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BDII_1010985"."ID_PROMOTIONS" 
  before insert on promotions
  for each row
  Begin
  select seq_promotions.nextval
  into :new.id_promotion from dual;
end;
/
ALTER TRIGGER "BDII_1010985"."ID_PROMOTIONS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ID_PROMOTION_TYPES
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BDII_1010985"."ID_PROMOTION_TYPES" 
  before insert on promotion_types
  for each row
  Begin
  select seq_promotion_type.nextval
  into :new.id_promotion_type from dual;
end;
/
ALTER TRIGGER "BDII_1010985"."ID_PROMOTION_TYPES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIGGER_LOG_ERRORS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BDII_1010985"."TRIGGER_LOG_ERRORS" 
before insert on log_errors
for each row
begin
  select seq_log_errors.nextval into :new.error_id_sk from dual;
end;
/
ALTER TRIGGER "BDII_1010985"."TRIGGER_LOG_ERRORS" ENABLE;
--------------------------------------------------------
--  DDL for Function CAL_IDADE_CLASSE
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "BDII_1010985"."CAL_IDADE_CLASSE" (year number,month number) return varchar2 as
idade number;
classe varchar2(255);
idade_data date;
begin
    idade_data:= (last_day( to_date( to_char(year) || '-' || to_char(month),'yyyy-mm')));
    idade:= trunc(months_between(sysdate,idade_data)/12,0);
    --dbms_output.put_line(idade);
    select classe || ' : ' || minimo || ' - ' || maximo into classe from BDII_1010834.classe_idade where minimo<=idade and idade<=maximo;
    return classe;
end;

/
--------------------------------------------------------
--  DDL for Function GENERATE_RANDOM_DATE
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "BDII_1010985"."GENERATE_RANDOM_DATE" return date is
  v_date date;
begin
  select to_date(
    trunc(
      dbms_random.value(
        to_char(date '2015-01-01', 'J')
        ,to_char(date '2015-03-16', 'J')
      )
    ),'J'
  ) into v_date from dual;
  return v_date;
end;

/
--------------------------------------------------------
--  DDL for Function GET_CLASSE_SALARIO
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "BDII_1010985"."GET_CLASSE_SALARIO" (salario number) return varchar2 is
  cursor cursor_classe_salario is
    select id_classe, classe from BDII_1010834.classe_salario;
  var_classe varchar2(50); -- texto da classe (ex.: B: 30000 - 49999)
  var_classe_temp varchar2(50);
  var_valor_max number; -- valor máximo
  var_id_classe number; -- id da classe
  var_salario_anual number; -- salario * 12
begin
  var_salario_anual := salario*12;
  --dbms_output.put_line(var_salario_anual);
  open cursor_classe_salario;
  loop
    fetch cursor_classe_salario into var_id_classe, var_classe;
    exit when cursor_classe_salario%NOTFOUND;
    var_classe_temp := replace(var_classe, ',', '');
    if (instr(var_classe_temp, 'Below') > 0) then
      -- é o 1º registo
      var_valor_max := to_number(substr(var_classe_temp,(instr(var_classe_temp, 'Below')+6)));
    else if (instr(var_classe_temp, ' and above') > 0) then
      -- é o último registo
      var_valor_max := 999999999;
    else
      --é um registo intermédio 
      var_valor_max := to_number(substr(var_classe_temp,  instr(var_classe_temp, '-')+2));
    end if;
    end if;
    --dbms_output.put_line('var_valor_max -> ' || var_valor_max);
    if (not(var_salario_anual > var_valor_max)) then
      --dbms_output.put_line(var_valor_max || ' | ' || var_classe );
      exit;
    end if;
    
  end loop;
  close cursor_classe_salario;
  RETURN var_classe;
end;

/
--------------------------------------------------------
--  DDL for Function GET_DISCOUNT
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "BDII_1010985"."GET_DISCOUNT" (id_promotion number) return number is
v_prod_id number(6,0);
v_quantity_sold number(3,0);
v_amount_sold number(10,2);
v_prod_list_price number(8,2);
begin
  select quantity_sold, amount_sold, prod_id into v_quantity_sold, v_amount_sold, v_prod_id from sales where promotion_id=id_promotion and rownum=1;
  select prod_list_price into v_prod_list_price from products where prod_id=v_prod_id;
  return 1 - ((v_amount_sold / v_quantity_sold) / v_prod_list_price);
end;

/
--------------------------------------------------------
--  DDL for Function GET_MANHA_TARDE
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "BDII_1010985"."GET_MANHA_TARDE" 
(DataHora IN date)
return integer
is

begin
  if (to_number(to_char(DataHora, 'hh24')) < 12) then
    return 0;
  else
    return 1;
  end if;
end;

/
--------------------------------------------------------
--  DDL for Function GET_MAX_DATE
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "BDII_1010985"."GET_MAX_DATE" (id_promotion number) return date is
v_date date;
begin
  select max(sale_date) into v_date from sales where promotion_id=id_promotion;
  return v_date;
end;

/
--------------------------------------------------------
--  DDL for Function GET_MIN_DATE
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "BDII_1010985"."GET_MIN_DATE" (id_promotion number) return date is
v_date date;
begin
  select min(sale_date) into v_date from sales where promotion_id=id_promotion;
  return v_date;
end;

/
--------------------------------------------------------
--  DDL for Function REPLACE_DECIMAL
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "BDII_1010985"."REPLACE_DECIMAL" 
  (valor_em_texto varchar2) 
  return number is
  begin
    return to_number(replace(valor_em_texto, '.', ','));
  end;

/
--------------------------------------------------------
--  DDL for Procedure CREATE_DUMMY_PROMO_PRODUCTS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "BDII_1010985"."CREATE_DUMMY_PROMO_PRODUCTS" is
  v_promotion_id number;
  v_prod_id number(6,0);
  cursor c_sales is
  select prod_id, promotion_id
    from sales
    where promotion_id is not null
    group by (prod_id, promotion_id);
begin
  open c_sales;
  loop
    fetch c_sales into v_prod_id, v_promotion_id;
    exit when c_sales%notfound;
    insert into promotions_products values (v_promotion_id, v_prod_id);
  end loop;
  close c_sales;
end;

/
--------------------------------------------------------
--  DDL for Procedure CREATE_DUMMY_PROMOS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "BDII_1010985"."CREATE_DUMMY_PROMOS" is
  v_data_inicio date;
  v_data_fim date;
  v_discount number;
  v_loop number;
  begin
  v_loop := 1;
  while(v_loop<=34)
  loop
      v_data_inicio := get_min_date(v_loop);
      v_data_fim := get_max_date(v_loop);
      v_discount := get_discount(v_loop) * 100;
      insert into promotions (id_promotion_type, promotion, date_start, date_end, discount) 
      values (dbms_random.value(1, 4), 'Promo_'||dbms_random.string('a', 10), v_data_inicio, v_data_fim, v_discount);
      v_loop := v_loop+1;
  end loop;
end;

/
--------------------------------------------------------
--  DDL for Procedure CREATE_DUMMY_PROMO_TYPES
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "BDII_1010985"."CREATE_DUMMY_PROMO_TYPES" is
begin
  insert into promotion_types (promotion_type) values ('Cupões');
  insert into promotion_types (promotion_type) values ('Desconto direto');
  insert into promotion_types (promotion_type) values ('Cartão oferta');
  insert into promotion_types (promotion_type) values ('Cartão cliente');
end;

/
--------------------------------------------------------
--  DDL for Procedure LOAD_CHANNELS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "BDII_1010985"."LOAD_CHANNELS" is
begin
  insert into BDII_1010834.dim_canais (id_canal, descricao, classe, custo_venda) 
    select upper(channel_id), channel_desc, channel_class, cost_sale_pct from channels
    minus
    select id_canal, descricao, classe, custo_venda from BDII_1010834.dim_canais;
  commit;
end;

/
--------------------------------------------------------
--  DDL for Procedure LOAD_CLIENTES
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "BDII_1010985"."LOAD_CLIENTES" 
IS
  CURSOR cursor_mini
  IS
    SELECT cust.cust_id,
      cust.cust_first_name,
      cust.cust_last_name,
      cust.cust_gender,
      cust.cust_year_of_birth,
      cust.cust_marital_status,
      cust.cust_street_address,
      cust.cust_main_phone_number,
      cust.cust_income_level,
      cust.cust_credit_limit,
      cust.cust_total,
      cust.cust_month_of_birth,
      city.city,
      state.state_province,
      country.country_name,
      sub.country_subregion,
      reg.country_region
    FROM oltp2015.customers@oltp_link_2015 cust
    INNER JOIN oltp2015.cities@oltp_link_2015 city
    ON cust.cust_city = city.city_id
    INNER JOIN oltp2015.state_provinces@oltp_link_2015 state
    ON city.state_province = state.state_province_id
    INNER JOIN oltp2015.countries@oltp_link_2015 country
    ON state.country = country.country_id
    INNER JOIN oltp2015.country_subregions@oltp_link_2015 sub
    ON country.country_subregion = sub.country_subregion_id
    INNER JOIN oltp2015.country_regions@oltp_link_2015 reg
    ON sub.country_region = reg.country_region_id;
  varid oltp2015.customers.cust_id@oltp_link_2015%TYPE;
  varfirst oltp2015.customers.cust_first_name@oltp_link_2015%TYPE;
  varlast oltp2015.customers.cust_last_name@oltp_link_2015%TYPE;
  vargender oltp2015.customers.cust_gender@oltp_link_2015%TYPE;
  varyear oltp2015.customers.cust_year_of_birth@oltp_link_2015%TYPE;
  varmarital oltp2015.customers.cust_marital_status@oltp_link_2015%TYPE;
  varstreet oltp2015.customers.cust_street_address@oltp_link_2015%TYPE;
  varphone oltp2015.customers.cust_main_phone_number@oltp_link_2015%TYPE;
  varincome oltp2015.customers.cust_income_level@oltp_link_2015%TYPE;
  varcredit oltp2015.customers.cust_credit_limit@oltp_link_2015%TYPE;
  vartotal oltp2015.customers.cust_total@oltp_link_2015%TYPE;
  varmonth oltp2015.customers.cust_month_of_birth@oltp_link_2015%TYPE;
  varcity oltp2015.cities.city@oltp_link_2015%TYPE;
  varstate oltp2015.state_provinces.state_province@oltp_link_2015%TYPE;
  varcountry oltp2015.countries.country_name@oltp_link_2015%TYPE;
  varsub oltp2015.country_subregions.country_subregion@oltp_link_2015%TYPE;
  varreg oltp2015.country_regions.country_region@oltp_link_2015%TYPE;
  varidade VARCHAR2(50);
  minisurr NUMBER;
  datan    VARCHAR2(50);
  nome     VARCHAR2(255);
BEGIN
  OPEN cursor_mini;
  LOOP
    FETCH cursor_mini
    INTO varid,
      varfirst,
      varlast,
      vargender,
      varyear,
      varmarital,
      varstreet,
      varphone,
      varincome,
      varcredit,
      vartotal,
      varmonth,
      varcity,
      varstate,
      varcountry,
      varsub,
      varreg;
    EXIT
  WHEN cursor_mini%NOTFOUND;
    varidade      :=cal_idade_classe(varyear,varmonth);
    IF varmarital IS NULL THEN
      varmarital  :='N';
    END IF;
    SELECT COUNT(surr_mini_cliente)
    INTO minisurr
    FROM BDII_1010834.mini_dim_clientes
    WHERE idade_classe=varidade
    AND genero        = vargender
    AND estado_civil  =varmarital
    AND salario_classe=varincome
    AND cidade        =varcity
    AND provincia     =varstate
    AND pais          =varcountry
    AND sub_regiao    =varsub
    AND regiao        = varreg;
    IF minisurr       <1 THEN
      INSERT
      INTO BDII_1010834.mini_dim_clientes
        (
          idade_classe,
          genero,
          estado_civil,
          salario_classe,
          cidade,
          provincia,
          pais,
          sub_regiao,
          regiao
        )
        VALUES
        (
          varidade,
          vargender,
          varmarital,
          varincome,
          varcity,
          varstate,
          varcountry,
          varsub,
          varreg
        );
        
      SELECT MAX(surr_mini_cliente) INTO minisurr FROM BDII_1010834.mini_dim_clientes;
    ELSE
      SELECT surr_mini_cliente
      INTO minisurr
      FROM BDII_1010834.mini_dim_clientes
      WHERE idade_classe=varidade
      AND genero        = vargender
      AND estado_civil  =varmarital
      AND salario_classe=varincome
      AND cidade        =varcity
      AND provincia     =varstate
      AND pais          =varcountry
      AND sub_regiao    =varsub
      AND regiao        = varreg;
    END IF;
    datan   := varyear || '/' || varmonth;
    nome    := varfirst || ' ' || varlast;
    --vartotal:=REPLACE(TO_CHAR(vartotal),'.',',');
    vartotal := replace_decimal(vartotal);
    INSERT
    INTO BDII_1010834.dim_clientes
      (
        id_cliente,
        data_nascimento,
        limite_credito,
        custo_total,
        fk_mini_cliente,
        nome
      )
      VALUES
      (
        varid,
        datan,
        varcredit,
        vartotal,
        minisurr,
        nome
      );
      
  END LOOP;
  COMMIT;
  CLOSE cursor_mini;
END;

/
--------------------------------------------------------
--  DDL for Procedure LOAD_COMPRAS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "BDII_1010985"."LOAD_COMPRAS" 
IS
BEGIN
  INSERT
  INTO BDII_1010834.fac_compras
    (
      surr_tempo,
      surr_empregado,
      surr_produto,
      surr_fornecedor,
      custo_unitario,
      preco_unitario,
      quantidade,
      custo_total,
      preco_total
    )
  SELECT dim_tempo.surr_tempo,
    dim_empregados.surr_empregado,
    dim_produtos.surr_produto,
    dim_fornecedores.surr_fornecedor,
    buys_oltp.unit_cost,
    buys_oltp.unit_price,
    SUM(buys_oltp.quantity_bought),
    SUM(buys_oltp.unit_cost  * buys_oltp.quantity_bought),
    SUM(buys_oltp.unit_price * buys_oltp.quantity_bought)
  FROM oltp2015.buys@oltp_link_2015 buys_oltp
  INNER JOIN bdii_1010834.dim_produtos dim_produtos
  ON dim_produtos.id_produto = buys_oltp.prod_id
  INNER JOIN BDII_1010834.dim_fornecedores dim_fornecedores
  ON dim_fornecedores.id_fornecedor = buys_oltp.supplier_id
  INNER JOIN bdii_1010834.dim_tempo dim_tempo
  ON dim_tempo.dia       = to_number(TO_CHAR(buys_oltp.buy_date, 'DD'))
  AND dim_tempo.mes      = to_number(TO_CHAR(buys_oltp.buy_date, 'MM'))
  AND dim_tempo.ano      = to_number(TO_CHAR(buys_oltp.buy_date, 'YYYY'))
  AND dim_tempo.de_manha = get_manha_tarde(buys_oltp.buy_date)
  INNER JOIN BDII_1010834.dim_empregados dim_empregados
  ON dim_empregados.id_empregado = buys_oltp.employee_id
--  WHERE buys_oltp.prod_id        =3845
--  AND buys_oltp.supplier_id     <=1
  GROUP BY (
    dim_tempo.surr_tempo,
    dim_empregados.surr_empregado,
    dim_produtos.surr_produto,
    dim_fornecedores.surr_fornecedor,
    buys_oltp.unit_cost,
    buys_oltp.unit_price
  );
  COMMIT;
END;

/
--------------------------------------------------------
--  DDL for Procedure LOAD_EMPREGADOS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "BDII_1010985"."LOAD_EMPREGADOS" is

begin
  insert into BDII_1010834.dim_empregados 
    (
      id_empregado, 
      comissao, 
      nome, 
      data_contrato, 
      trabalho, 
      chefe, 
      salario_classe
    )
    select emp.employee_id, 
      emp.commission_pct, 
      emp.first_name || ' ' || emp.last_name, 
      emp.hire_date,
      emp.job_id,
      chefe.first_name || ' ' || chefe.last_name, 
      get_classe_salario(emp.salary) 
      from BDII_1010832.employees chefe
      right join BDII_1010832.employees emp
      on chefe.employee_id = emp.manager_id
      ;    
  commit;
end;

/
--------------------------------------------------------
--  DDL for Procedure LOAD_FAC_PROMOCOES
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "BDII_1010985"."LOAD_FAC_PROMOCOES" 
IS
  error_code     number;
  error_msg      varchar2(255);
BEGIN
  INSERT
  INTO BDII_1010834.fac_promocoes
    (
      surr_produto,
      surr_tempo,
      surr_promocao
    )
  SELECT dim_produtos.surr_produto,
    dim_tempo.surr_tempo,
    dim_promocoes.surr_promocao
  FROM oltp2015.products@oltp_link_2015 products
  INNER JOIN promotions_products
  ON promotions_products.id_product = products.prod_id
  INNER JOIN promotions
  ON promotions.id_promotion = promotions_products.id_promotion
  JOIN bdii_1010834.dim_tempo dim_tempo
  ON to_date(dim_tempo.dia
    || '/'
    || dim_tempo.mes
    || '/'
    || dim_tempo.ano, 'dd/mm/yyyy') BETWEEN promotions.date_start AND promotions.date_end
  INNER JOIN bdii_1010834.dim_produtos dim_produtos
  ON dim_produtos.id_produto = products.prod_id
  INNER JOIN bdii_1010834.dim_promocoes dim_promocoes
  ON dim_promocoes.id_promocao = promotions.id_promotion
  MINUS
  SELECT * FROM bdii_1010834.fac_promocoes ;
  COMMIT;
EXCEPTION
WHEN OTHERS THEN
  error_code := SQLCODE;
  error_msg  := SUBSTR(SQLERRM, 1, 200);
  --regista log
  INSERT
  INTO log_errors
    (
      ERROR_CODE ,
      ERROR_MSG ,
      OPERATION_NAME,
      OPERATION_DESC
    )
    VALUES
    (
      error_code,
      error_msg,
      'load_vendas',
      'Execução do procedimento load_vendas'
    );
END;

/
--------------------------------------------------------
--  DDL for Procedure LOAD_FORNECEDORES
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "BDII_1010985"."LOAD_FORNECEDORES" is
begin
  insert into BDII_1010834.dim_fornecedores (id_fornecedor, nome, endereco) 
    select supplier_id, name, address 
      from oltp2015.suppliers@oltp_link_2015 
    minus
      select id_fornecedor, nome, endereco 
      from BDII_1010834.dim_fornecedores;
  commit;
end;

/
--------------------------------------------------------
--  DDL for Procedure LOAD_PRODUTOS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "BDII_1010985"."LOAD_PRODUTOS" is

begin
  insert into BDII_1010834.dim_produtos (id_produto, categoria, sub_categoria, classe_peso, unidade_medida
    , tamanho_pacote, estado, lista_preco, min_preco, custo_prod, descricao)
      select prod_oltp.prod_id, cat_oltp.prod_category, sub_cat_oltp.prod_subcategory, prod_oltp.prod_weight_class
        , prod_oltp.prod_unit_of_measure, prod_oltp.prod_pack_size
        , prod_oltp.prod_status, prod_oltp.prod_list_price, prod_oltp.prod_min_price
        , prod_oltp.prod_cost, desc_oltp.prod_desc 
        from oltp2015.products@oltp_link_2015 prod_oltp
        inner join oltp2015.sub_categories@oltp_link_2015 sub_cat_oltp
        on sub_cat_oltp.sub_cat_id = prod_oltp.sub_cat_id
        inner join oltp2015.categories@oltp_link_2015 cat_oltp
        on cat_oltp.cat_id = sub_cat_oltp.cat_id
        inner join oltp2015.product_descriptions@oltp_link_2015 desc_oltp
        on desc_oltp.prod_desc_id = prod_oltp.prod_descriptions_id;
    commit;
end;

/
--------------------------------------------------------
--  DDL for Procedure LOAD_PROMOCOES
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "BDII_1010985"."LOAD_PROMOCOES" 
IS
  var_count NUMBER; -- nº de registos da tabela dim_promocoes
BEGIN
  SELECT COUNT(*) INTO var_count FROM BDII_1010834.dim_promocoes;
  IF (var_count = 0) THEN
    INSERT
    INTO BDII_1010834.dim_promocoes
      (
        id_promocao,
        nome,
        desconto,
        tipo_promocao,
        data_inicio,
        data_fim
      )
      VALUES
      (
        0,
        'Sem promoção',
        0,
        'Sem tipo',
        to_date('1.1.1900', 'dd.mm.yyyy'),
        to_date('1.1.1900', 'dd.mm.yyyy')
      );
  END IF;
  INSERT
  INTO BDII_1010834.dim_promocoes
    (
      id_promocao,
      nome,
      desconto,
      tipo_promocao,
      data_inicio,
      data_fim
    )
  SELECT promotions.id_promotion,
    promotions.promotion,
    promotions.discount,
    promotion_types.promotion_type,
    promotions.date_start,
    promotions.date_end
  FROM promotions
  INNER JOIN promotion_types
  ON promotions.id_promotion_type = promotion_types.id_promotion_type
  MINUS
  SELECT dw_promocoes.id_promocao,
    dw_promocoes.nome,
    dw_promocoes.desconto,
    dw_promocoes.tipo_promocao,
    dw_promocoes.data_inicio,
    dw_promocoes.data_fim
  FROM BDII_1010834.dim_promocoes dw_promocoes;
  COMMIT;
END;

/
--------------------------------------------------------
--  DDL for Procedure LOAD_TEMPO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "BDII_1010985"."LOAD_TEMPO" 
is
  v_ano_minimo number(4);
  v_ano_maximo number(4);
  v_data_temp date;
begin
  select to_number(to_char(min(SALES.SALE_DATE), 'yyyy')) into v_ano_minimo from SALES;
  select to_number(to_char(max(SALES.SALE_DATE), 'yyyy')) into v_ano_maximo from SALES;
  --v_data_temp := to_date(v_ano_minimo, 'yyyy');
  v_data_temp := to_date(to_char('01-01-'||v_ano_minimo),'dd-mm-yyyy');
  --WHILE v_data_temp < to_date(v_ano_maximo, 'yyyy')
  WHILE v_data_temp < to_date(to_char('31-12-'||v_ano_maximo),'dd-mm-yyyy')
  LOOP
     INSERT INTO SYN_TEMPO (Dia, Mes, Ano, Dia_Semana, De_Manha)
     VALUES (
        to_number(to_char(v_data_temp, 'dd')), 
        to_number(to_char(v_data_temp, 'mm')),
        to_number(to_char(v_data_temp, 'yyyy')),
        to_char(v_data_temp, 'Day', 'NLS_DATE_LANGUAGE=Portuguese'),
        0
      );
     INSERT INTO SYN_TEMPO (Dia, Mes, Ano, Dia_Semana, De_Manha)
     VALUES (
        to_number(to_char(v_data_temp, 'dd')), 
        to_number(to_char(v_data_temp, 'mm')),
        to_number(to_char(v_data_temp, 'yyyy')),
        to_char(v_data_temp, 'Day', 'NLS_DATE_LANGUAGE=Portuguese'),
        1
      );
      v_data_temp := v_data_temp+1;
  END LOOP;  
  commit;
end;

/
--------------------------------------------------------
--  DDL for Procedure LOAD_VENDAS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "BDII_1010985"."LOAD_VENDAS" is
  var_surr_empregado number;
  var_surr_promocao number;
  error_code     number;
  error_msg      varchar2(255);

begin

  select surr_empregado 
  into var_surr_empregado 
  from bdii_1010834.dim_empregados 
  where id_empregado=0;
  select surr_promocao 
  into var_surr_promocao 
  from bdii_1010834.dim_promocoes 
  where id_promocao=0;
  insert into BDII_1010834.fac_vendas (
    surr_tempo,
    surr_canal,
    surr_cliente,
    surr_promocao,
    surr_produto,
    surr_mini_cliente, 
    surr_empregado, 
    unid_vendidas, 
    custo_compra, 
    valor_venda, 
    lucro)
    select dim_tempo.surr_tempo,
  dim_canais.surr_canal,
  dim_clientes.surr_cliente,
  nvl(dim_promocoes.surr_promocao, var_surr_promocao),
  dim_produtos.surr_produto,
  dim_clientes.fk_mini_cliente,
  nvl(dim_empregados.surr_empregado, var_surr_empregado),
  sum(sales_oltp.quantity_sold), 
  sum(dim_produtos.custo_prod * sales_oltp.quantity_sold),
  sum(sales_oltp.amount_sold), 
  sum(sales_oltp.amount_sold - (dim_produtos.custo_prod * sales_oltp.quantity_sold))
  from oltp2015.sales@oltp_link_2015 sales_oltp
  inner join bdii_1010834.dim_clientes dim_clientes
  on dim_clientes.id_cliente = sales_oltp.cust_id
  inner join bdii_1010834.dim_produtos dim_produtos
  on dim_produtos.id_produto = sales_oltp.prod_id
  inner join bdii_1010834.dim_canais dim_canais
  on dim_canais.id_canal = sales_oltp.channel_id
  inner join bdii_1010834.dim_tempo dim_tempo
  on dim_tempo.dia = to_number(to_char(sales_oltp.sale_date, 'DD'))
    and dim_tempo.mes = to_number(to_char(sales_oltp.sale_date, 'MM'))
    and dim_tempo.ano = to_number(to_char(sales_oltp.sale_date, 'YYYY'))
    and dim_tempo.de_manha = get_manha_tarde(sales_oltp.sale_date)
  left join bdii_1010834.dim_empregados dim_empregados
  on dim_empregados.id_empregado = sales_oltp.employee_id
  left join bdii_1010834.dim_promocoes dim_promocoes
  on dim_promocoes.id_promocao = sales_oltp.promotion_id
  --where sales_oltp.sale_id <= 1
  group by
  dim_tempo.surr_tempo,
  dim_canais.surr_canal,
  dim_clientes.surr_cliente,
  dim_promocoes.surr_promocao,
  dim_produtos.surr_produto,
  dim_clientes.fk_mini_cliente,
  dim_empregados.surr_empregado
  minus
  select * from bdii_1010834.fac_vendas
  ;
  commit;
EXCEPTION
  when others then
    error_code := SQLCODE;
    error_msg  := SUBSTR(SQLERRM, 1, 200);
  
    --regista log
    insert into log_errors (
        ERROR_CODE    ,
        ERROR_MSG     ,
        OPERATION_NAME,
        OPERATION_DESC
    ) values (
        error_code,
        error_msg,
        'load_vendas',
        'Execução do procedimento load_vendas'
    );
end;

/
--------------------------------------------------------
--  DDL for Procedure TESTE_GET_CLASSE_SALARIO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "BDII_1010985"."TESTE_GET_CLASSE_SALARIO" is 

begin
  dbms_output.put_line(get_classe_salario(4166));
end;

/
--------------------------------------------------------
--  DDL for Synonymn CHANNELS
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "BDII_1010985"."CHANNELS" FOR "BDII_1010832"."CHANNELS";
--------------------------------------------------------
--  DDL for Synonymn EMP_OLTP
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "BDII_1010985"."EMP_OLTP" FOR "EMP"@"OLTP_LINK_SCOTT.REGRESS.RDBMS.DEV.US.ORACLE.COM";
--------------------------------------------------------
--  DDL for Synonymn OLTP2015
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "BDII_1010985"."OLTP2015" FOR "OLTP2015"."CITIES"@"OLTP_LINK_2015.REGRESS.RDBMS.DEV.US.ORACLE.COM";
--------------------------------------------------------
--  DDL for Synonymn PRODUCTS
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "BDII_1010985"."PRODUCTS" FOR "OLTP2015"."PRODUCTS"@"OLTP_LINK_2015.REGRESS.RDBMS.DEV.US.ORACLE.COM";
--------------------------------------------------------
--  DDL for Synonymn SALES
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "BDII_1010985"."SALES" FOR "OLTP2015"."SALES"@"OLTP_LINK_2015.REGRESS.RDBMS.DEV.US.ORACLE.COM";
--------------------------------------------------------
--  DDL for Synonymn SYN_TEMPO
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "BDII_1010985"."SYN_TEMPO" FOR "BDII_1010834"."DIM_TEMPO";

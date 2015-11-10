DROP SEQUENCE F15E4RFE_seq ; 
create sequence F15E4RFE_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15E4RFE_PK_trig 
before insert on F15E4RFE
for each row 
begin 
select F15E4RFE_seq.nextval into :new.rfe_id from dual; 
end; 
/
alter table F15E4RFE add created date ; 
alter table F15E4RFE add created_by VARCHAR2 (255) ; 
alter table F15E4RFE add row_version_number integer ; 
alter table F15E4RFE add updated date ; 
alter table F15E4RFE add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15E4RFE_AUD_trig 
before insert or update on F15E4RFE 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15E4RFE_doc_seq ; 
create sequence F15E4RFE_doc_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15E4RFE_doc_PK_trig 
before insert on F15E4RFE_doc
for each row 
begin 
select F15E4RFE_doc_seq.nextval into :new.doc_id from dual; 
end; 
/
alter table F15E4RFE_doc add created date ; 
alter table F15E4RFE_doc add created_by VARCHAR2 (255) ; 
alter table F15E4RFE_doc add row_version_number integer ; 
alter table F15E4RFE_doc add updated date ; 
alter table F15E4RFE_doc add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15E4RFE_doc_AUD_trig 
before insert or update on F15E4RFE_doc 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15E4comment_seq ; 
create sequence F15E4comment_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15E4comment_PK_trig 
before insert on F15E4comment
for each row 
begin 
select F15E4comment_seq.nextval into :new.comment_id from dual; 
end; 
/
alter table F15E4comment add created date ; 
alter table F15E4comment add created_by VARCHAR2 (255) ; 
alter table F15E4comment add row_version_number integer ; 
alter table F15E4comment add updated date ; 
alter table F15E4comment add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15E4comment_AUD_trig 
before insert or update on F15E4comment 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15E4lab_seq ; 
create sequence F15E4lab_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15E4lab_PK_trig 
before insert on F15E4lab
for each row 
begin 
select F15E4lab_seq.nextval into :new.lab_id from dual; 
end; 
/
alter table F15E4lab add created date ; 
alter table F15E4lab add created_by VARCHAR2 (255) ; 
alter table F15E4lab add row_version_number integer ; 
alter table F15E4lab add updated date ; 
alter table F15E4lab add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15E4lab_AUD_trig 
before insert or update on F15E4lab 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15E4project_seq ; 
create sequence F15E4project_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15E4project_PK_trig 
before insert on F15E4project
for each row 
begin 
select F15E4project_seq.nextval into :new.project_id from dual; 
end; 
/
alter table F15E4project add created date ; 
alter table F15E4project add created_by VARCHAR2 (255) ; 
alter table F15E4project add row_version_number integer ; 
alter table F15E4project add updated date ; 
alter table F15E4project add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15E4project_AUD_trig 
before insert or update on F15E4project 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15E4stat_seq ; 
create sequence F15E4stat_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15E4stat_PK_trig 
before insert on F15E4stat
for each row 
begin 
select F15E4stat_seq.nextval into :new.stat_id from dual; 
end; 
/
alter table F15E4stat add created date ; 
alter table F15E4stat add created_by VARCHAR2 (255) ; 
alter table F15E4stat add row_version_number integer ; 
alter table F15E4stat add updated date ; 
alter table F15E4stat add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15E4stat_AUD_trig 
before insert or update on F15E4stat 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15E4stat_code_seq ; 
create sequence F15E4stat_code_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15E4stat_code_PK_trig 
before insert on F15E4stat_code
for each row 
begin 
select F15E4stat_code_seq.nextval into :new.stat_code from dual; 
end; 
/
alter table F15E4stat_code add created date ; 
alter table F15E4stat_code add created_by VARCHAR2 (255) ; 
alter table F15E4stat_code add row_version_number integer ; 
alter table F15E4stat_code add updated date ; 
alter table F15E4stat_code add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15E4stat_code_AUD_trig 
before insert or update on F15E4stat_code 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15E4stat_hist_seq ; 
create sequence F15E4stat_hist_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15E4stat_hist_PK_trig 
before insert on F15E4stat_hist
for each row 
begin 
select F15E4stat_hist_seq.nextval into :new.stat_hist_id from dual; 
end; 
/
alter table F15E4stat_hist add created date ; 
alter table F15E4stat_hist add created_by VARCHAR2 (255) ; 
alter table F15E4stat_hist add row_version_number integer ; 
alter table F15E4stat_hist add updated date ; 
alter table F15E4stat_hist add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15E4stat_hist_AUD_trig 
before insert or update on F15E4stat_hist 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15E4contact_seq ; 
create sequence F15E4contact_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15E4contact_PK_trig 
before insert on F15E4contact
for each row 
begin 
select F15E4contact_seq.nextval into :new.contact_id from dual; 
end; 
/
alter table F15E4contact add created date ; 
alter table F15E4contact add created_by VARCHAR2 (255) ; 
alter table F15E4contact add row_version_number integer ; 
alter table F15E4contact add updated date ; 
alter table F15E4contact add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15E4contact_AUD_trig 
before insert or update on F15E4contact 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15E4emp_seq ; 
create sequence F15E4emp_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15E4emp_PK_trig 
before insert on F15E4emp
for each row 
begin 
select F15E4emp_seq.nextval into :new.emp_id from dual; 
end; 
/
alter table F15E4emp add created date ; 
alter table F15E4emp add created_by VARCHAR2 (255) ; 
alter table F15E4emp add row_version_number integer ; 
alter table F15E4emp add updated date ; 
alter table F15E4emp add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15E4emp_AUD_trig 
before insert or update on F15E4emp 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15E4role_cd_seq ; 
create sequence F15E4role_cd_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15E4role_cd_PK_trig 
before insert on F15E4role_cd
for each row 
begin 
select F15E4role_cd_seq.nextval into :new.role_code from dual; 
end; 
/
alter table F15E4role_cd add created date ; 
alter table F15E4role_cd add created_by VARCHAR2 (255) ; 
alter table F15E4role_cd add row_version_number integer ; 
alter table F15E4role_cd add updated date ; 
alter table F15E4role_cd add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15E4role_cd_AUD_trig 
before insert or update on F15E4role_cd 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

-- Table Relation_3 has a compound primary key so no sequence or trigger was created for it.
--DROP INDEX F15E4stat_stat_id_FK_0 ;
--CREATE INDEX F15E4stat_stat_id_FK_0 ON F15E4RFE(F15E4stat_stat_id) ;
DROP INDEX F15E4RFE_rfe_id_FK_1 ;
CREATE INDEX F15E4RFE_rfe_id_FK_1 ON F15E4RFE_doc(F15E4RFE_rfe_id) ;
DROP INDEX F15E4RFE_rfe_id_FK_2 ;
CREATE INDEX F15E4RFE_rfe_id_FK_2 ON F15E4RFE_tasks(F15E4RFE_rfe_id) ;
DROP INDEX F15E4RFE_rfe_id_FK_3 ;
CREATE INDEX F15E4RFE_rfe_id_FK_3 ON F15E4comment(F15E4RFE_rfe_id) ;
DROP INDEX F15E4emp_emp_id_FK_4 ;
CREATE INDEX F15E4emp_emp_id_FK_4 ON F15E4comment(F15E4emp_emp_id) ;
DROP INDEX F15E4lab_lab_id_FK_5 ;
CREATE INDEX F15E4lab_lab_id_FK_5 ON F15E4project(F15E4lab_lab_id) ;
--DROP INDEX F15E4RFE_rfe_id_FK_6 ;
--CREATE INDEX F15E4RFE_rfe_id_FK_6 ON F15E4stat(F15E4RFE_rfe_id) ;
DROP INDEX F15E4stat_code_stat_co_FK_7 ;
CREATE INDEX F15E4stat_code_stat_co_FK_7 ON F15E4stat(F15E4stat_code_stat_code) ;
DROP INDEX F15E4emp_emp_id_FK_8 ;
CREATE INDEX F15E4emp_emp_id_FK_8 ON F15E4stat(F15E4emp_emp_id) ;
DROP INDEX F15E4RFE_rfe_id_FK_9 ;
CREATE INDEX F15E4RFE_rfe_id_FK_9 ON F15E4stat_hist(F15E4RFE_rfe_id) ;
DROP INDEX F15E4stat_stat_id_FK_10 ;
CREATE INDEX F15E4stat_stat_id_FK_10 ON F15E4stat_hist(F15E4stat_stat_id) ;
DROP INDEX F15E4RFE_rfe_id_FK_11 ;
CREATE INDEX F15E4RFE_rfe_id_FK_11 ON F15E4contact(F15E4RFE_rfe_id) ;
DROP INDEX F15E4emp_emp_id_FK_12 ;
CREATE INDEX F15E4emp_emp_id_FK_12 ON F15E4contact(F15E4emp_emp_id) ;
DROP INDEX F15E4role_cd_role_code_FK_13 ;
CREATE INDEX F15E4role_cd_role_code_FK_13 ON F15E4contact(F15E4role_cd_role_code) ;
DROP INDEX F15E4lab_lab_id_FK_14 ;
CREATE INDEX F15E4lab_lab_id_FK_14 ON F15E4emp(F15E4lab_lab_id) ;
DROP INDEX F15E4emp_emp_id_FK_15 ;
CREATE INDEX F15E4emp_emp_id_FK_15 ON Relation_3(F15E4emp_emp_id) ;
DROP INDEX F15E4RFE_rfe_id_FK_16 ;
CREATE INDEX F15E4RFE_rfe_id_FK_16 ON Relation_3(F15E4RFE_rfe_id) ;

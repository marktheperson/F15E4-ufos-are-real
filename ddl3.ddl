-- Table Approvers has a compound primary key so no sequence or trigger was created for it.
DROP SEQUENCE F15E4Auth_seq ; 
create sequence F15E4Auth_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4Auth_PK_trig 
; 

create or replace trigger F15E4Auth_PK_trig 
before insert on F15E4Auth
for each row 
begin 
select F15E4Auth_seq.nextval into :new.auth_id from dual; 
end; 
/

DROP SEQUENCE F15E4Doc_seq ; 
create sequence F15E4Doc_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4Doc_PK_trig 
; 

create or replace trigger F15E4Doc_PK_trig 
before insert on F15E4Doc
for each row 
begin 
select F15E4Doc_seq.nextval into :new.doc_id from dual; 
end; 
/

DROP SEQUENCE F15E4Emp_seq ; 
create sequence F15E4Emp_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4Emp_PK_trig 
; 

create or replace trigger F15E4Emp_PK_trig 
before insert on F15E4Emp
for each row 
begin 
select F15E4Emp_seq.nextval into :new.emp_id from dual; 
end; 
/

DROP SEQUENCE F15E4Lab_seq ; 
create sequence F15E4Lab_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4Lab_PK_trig 
; 

create or replace trigger F15E4Lab_PK_trig 
before insert on F15E4Lab
for each row 
begin 
select F15E4Lab_seq.nextval into :new.lab_id from dual; 
end; 
/

DROP SEQUENCE F15E4RFE_seq ; 
create sequence F15E4RFE_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4RFE_PK_trig 
; 

create or replace trigger F15E4RFE_PK_trig 
before insert on F15E4RFE
for each row 
begin 
select F15E4RFE_seq.nextval into :new.RFE_id from dual; 
end; 
/

DROP SEQUENCE F15E4comm_seq ; 
create sequence F15E4comm_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4comm_PK_trig 
; 

create or replace trigger F15E4comm_PK_trig 
before insert on F15E4comm
for each row 
begin 
select F15E4comm_seq.nextval into :new.comm_id from dual; 
end; 
/

DROP SEQUENCE F15E4document_seq ; 
create sequence F15E4document_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4document_PK_trig 
; 

create or replace trigger F15E4document_PK_trig 
before insert on F15E4document
for each row 
begin 
select F15E4document_seq.nextval into :new.doc_id from dual; 
end; 
/

DROP SEQUENCE F15E4hist_seq ; 
create sequence F15E4hist_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4hist_PK_trig 
; 

create or replace trigger F15E4hist_PK_trig 
before insert on F15E4hist
for each row 
begin 
select F15E4hist_seq.nextval into :new.hist_id from dual; 
end; 
/

DROP SEQUENCE F15E4status_seq ; 
create sequence F15E4status_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4status_PK_trig 
; 

create or replace trigger F15E4status_PK_trig 
before insert on F15E4status
for each row 
begin 
select F15E4status_seq.nextval into :new.stat_id from dual; 
end; 
/

DROP SEQUENCE F15E4tasks_seq ; 
create sequence F15E4tasks_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4tasks_PK_trig 
; 

create or replace trigger F15E4tasks_PK_trig 
before insert on F15E4tasks
for each row 
begin 
select F15E4tasks_seq.nextval into :new.task_id from dual; 
end; 
/

-- Table contacts has a compound primary key so no sequence or trigger was created for it.
DROP INDEX F15E4Emp_emp_id_FK_0 ;
CREATE INDEX F15E4Emp_emp_id_FK_0 ON F15E4Auth(F15E4Emp_emp_id) ;
DROP INDEX F15E4RFE_RFE_id_FK_1 ;
CREATE INDEX F15E4RFE_RFE_id_FK_1 ON F15E4Doc(F15E4RFE_RFE_id) ;
DROP INDEX F15E4Auth_auth_id_FK_2 ;
CREATE INDEX F15E4Auth_auth_id_FK_2 ON F15E4Emp(F15E4Auth_auth_id) ;
DROP INDEX F15E4Lab_lab_id_FK_3 ;
CREATE INDEX F15E4Lab_lab_id_FK_3 ON F15E4Emp(F15E4Lab_lab_id) ;
DROP INDEX F15E4Emp_emp_id_FK_4 ;
CREATE INDEX F15E4Emp_emp_id_FK_4 ON F15E4RFE(F15E4Emp_emp_id) ;
DROP INDEX F15E4status_stat_id_FK_5 ;
CREATE INDEX F15E4status_stat_id_FK_5 ON F15E4RFE(F15E4status_stat_id) ;
DROP INDEX F15E4tasks_task_id_FK_6 ;
CREATE INDEX F15E4tasks_task_id_FK_6 ON F15E4RFE(F15E4tasks_task_id) ;
DROP INDEX F15E4Emp_emp_id_FK_7 ;
CREATE INDEX F15E4Emp_emp_id_FK_7 ON F15E4comm(F15E4Emp_emp_id) ;
DROP INDEX F15E4RFE_RFE_id_FK_8 ;
CREATE INDEX F15E4RFE_RFE_id_FK_8 ON F15E4comm(F15E4RFE_RFE_id) ;
DROP INDEX F15E4RFE_RFE_id_FK_9 ;
CREATE INDEX F15E4RFE_RFE_id_FK_9 ON F15E4document(F15E4RFE_RFE_id) ;
DROP INDEX F15E4RFE_RFE_id_FK_10 ;
CREATE INDEX F15E4RFE_RFE_id_FK_10 ON F15E4hist(F15E4RFE_RFE_id) ;
DROP INDEX F15E4RFE_RFE_id_FK_11 ;
CREATE INDEX F15E4RFE_RFE_id_FK_11 ON Approvers(F15E4RFE_RFE_id) ;
DROP INDEX F15E4Emp_emp_id_FK_12 ;
CREATE INDEX F15E4Emp_emp_id_FK_12 ON contacts(F15E4Emp_emp_id) ;
DROP INDEX F15E4RFE_RFE_id_FK_13 ;
CREATE INDEX F15E4RFE_RFE_id_FK_13 ON contacts(F15E4RFE_RFE_id) ;
DROP INDEX F15E4Emp_emp_id_FK_14 ;
CREATE INDEX F15E4Emp_emp_id_FK_14 ON Approvers(F15E4Emp_emp_id) ;

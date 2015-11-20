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

DROP SEQUENCE F15E4Authv1_seq ; 
create sequence F15E4Authv1_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4Authv1_PK_trig 
; 

create or replace trigger F15E4Authv1_PK_trig 
before insert on F15E4Authv1
for each row 
begin 
select F15E4Authv1_seq.nextval into :new.auth_id from dual; 
end; 
/

DROP SEQUENCE F15E4Authv2_seq ; 
create sequence F15E4Authv2_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4Authv2_PK_trig 
; 

create or replace trigger F15E4Authv2_PK_trig 
before insert on F15E4Authv2
for each row 
begin 
select F15E4Authv2_seq.nextval into :new.auth_id from dual; 
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

DROP SEQUENCE F15E4Empv1_seq ; 
create sequence F15E4Empv1_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4Empv1_PK_trig 
; 

create or replace trigger F15E4Empv1_PK_trig 
before insert on F15E4Empv1
for each row 
begin 
select F15E4Empv1_seq.nextval into :new.emp_id from dual; 
end; 
/

DROP SEQUENCE F15E4Empv2_seq ; 
create sequence F15E4Empv2_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4Empv2_PK_trig 
; 

create or replace trigger F15E4Empv2_PK_trig 
before insert on F15E4Empv2
for each row 
begin 
select F15E4Empv2_seq.nextval into :new.emp_id from dual; 
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

DROP SEQUENCE F15E4Labv1_seq ; 
create sequence F15E4Labv1_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4Labv1_PK_trig 
; 

create or replace trigger F15E4Labv1_PK_trig 
before insert on F15E4Labv1
for each row 
begin 
select F15E4Labv1_seq.nextval into :new.lab_id from dual; 
end; 
/

DROP SEQUENCE F15E4Labv2_seq ; 
create sequence F15E4Labv2_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4Labv2_PK_trig 
; 

create or replace trigger F15E4Labv2_PK_trig 
before insert on F15E4Labv2
for each row 
begin 
select F15E4Labv2_seq.nextval into :new.lab_id from dual; 
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

DROP SEQUENCE F15E4RFEv1_seq ; 
create sequence F15E4RFEv1_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4RFEv1_PK_trig 
; 

create or replace trigger F15E4RFEv1_PK_trig 
before insert on F15E4RFEv1
for each row 
begin 
select F15E4RFEv1_seq.nextval into :new.RFE_id from dual; 
end; 
/

DROP SEQUENCE F15E4RFEv2_seq ; 
create sequence F15E4RFEv2_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4RFEv2_PK_trig 
; 

create or replace trigger F15E4RFEv2_PK_trig 
before insert on F15E4RFEv2
for each row 
begin 
select F15E4RFEv2_seq.nextval into :new.RFE_id from dual; 
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

DROP SEQUENCE F15E4commv1_seq ; 
create sequence F15E4commv1_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4commv1_PK_trig 
; 

create or replace trigger F15E4commv1_PK_trig 
before insert on F15E4commv1
for each row 
begin 
select F15E4commv1_seq.nextval into :new.comm_id from dual; 
end; 
/

DROP SEQUENCE F15E4commv2_seq ; 
create sequence F15E4commv2_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4commv2_PK_trig 
; 

create or replace trigger F15E4commv2_PK_trig 
before insert on F15E4commv2
for each row 
begin 
select F15E4commv2_seq.nextval into :new.comm_id from dual; 
end; 
/

DROP SEQUENCE F15E4doc_seq ; 
create sequence F15E4doc_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4doc_PK_trig 
; 

create or replace trigger F15E4doc_PK_trig 
before insert on F15E4doc
for each row 
begin 
select F15E4doc_seq.nextval into :new.doc_id from dual; 
end; 
/

DROP SEQUENCE F15E4docv1_seq ; 
create sequence F15E4docv1_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4docv1_PK_trig 
; 

create or replace trigger F15E4docv1_PK_trig 
before insert on F15E4docv1
for each row 
begin 
select F15E4docv1_seq.nextval into :new.doc_id from dual; 
end; 
/

DROP SEQUENCE F15E4docv2_seq ; 
create sequence F15E4docv2_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4docv2_PK_trig 
; 

create or replace trigger F15E4docv2_PK_trig 
before insert on F15E4docv2
for each row 
begin 
select F15E4docv2_seq.nextval into :new.doc_id from dual; 
end; 
/

DROP SEQUENCE F15E4role_code_seq ; 
create sequence F15E4role_code_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4role_code_PK_trig 
; 

create or replace trigger F15E4role_code_PK_trig 
before insert on F15E4role_code
for each row 
begin 
select F15E4role_code_seq.nextval into :new.role_id from dual; 
end; 
/

DROP SEQUENCE F15E4role_codev1_seq ; 
create sequence F15E4role_codev1_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4role_codev1_PK_trig 
; 

create or replace trigger F15E4role_codev1_PK_trig 
before insert on F15E4role_codev1
for each row 
begin 
select F15E4role_codev1_seq.nextval into :new.role_id from dual; 
end; 
/

DROP SEQUENCE F15E4role_codev2_seq ; 
create sequence F15E4role_codev2_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4role_codev2_PK_trig 
; 

create or replace trigger F15E4role_codev2_PK_trig 
before insert on F15E4role_codev2
for each row 
begin 
select F15E4role_codev2_seq.nextval into :new.role_id from dual; 
end; 
/

DROP SEQUENCE F15E4stat_code_seq ; 
create sequence F15E4stat_code_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4stat_code_PK_trig 
; 

create or replace trigger F15E4stat_code_PK_trig 
before insert on F15E4stat_code
for each row 
begin 
select F15E4stat_code_seq.nextval into :new.code_id from dual; 
end; 
/

DROP SEQUENCE F15E4stat_codev1_seq ; 
create sequence F15E4stat_codev1_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4stat_codev1_PK_trig 
; 

create or replace trigger F15E4stat_codev1_PK_trig 
before insert on F15E4stat_codev1
for each row 
begin 
select F15E4stat_codev1_seq.nextval into :new.code_id from dual; 
end; 
/

DROP SEQUENCE F15E4stat_codev2_seq ; 
create sequence F15E4stat_codev2_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4stat_codev2_PK_trig 
; 

create or replace trigger F15E4stat_codev2_PK_trig 
before insert on F15E4stat_codev2
for each row 
begin 
select F15E4stat_codev2_seq.nextval into :new.code_id from dual; 
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

DROP SEQUENCE F15E4statusv1_seq ; 
create sequence F15E4statusv1_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4statusv1_PK_trig 
; 

create or replace trigger F15E4statusv1_PK_trig 
before insert on F15E4statusv1
for each row 
begin 
select F15E4statusv1_seq.nextval into :new.stat_id from dual; 
end; 
/

DROP SEQUENCE F15E4statusv2_seq ; 
create sequence F15E4statusv2_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4statusv2_PK_trig 
; 

create or replace trigger F15E4statusv2_PK_trig 
before insert on F15E4statusv2
for each row 
begin 
select F15E4statusv2_seq.nextval into :new.stat_id from dual; 
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

DROP SEQUENCE F15E4tasksv1_seq ; 
create sequence F15E4tasksv1_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4tasksv1_PK_trig 
; 

create or replace trigger F15E4tasksv1_PK_trig 
before insert on F15E4tasksv1
for each row 
begin 
select F15E4tasksv1_seq.nextval into :new.task_id from dual; 
end; 
/

DROP SEQUENCE F15E4tasksv2_seq ; 
create sequence F15E4tasksv2_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4tasksv2_PK_trig 
; 

create or replace trigger F15E4tasksv2_PK_trig 
before insert on F15E4tasksv2
for each row 
begin 
select F15E4tasksv2_seq.nextval into :new.task_id from dual; 
end; 
/

DROP INDEX F15E4Emp_emp_id_FK_0 ;
CREATE INDEX F15E4Emp_emp_id_FK_0 ON F15E4Contv1(F15E4Emp_emp_id) ;
DROP INDEX F15E4Emp_emp_id_FK_1 ;
CREATE INDEX F15E4Emp_emp_id_FK_1 ON F15E4Contv2(F15E4Emp_emp_id) ;
DROP INDEX F15E4Empv2_emp_id_FK_2 ;
CREATE INDEX F15E4Empv2_emp_id_FK_2 ON F15E4Cont(F15E4Empv2_emp_id) ;
DROP INDEX F15E4RFE_RFE_id_FK_3 ;
CREATE INDEX F15E4RFE_RFE_id_FK_3 ON F15E4Contv2(F15E4RFE_RFE_id) ;
DROP INDEX F15E4RFE_RFE_id_FK_4 ;
CREATE INDEX F15E4RFE_RFE_id_FK_4 ON F15E4Contv1(F15E4RFE_RFE_id) ;
DROP INDEX F15E4RFEv2_RFE_id_FK_5 ;
CREATE INDEX F15E4RFEv2_RFE_id_FK_5 ON F15E4Cont(F15E4RFEv2_RFE_id) ;
DROP INDEX F15E4role_code_role_id_FK_6 ;
CREATE INDEX F15E4role_code_role_id_FK_6 ON F15E4Contv2(F15E4role_code_role_id) ;
DROP INDEX F15E4role_code_role_id_FK_7 ;
CREATE INDEX F15E4role_code_role_id_FK_7 ON F15E4Contv1(F15E4role_code_role_id) ;
DROP INDEX F15E4role_codev2_role__FK_8 ;
CREATE INDEX F15E4role_codev2_role__FK_8 ON F15E4Cont(F15E4role_codev2_role_id) ;
DROP INDEX F15E4Auth_auth_id_FK_9 ;
CREATE INDEX F15E4Auth_auth_id_FK_9 ON F15E4Emp(F15E4Auth_auth_id) ;
DROP INDEX F15E4Auth_auth_id_FK_10 ;
CREATE INDEX F15E4Auth_auth_id_FK_10 ON F15E4Empv1(F15E4Auth_auth_id) ;
DROP INDEX F15E4Lab_lab_id_FK_11 ;
CREATE INDEX F15E4Lab_lab_id_FK_11 ON F15E4Emp(F15E4Lab_lab_id) ;
DROP INDEX F15E4Lab_lab_id_FK_12 ;
CREATE INDEX F15E4Lab_lab_id_FK_12 ON F15E4Empv1(F15E4Lab_lab_id) ;
DROP INDEX F15E4Authv2_auth_id_FK_13 ;
CREATE INDEX F15E4Authv2_auth_id_FK_13 ON F15E4Empv2(F15E4Authv2_auth_id) ;
DROP INDEX F15E4Labv2_lab_id_FK_14 ;
CREATE INDEX F15E4Labv2_lab_id_FK_14 ON F15E4Empv2(F15E4Labv2_lab_id) ;
DROP INDEX F15E4Emp_emp_id_FK_15 ;
CREATE INDEX F15E4Emp_emp_id_FK_15 ON F15E4RFEv1(F15E4Emp_emp_id) ;
DROP INDEX F15E4Emp_emp_id_FK_16 ;
CREATE INDEX F15E4Emp_emp_id_FK_16 ON F15E4RFE(F15E4Emp_emp_id) ;
DROP INDEX F15E4status_stat_id_FK_17 ;
CREATE INDEX F15E4status_stat_id_FK_17 ON F15E4RFE(F15E4status_stat_id) ;
DROP INDEX F15E4status_stat_id_FK_18 ;
CREATE INDEX F15E4status_stat_id_FK_18 ON F15E4RFEv1(F15E4status_stat_id) ;
DROP INDEX F15E4Empv2_emp_id_FK_19 ;
CREATE INDEX F15E4Empv2_emp_id_FK_19 ON F15E4RFEv2(F15E4Empv2_emp_id) ;
DROP INDEX F15E4Emp_emp_id_FK_20 ;
CREATE INDEX F15E4Emp_emp_id_FK_20 ON F15E4commv1(F15E4Emp_emp_id) ;
DROP INDEX F15E4Emp_emp_id_FK_21 ;
CREATE INDEX F15E4Emp_emp_id_FK_21 ON F15E4comm(F15E4Emp_emp_id) ;
DROP INDEX F15E4RFE_RFE_id_FK_22 ;
CREATE INDEX F15E4RFE_RFE_id_FK_22 ON F15E4commv1(F15E4RFE_RFE_id) ;
DROP INDEX F15E4RFE_RFE_id_FK_23 ;
CREATE INDEX F15E4RFE_RFE_id_FK_23 ON F15E4comm(F15E4RFE_RFE_id) ;
DROP INDEX F15E4Empv2_emp_id_FK_24 ;
CREATE INDEX F15E4Empv2_emp_id_FK_24 ON F15E4commv2(F15E4Empv2_emp_id) ;
DROP INDEX F15E4RFEv2_RFE_id_FK_25 ;
CREATE INDEX F15E4RFEv2_RFE_id_FK_25 ON F15E4commv2(F15E4RFEv2_RFE_id) ;
DROP INDEX F15E4RFE_RFE_id_FK_26 ;
CREATE INDEX F15E4RFE_RFE_id_FK_26 ON F15E4docv1(F15E4RFE_RFE_id) ;
DROP INDEX F15E4RFE_RFE_id_FK_27 ;
CREATE INDEX F15E4RFE_RFE_id_FK_27 ON F15E4doc(F15E4RFE_RFE_id) ;
DROP INDEX F15E4RFEv2_RFE_id_FK_28 ;
CREATE INDEX F15E4RFEv2_RFE_id_FK_28 ON F15E4docv2(F15E4RFEv2_RFE_id) ;
DROP INDEX F15E4RFE_RFE_id_FK_29 ;
CREATE INDEX F15E4RFE_RFE_id_FK_29 ON F15E4statusv1(F15E4RFE_RFE_id) ;
DROP INDEX F15E4RFE_RFE_id_FK_30 ;
CREATE INDEX F15E4RFE_RFE_id_FK_30 ON F15E4statusv2(F15E4RFE_RFE_id) ;
DROP INDEX F15E4RFEv2_RFE_id_FK_31 ;
CREATE INDEX F15E4RFEv2_RFE_id_FK_31 ON F15E4status(F15E4RFEv2_RFE_id) ;
DROP INDEX F15E4stat_code_code_id_FK_32 ;
CREATE INDEX F15E4stat_code_code_id_FK_32 ON F15E4statusv1(F15E4stat_code_code_id) ;
DROP INDEX F15E4stat_code_code_id_FK_33 ;
CREATE INDEX F15E4stat_code_code_id_FK_33 ON F15E4status(F15E4stat_code_code_id) ;
DROP INDEX F15E4stat_code_code_id_FK_34 ;
CREATE INDEX F15E4stat_code_code_id_FK_34 ON F15E4statusv2(F15E4stat_code_code_id) ;
DROP INDEX F15E4RFE_RFE_id_FK_35 ;
CREATE INDEX F15E4RFE_RFE_id_FK_35 ON F15E4tasks(F15E4RFE_RFE_id) ;
DROP INDEX F15E4RFE_RFE_id_FK_36 ;
CREATE INDEX F15E4RFE_RFE_id_FK_36 ON F15E4tasksv1(F15E4RFE_RFE_id) ;
DROP INDEX F15E4RFEv2_RFE_id_FK_37 ;
CREATE INDEX F15E4RFEv2_RFE_id_FK_37 ON F15E4tasksv2(F15E4RFEv2_RFE_id) ;

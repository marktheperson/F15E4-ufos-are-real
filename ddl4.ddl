drop view F15E4chair_view;
drop view F15E4exec_dir_view;
drop view F15E4lab_director_view;
drop view F15E4Sys_Admin_view;
drop view F15E4emp_view;

create view F15E4emp_view as
SELECT
	emp_id,
	emp_name,
	f15E4lab_lab_id,
	email,
	office,
	phone,
	emp_status,
  typer,
	F15E4AUTH_AUTH_ID,
	status_date
FROM F15E4emp;

create or replace TRIGGER F15E4emp_trigger
	INSTEAD OF insert ON F15E4emp_view
	FOR EACH ROW
BEGIN
	insert into F15E4emp(
		emp_id,
		emp_name,
		f15E4lab_lab_id,
		email,
		office,
		phone,
		emp_status,
		typer,
		F15E4AUTH_AUTH_ID,
		status_date)
		 VALUES (
			:NEW.emp_id,
			:NEW.emp_name,
			:NEW.f15E4lab_lab_id,
			:NEW.email,
			:NEW.office,
			:NEW.phone,
			:NEW.emp_status,
			'Employee',
			1,
			sysdate);
END;
/


create view F15E4chair_view as
SELECT
	emp_id,
	emp_name,
	f15E4lab_lab_id,
	email,
	office,
	phone,
	emp_status,
    	typer,
	status_date
FROM F15E4emp where typer = 'Chair' ;


create or replace TRIGGER F15E4chair_trigger
	INSTEAD OF insert ON F15E4chair_view
	FOR EACH ROW
BEGIN
	insert into F15E4emp(
		emp_id,
		emp_name,
		f15E4lab_lab_id,
		email,
		office,
		phone,
		emp_status,
		typer,
		status_date)
		 VALUES (
			:NEW.emp_id,
			:NEW.emp_name,
			:NEW.f15E4lab_lab_id,
			:NEW.email,
			:NEW.office,
			:NEW.phone,
			:NEW.emp_status,
			'Chair',
			:NEW.status_date);
END;
/


create view F15E4exec_dir_view as
SELECT
	emp_id,
	emp_name,
	f15E4lab_lab_id,
	email,
	office,
	phone,
	emp_status,
    	typer,
	status_date
FROM F15E4emp where typer = 'Executive Director' ;

create or replace TRIGGER F15E4exec_dir_trigger
	INSTEAD OF insert ON F15E4exec_dir_view
	FOR EACH ROW
BEGIN
	insert into F15E4emp(
		emp_id,
		emp_name,
		f15E4lab_lab_id,
		email,
		office,
		phone,
		emp_status,
		typer,
		status_date)
		 VALUES (
			:NEW.emp_id,
			:NEW.emp_name,
			:NEW.f15E4lab_lab_id,
			:NEW.email,
			:NEW.office,
			:NEW.phone,
			:NEW.emp_status,
			'Executive Director',
			:NEW.status_date);
END;
/


create view F15E4lab_director_view as
SELECT
	emp_id,
	emp_name,
	f15E4lab_lab_id,
	email,
	office,
	phone,
	emp_status,
    	typer,
	status_date
FROM F15E4emp where typer = 'Lab Director' ;

create or replace TRIGGER F15E4lab_director_trigger
	INSTEAD OF insert ON F15E4lab_director_view
	FOR EACH ROW
BEGIN
	insert into F15E4emp(
		emp_id,
		emp_name,
		f15E4lab_lab_id,
		email,
		office,
		phone,
		emp_status,
		typer,
		status_date)
		 VALUES (
			:NEW.emp_id,
			:NEW.emp_name,
			:NEW.f15E4lab_lab_id,
			:NEW.email,
			:NEW.office,
			:NEW.phone,
			:NEW.emp_status,
			'Lab Director',
			:NEW.status_date);
END;
/


create view F15E4Sys_Admin_view as
SELECT
	emp_id,
	emp_name,
	f15E4lab_lab_id,
	email,
	office,
	phone,
	emp_status,
    	typer,
	status_date
FROM F15E4emp where typer = 'System Admin' ;

create or replace TRIGGER F15E4sys_admin_trigger
	INSTEAD OF insert ON F15E4Sys_Admin_view
	FOR EACH ROW
BEGIN
	insert into F15E4emp(
		emp_id,
		emp_name,
		f15E4lab_lab_id,
		email,
		office,
		phone,
		emp_status,
		typer,
		status_date)
		 VALUES (
			:NEW.emp_id,
			:NEW.emp_name,
			:NEW.f15E4lab_lab_id,
			:NEW.email,
			:NEW.office,
			:NEW.phone,
			:NEW.emp_status,
			'System Admin',
			:NEW.status_date);
END;
/

create or replace trigger create_new_stat
after insert on F15E4RFE
for each row
declare
statval NUMBER;
begin
statval := f15e4status_seq.nextval;
insert into f15e4status (stat_id, f15e4stat_code_code_id, active, F15E4RFE_RFE_ID) values (statval, 1, 'y', :new.RFE_ID);
end;
/

create or replace trigger set_active_flag
before insert on F15E4STATUS
for each row
declare
activeval VARCHAR2(1);
begin
activeval := 'y';
:new.active := activeval;
end;
/

create or replace trigger update_active_flags
before insert on F15E4STATUS
for each row
when (NEW.f15e4stat_code_code_id != 1)
begin
set_inactive_flags(:new.F15E4RFE_RFE_ID);
end;
/

create or replace trigger add_requestor
after insert on F15E4RFE
for each row
declare
empval NUMBER;
begin

select e.emp_id into empval
from F15E4EMP e
where emp_id = :NEW.F15E4EMP_EMP_ID;

insert into F15E4Cont (F15E4RFE_RFE_ID, F15E4EMP_EMP_ID, F15E4role_code_role_id)
VALUES (:new.RFE_ID, empval, 1);
end;
/


create or replace trigger add_SA_reviewer
after insert on F15E4STATUS
for each row
when (NEW.f15e4stat_code_code_id = 2)
declare
empval NUMBER;
begin

select emp_id into empval
from F15E4EMP
where typer = 'Sys Admin'
AND F15E4LAB_LAB_ID in (select lab_id
from F15E4EMP e, F15E4RFE r, F15E4LAB l
where e.emp_id = r.F15E4EMP_EMP_ID
and e.F15E4LAB_LAB_ID = l.lab_id
and r.rfe_id = :NEW.F15E4RFE_RFE_ID);

insert into F15E4Cont (F15E4RFE_RFE_ID, F15E4EMP_EMP_ID, F15E4role_code_role_id)
VALUES (:new.F15E4RFE_RFE_ID, empval, 3);
end;
/

create or replace trigger add_LD_reviewer
after insert on F15E4STATUS
for each row
when (NEW.f15e4stat_code_code_id = 6)
declare
empval NUMBER;
begin

select emp_id into empval
from F15E4EMP
where typer = 'Lab Director'
AND F15E4LAB_LAB_ID in (select lab_id
from F15E4EMP e, F15E4RFE r, F15E4LAB l
where e.emp_id = r.F15E4EMP_EMP_ID
and e.F15E4LAB_LAB_ID = l.lab_id
and r.rfe_id = :NEW.F15E4RFE_RFE_ID);

insert into F15E4Cont (F15E4RFE_RFE_ID, F15E4EMP_EMP_ID, F15E4role_code_role_id)
VALUES (:new.F15E4RFE_RFE_ID, empval, 4);
end;
/


create or replace trigger add_CH_reviewer
after insert on F15E4STATUS
for each row
when (NEW.f15e4stat_code_code_id = 7)
declare
empval NUMBER;
begin

select emp_id into empval
from F15E4EMP
where typer = 'Chairperson';

insert into F15E4Cont (F15E4RFE_RFE_ID, F15E4EMP_EMP_ID, F15E4role_code_role_id)
VALUES (:new.F15E4RFE_RFE_ID, empval, 5);
end;
/

create or replace trigger add_ed_reviewer
after insert on F15E4STATUS
for each row
when (NEW.f15e4stat_code_code_id = 8)
declare
empval NUMBER;
begin

select emp_id into empval
from F15E4EMP
where typer = 'Exec Dir';

insert into F15E4Cont (F15E4RFE_RFE_ID, F15E4EMP_EMP_ID, F15E4role_code_role_id)
VALUES (:new.F15E4RFE_RFE_ID, empval, 6);
end;
/

create or replace trigger set_review_date
before insert on F15E4RFE
for each row
declare
dateval date;
begin
dateval := sysdate + 365;
:new.review_date := dateval;
end;
/

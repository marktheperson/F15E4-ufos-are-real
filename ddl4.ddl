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
			:NEW.status_date);
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
before insert or update on F15E4RFE
for each row
declare
statval NUMBER;
begin
statval := f15e4status_seq.nextval;
insert into f15e4status (stat_id, f15e4stat_code_code_id, F15E4RFE_RFE_ID) values
(statval, 100, :new.RFE_ID);
end;
/

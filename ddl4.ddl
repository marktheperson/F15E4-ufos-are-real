drop view F15E4chair_view;
drop view F15E4exec_dir_view;
drop view F15E4lab_director_view;
drop view F15E4Sys_Admin_view;


drop view F15E4emp_view;
create view F15E4emp_view as
SELECT
	emp_id,
	emp_name,
	lab_id,
	email,
	office,
	phone,
	emp_status,
    	type,
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
		status_date,
		admin_flag,
		dir_flag,
		exec_dir_flag,
		chair_flag)
		 VALUES (
			:NEW.emp_id,
			:NEW.emp_name,
			:NEW.f15E4lab_lab_id,
			:NEW.email,
			:NEW.office,
			:NEW.phone,
			:NEW.emp_status,
			:NEW.status_date,
			:NEW.admin_flag,
			:NEW.dir_flag,
			:NEW.exec_dir_flag,
			:NEW.chair_flag);
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
	status_date,
	admin_flag,
	dir_flag,
	exec_dir_flag,
	chair_flag
FROM F15E4emp where chair_flag = 1 ;


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
		status_date,
		admin_flag,
		dir_flag,
		exec_dir_flag,
		chair_flag)
		 VALUES (
			:NEW.emp_id,
			:NEW.emp_name,
			:NEW.f15E4lab_lab_id,
			:NEW.email,
			:NEW.office,
			:NEW.phone,
			:NEW.emp_status,
			:NEW.status_date,
			0,
			0,
			0,
			1);
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
	status_date,
	admin_flag,
	dir_flag,
	exec_dir_flag,
	chair_flag
FROM F15E4emp where exec_dir_flag = 1 ;

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
		status_date,
		admin_flag,
		dir_flag,
		exec_dir_flag,
		chair_flag)
		 VALUES (
			:NEW.emp_id,
			:NEW.emp_name,
			:NEW.f15E4lab_lab_id,
			:NEW.email,
			:NEW.office,
			:NEW.phone,
			:NEW.emp_status,
			:NEW.status_date,
			0,
			0,
			1,
			0);
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
	status_date,
	admin_flag,
	dir_flag,
	exec_dir_flag,
	chair_flag
FROM F15E4emp where dir_flag = 1 ;

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
		status_date,
		admin_flag,
		dir_flag,
		exec_dir_flag,
		chair_flag)
		 VALUES (
			:NEW.emp_id,
			:NEW.emp_name,
			:NEW.f15E4lab_lab_id,
			:NEW.email,
			:NEW.office,
			:NEW.phone,
			:NEW.emp_status,
			:NEW.status_date,
			0,
			1,
			0,
			0);
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
	status_date,
	admin_flag,
	dir_flag,
	exec_dir_flag,
	chair_flag
FROM F15E4emp where admin_flag = 1 ;

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
		status_date,
		admin_flag,
		dir_flag,
		exec_dir_flag,
		chair_flag)
		 VALUES (
			:NEW.emp_id,
			:NEW.emp_name,
			:NEW.f15E4lab_lab_id,
			:NEW.email,
			:NEW.office,
			:NEW.phone,
			:NEW.emp_status,
			:NEW.status_date,
			1,
			0,
			0,
			0);
END;
/


create or replace trigger create_new_stat
before insert or update on F15E4RFE
for each row
declare
statval NUMBER;
begin
statval := f15e4status_seq.nextval;
insert into f15e4status (stat_id, code_id) values
(statval, 100);
if (:new.stat_id is null) then
:new.stat_id := statval;
end if;
end;
/


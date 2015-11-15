drop view F15E4emp_view;
drop view F15E4chairperson_view;
drop view F15E4exec_direct_view;
drop view F15E4lab_director_view;
drop view F15E4sys_admin_view;
drop view F15E4lab_employee_view;
drop view F15E4active_employees_view;

create view F15E4emp_view as
SELECT
	emp_id,
	emp_name,
	emp_lab,
	emp_email,
	emp_office,
	emp_phone,
	emp_status,
	status_eff_date,
	system_admin_flag,
	lab_director_flag,
	exec_director_flag,
	chairperson_flag
FROM F15E4emp ;

create or replace TRIGGER F15E4emp_trigger
	INSTEAD OF insert ON F15E4emp_view
	FOR EACH ROW
BEGIN
	insert into F15E4emp(
		emp_id,
		emp_name,
		emp_lab,
		emp_email,
		emp_office,
		emp_phone,
		emp_status,
		status_eff_date,
		system_admin_flag,
		lab_director_flag,
		exec_director_flag,
		chairperson_flag)
		 VALUES (
			:NEW.emp_id,
			:NEW.emp_name,
			:NEW.emp_lab,
			:NEW.emp_email,
			:NEW.emp_office,
			:NEW.emp_phone,
			:NEW.emp_status,
			:NEW.status_eff_date,
			:NEW.system_admin_flag,
			:NEW.lab_director_flag,
			:NEW.exec_director_flag,
			:NEW.chairperson_flag);
END;
/


create view F15E4chairperson_view as
SELECT
	emp_id,
	emp_name,
	emp_lab,
	emp_email,
	emp_office,
	emp_phone,
	emp_status,
	status_eff_date,
	system_admin_flag,
	lab_director_flag,
	exec_director_flag,
	chairperson_flag
FROM F15E4emp where chairperson_flag = 'Y' ;


create or replace TRIGGER F15E4chairperson_trigger
	INSTEAD OF insert ON F15E4chairperson_view
	FOR EACH ROW
BEGIN
	insert into F15E4emp(
		emp_id,
		emp_name,
		emp_lab,
		emp_email,
		emp_office,
		emp_phone,
		emp_status,
		status_eff_date,
		system_admin_flag,
		lab_director_flag,
		exec_director_flag,
		chairperson_flag)
		 VALUES (
			:NEW.emp_id,
			:NEW.emp_name,
			:NEW.emp_lab,
			:NEW.emp_email,
			:NEW.emp_office,
			:NEW.emp_phone,
			:NEW.emp_status,
			:NEW.status_eff_date,
			'N',
			'N',
			'N',
			'Y');
END;
/


create view F15E4exec_direct_view as
SELECT
	emp_id,
	emp_name,
	emp_lab,
	emp_email,
	emp_office,
	emp_phone,
	emp_status,
	status_eff_date,
	system_admin_flag,
	lab_director_flag,
	exec_director_flag,
	chairperson_flag
FROM F15E4emp where exec_director_flag = 'Y' ;

create or replace TRIGGER F15E4exec_direct_trigger
	INSTEAD OF insert ON F15E4exec_direct_view
	FOR EACH ROW
BEGIN
	insert into F15E4emp(
		emp_id,
		emp_name,
		emp_lab,
		emp_email,
		emp_office,
		emp_phone,
		emp_status,
		status_eff_date,
		system_admin_flag,
		lab_director_flag,
		exec_director_flag,
		chairperson_flag)
		 VALUES (
			:NEW.emp_id,
			:NEW.emp_name,
			:NEW.emp_lab,
			:NEW.emp_email,
			:NEW.emp_office,
			:NEW.emp_phone,
			:NEW.emp_status,
			:NEW.status_eff_date,
			'N',
			'N',
			'Y',
			'N');
END;
/


create view F15E4lab_director_view as
SELECT
	emp_id,
	emp_name,
	emp_lab,
	emp_email,
	emp_office,
	emp_phone,
	emp_status,
	status_eff_date,
	system_admin_flag,
	lab_director_flag,
	exec_director_flag,
	chairperson_flag
FROM F15E4emp where lab_director_flag = 'Y' ;

create or replace TRIGGER F15E4lab_director_trigger
	INSTEAD OF insert ON F15E4lab_director_view
	FOR EACH ROW
BEGIN
	insert into F15E4emp(
		emp_id,
		emp_name,
		emp_lab,
		emp_email,
		emp_office,
		emp_phone,
		emp_status,
		status_eff_date,
		system_admin_flag,
		lab_director_flag,
		exec_director_flag,
		chairperson_flag)
		 VALUES (
			:NEW.emp_id,
			:NEW.emp_name,
			:NEW.emp_lab,
			:NEW.emp_email,
			:NEW.emp_office,
			:NEW.emp_phone,
			:NEW.emp_status,
			:NEW.status_eff_date,
			'N',
			'Y',
			'N',
			'N');
END;
/


create view F15E4sys_admin_view as
SELECT
	emp_id,
	emp_name,
	emp_lab,
	emp_email,
	emp_office,
	emp_phone,
	emp_status,
	status_eff_date,
	system_admin_flag,
	lab_director_flag,
	exec_director_flag,
	chairperson_flag
FROM F15E4emp where system_admin_flag = 'Y' ;

create or replace TRIGGER F15E4sys_admin_trigger
	INSTEAD OF insert ON F15E4sys_admin_view
	FOR EACH ROW
BEGIN
	insert into F15E4emp(
		emp_id,
		emp_name,
		emp_lab,
		emp_email,
		emp_office,
		emp_phone,
		emp_status,
		status_eff_date,
		system_admin_flag,
		lab_director_flag,
		exec_director_flag,
		chairperson_flag)
		 VALUES (
			:NEW.emp_id,
			:NEW.emp_name,
			:NEW.emp_lab,
			:NEW.emp_email,
			:NEW.emp_office,
			:NEW.emp_phone,
			:NEW.emp_status,
			:NEW.status_eff_date,
			'Y',
			'N',
			'N',
			'N');
END;
/

create view F15E4lab_employee_view as
SELECT
	emp_id,
	emp_name,
	emp_lab,
	emp_email,
	emp_office,
	emp_phone,
	emp_status,
	status_eff_date,
	system_admin_flag,
	lab_director_flag,
	exec_director_flag,
	chairperson_flag
FROM F15E4emp where emp_lab IS NOT null ;

create or replace TRIGGER F15E4lab_employee_trigger
	INSTEAD OF insert ON F15E4lab_employee_view
	FOR EACH ROW
BEGIN
	insert into F15E4emp(
		emp_id,
		emp_name,
		emp_lab,
		emp_email,
		emp_office,
		emp_phone,
		emp_status,
		status_eff_date,
		system_admin_flag,
		lab_director_flag,
		exec_director_flag,
		chairperson_flag)
		 VALUES (
			:NEW.emp_id,
			:NEW.emp_name,
			:NEW.emp_lab,
			:NEW.emp_email,
			:NEW.emp_office,
			:NEW.emp_phone,
			:NEW.emp_status,
			:NEW.status_eff_date,
			:NEW.system_admin_flag,
			:NEW.lab_director_flag,
			:NEW.exec_director_flag,
			:NEW.chairperson_flag);
END;
/


create view F15E4active_employees_view as
SELECT
	emp_id,
	emp_name,
	emp_lab,
	emp_email,
	emp_office,
	emp_phone,
	emp_status,
	status_eff_date,
	system_admin_flag,
	lab_director_flag,
	exec_director_flag,
	chairperson_flag
FROM F15E4emp where emp_status = 'A' ;

create or replace TRIGGER F15E4active_employees_trigger
	INSTEAD OF insert ON F15E4active_employees_view
	FOR EACH ROW
BEGIN
	insert into F15E4emp(
		emp_id,
		emp_name,
		emp_lab,
		emp_email,
		emp_office,
		emp_phone,
		emp_status,
		status_eff_date,
		system_admin_flag,
		lab_director_flag,
		exec_director_flag,
		chairperson_flag)
		 VALUES (
			:NEW.emp_id,
			:NEW.emp_name,
			:NEW.emp_lab,
			:NEW.emp_email,
			:NEW.emp_office,
			:NEW.emp_phone,
			:NEW.emp_status,
			:NEW.status_eff_date,
			:NEW.system_admin_flag,
			:NEW.lab_director_flag,
			:NEW.exec_director_flag,
			:NEW.chairperson_flag);
END;
/

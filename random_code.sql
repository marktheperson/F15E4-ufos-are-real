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
r.rfe_id = :NEW.F15E4RFE_RFE_ID);

insert into F15E4Cont (F15E4RFE_RFE_ID, F15E4EMP_EMP_ID, F15E4role_code_role_id)
VALUES (:new.F15E4RFE_RFE_ID, 1, 3);
end;
/



select emp_id into empval
from F15E4EMP
where typer = 'Sys Admin'
AND F15E4LAB_LAB_ID = (select lab_id
from F15E4EMP e, F15E4RFE r, F15E4LAB l
where e.emp_id = r.F15E4EMP_EMP_ID
and e.F15E4LAB_LAB_ID = l.lab_id);


select r.rfe_id, e.emp_name, sc.rfe_status, s.effective_date, c.comments
from F15E4RFE r, F15E4emp e, F15E4stat_code sc, F15E4comment c, F15E4stat s
where r.requestor_id = e.emp_id
AND r.F15E4stat_stat_id = s.stat_id
AND s.F15E4stat_code_stat_code = sc.stat_code
AND c.F15E4rfe_rfe_id = r.rfe_id
order by r.rfe_id desc;



create or replace trigger create_new_stat
before insert or update on F15E4RFE
for each row
declare
statval NUMBER;
begin
statval := f15e4status_seq.nextval;
insert into f15e4status (stat_id, f15e4stat_code_code_id, F15E4RFE_RFE_ID) values
(statval, 1, :new.RFE_ID);
end;
/

create or replace procedure SUBMIT_RFE_PROC(RFE_ID in NUMBER)
IS
BEGIN
INSERT INTO f15e4status (stat_id, f15e4stat_code_code_id, F15E4RFE_RFE_ID)
VALUES (f15e4status_seq.nextval, 2, RFE_ID);
END SUBMIT_RFE_PROC;

select emp_name
from F15E4emp
where emp_id = v('P1_LABEMP');

SELECT file_blob
from F15E4DOC
WHERE F15E4RFE_RFE_ID = :P23_RFE_ID;

select emp_name
from F15E4emp
where f15e4lab_lab_id = v('P1_LAB')
AND typer = 'Sys Admin';

select LAB_NAME
from F15E4LAB
where lab_Id = v('P1_LAB');

select c.status as "Status",
       s.CREATED
  from F15E4STATUS s, F15E4STAT_CODE c
  where s.F15E4STAT_CODE_CODE_ID = c.code_id
  AND S.F15E4RFE_RFE_ID = :P23_RFE_ID

drop view RFE_view;
CREATE OR REPLACE FORCE VIEW "RFE_VIEW" ("RFE_ID", "EMP_ID", "LAB_NAME", "STATUS", "EXPL", "ALT_PRO", "REVIEW_DATE") AS
  select rfe_id, emp_id, lab_name, status, expl, alt_pro, review_date
from f15e4rfe, f15e4emp, f15e4lab, f15e4status, f15e4stat_code
where code_id = F15E4STAT_CODE_CODE_ID
and  rfe_id = F15E4RFE_RFE_ID
and F15E4EMP_EMP_ID = emp_id
and F15E4LAB_LAB_ID = lab_id
/


//making a new status
DECLARE
stat_pk number;
BEGIN
stat_pk := f15e4status_seq.nextval;
return stat_pk;
END;

//comment
DECLARE
fake_pk number;
BEGIN
fake_pk := f15e4comm_seq.nextval;
return fake_pk;
END;


//logged in emp
declare
fake_emp number;
BEGIN
fake_emp := v('P1_LABEMP');
return fake_emp;
end;

//setting the stat code automatically for a status update page
DECLARE
newval number;
BEGIN
newval := 2;
return newval;
END;

/// code for the contacts report
select e.emp_name,
       r.role
from F15E4cont c, F15E4emp e, F15E4ROLE_CODE r
where c.F15E4RFE_rfe_id = :P23_RFE_ID
and e.emp_id = c.F15E4EMP_EMP_ID
and c.F15E4ROLE_CODE_ROLE_ID = R.role_ID

// code for displaying requestor on approve page
select E.EMP_NAME
from F15E4emp E, F15E4RFE R
where E.EMP_ID = R.F15E4EMP_EMP_ID
AND R.RFE_ID = :P14_F15E4RFE_RFE_ID

//code for displaying status on approve page
select C.status
from F15E4STATUS S, F15E4STAT_CODE C
where S.F15E4RFE_RFE_ID = :P14_F15E4RFE_RFE_ID
AND S.active = 'y'
and S.F15E4STAT_CODE_CODE_ID = C.code_id

create or replace trigger RFE_view_trigger
instead of insert on RFE_view
for each row
declare
s_id INTEGER;
r_id INTEGER;
emp_id INTEGER;
begin
    emp_id :=v('P1_LABEMP');
    s_id:=f15e4status_seq.nextval;
    r_id:=F15E4RFE_SEQ.nextval;
    RFE_view_proc(r_id,s_id,:new.expl,:new.alt_pro,:new.review_date,emp_id);
end;


//approve page for Sys Admins
select '' as approve_link,
       r.RFE_ID as "RFE ID",
       r.EMP_NAME as Requestor,
       r.LAB_NAME as Lab,
       r.STATUS as "Current Status",
       r.EXPL as Explanation,
       r.ALT_PRO as "Alternative Protections",
       r.REVIEW_DATE as "Review Date"
from RFE_VIEW r, F15E4Cont c, F15E4emp e, F15E4Role_code rc
where e.emp_id = v('P1_LABEMP')
and r.rfe_id = c.F15E4RFE_RFE_ID
and e.emp_id = c.F15E4EMP_EMP_ID
and e.emp_id in (select emp_id
                  from F15E4emp
                  where f15e4lab_lab_id = v('P1_LAB')
                  AND typer = 'Sys Admin')
and rc.role_id = c.F15E4Role_code_role_ID
and rc.role = 'Sys Admin Approver'
and r.status = 'Submitted'

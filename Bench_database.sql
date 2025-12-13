 select * from user_updatable_columns where table_name='V4';
 
 --statement level trigger
create table test3(col2 date);-- as  select * from emp;
select * from test3;
 
drop table test3;


create or replace trigger tr_name
after update on emp
begin
insert into test3 values(sysdate);
end;

update emp set salary=salary+10 where department_id=20;

select * from emp;

select * from test3;

commit;

truncate table test3;

drop trigger tr_name;

--row level trigger

create or replace trigger tr_name
after update on emp
for each row
begin
insert into test3 values(sysdate);
end;


update emp set salary=salary+10 where department_id=20;

select * from test3;


create table backup as select * from hr.employees where 1=2;

create or replace trigger tr_delete
after delete on emp
for each row
begin
insert into backup values
(:old.EMPLOYEE_ID,:old.FIRST_NAME	,:old.LAST_NAME,:old.EMAIL,:old.PHONE_NUMBER,:old.HIRE_DATE,:old.JOB_ID,:old.SALARY,:old.COMMISSION_PCT,:old.MANAGER_ID,:old.DEPARTMENT_ID);
end;

delete from emp where department_id=50; 

rollback;

select * from backup;
drop table backup;


 --complex view
 create or replace view v4
 as
 select first_name,department_name
 from hr.employees e,hr.departments d
 where e.department_id=d.department_id;


select * from v4;
update v4 set first_name='ABC' where first_name ='Jennifer';
update v4 set department_name='HR' where department_name ='Administration';

select * from v$version;

--instead of trigger
create or replace trigger tr_instead_complex_view
instead of update on v4
for each row
begin
update hr.departments set department_name=:new.department_name where department_name=:old.department_name;
end;


select * from v4;

update v4 set department_name='HR' where department_name ='Administration';

select * from user_updatable_columns where table_name='V4';


--materialized view

create materialized VIEW mv
as
select * from hr.employees;


select * from user_mviews;

create table test(srno number,country varchar2(20));
Insert into test (SRNO,COUNTRY) values (1,'pune');
Insert into test (SRNO,COUNTRY) values (2,'mumbai');
Insert into test (SRNO,COUNTRY) values (3,'india');
Insert into test (SRNO,COUNTRY) values (4,'Even');

select * from test;

create or replace view v6
as
select * from test;

create materialized VIEW mv5
as
select * from test;


update test set country='A' where srno=1;

select * from test;
select * from v6;

select * from mv5;

exec dbms_mview.refresh('MV5');

select rowid,srno,country from mv5;

--completer materialized view

create materialized view mv6
refresh complete
as
select * from test;

select rowid,srno,country from test;
select rowid,srno,country from mv6;

update mv6 set country='B' where srno=2;

--fast refresh materialized view
create materialized view log on test;


--read only view
create or replace view read_only_view
as
select * from test where srno>1 with read only;

select * from read_only_view;
 
 delete from read_only_view where srno=2;

 --force view
 
 create or replace force view
 f_view
 as
 select * from mm;
 
 select * from f_view;

create table dec31(srno number(10));

alter view f_view compile;

select * from f_view;

------------sequence

--create sequence seq_name
--start with n
--increment by n
--minvalue n
--maxvalue n
--cycle/nocycle
--cache/nocache;

create sequence seq_first
start with 5
increment by 2
maxvalue 100;

select seq_first.nextval from dual;

select seq_first.currval from dual;
 
--sequnce in primary key value

create sequence s1;

create table test2(srno number default s1.nextval primary key,fname varchar2(20));--this is allowed in 12c

SELECT  * FROM v$version;


create table test2(srno number  primary key,fname varchar2(20));--this is  allowed in 11g

insert into test2 values(s1.nextval,'Santosh');

select * from test2;

alter table test2 add deptno number;

select * from test2;

create sequence s2
start with 1001;

update test2 set deptno=s2.nextval;

select * from test2;

create sequence s3
start with 5
increment by 1
minvalue 3;

select s3.nextval from dual;

alter sequence s3 increment by -1;

select s3.nextval from dual;

alter sequence s3 stART WITH 4;--NOT ALLOWED

create sequence s4
start with 3
increment by 2
minvalue 5;


select * from user_sequences;

create sequence s5
start with 1
increment by 1
cache 2;
 
 
 
 select * from ane;

declare
a exception;
begin
if to_char(sysdate,'DY')='WED' then
raise a;
end if;
exception when a then
raise_application_error(-20345,'my exception raised on wednesday');
end;

declare
a exception;
pragma exception_init(a,-1400);
begin
insert into ane values(null,'GAjanan');
exception when a then
dbms_output.put_line('can not insert null values');
end;


--sqlcode
--sqlerrm
declare
v_errno number;
v_errmsg varchar2(20);
sal number;
begin
select salary into sal from hr.emp;
exception when others then
v_errno:=sqlcode;
v_errmsg:=sqlerrm;
insert into ane values(v_errno,v_errmsg);
end;

create table test5(srno number,fname varchar2(20));

insert into test5 values(104,'b');

create index select * from test5;
 on test5(srno);

select * from test5 where srno=104;

explain plan for select * from test5 where srno=104;

select * from table(dbms_xplan.display);

drop table test5;

select * from user_indexes where table_name='TEST5';

select * from test5;

drop index inx1;


create table inx_tble(empno number,ename varchar2(20),job varchar2(20),sal number,comm number);


insert into inx_tble select employee_id,first_name,job_id,salary,commission_pct from hr.employees;


select * from inx_tble;

--normal index
create index inx1 on inx_tble(empno);

drop index inx1;

create index inx2 on inx_tble(empno asc);

drop index inx2;


create index inx3 on inx_tble(empno desc);

drop index inx3;

create unique index inx4 on inx_tble(empno);

create unique index inx5 on inx_tble(ename);

--cannot CREATE UNIQUE INDEX; duplicate keys found

create unique index inx5 on inx_tble(ename asc);
 
 create unique index inx5 on inx_tble(ename desc);
 
 select * from user_indexes order by LAST_ANALYZED desc;
 
 select TABLE_NAME from dict where TABLE_NAME like 'USER_%INDEX%' OR 
 TABLE_NAME LIKE 'USER_IND%' OR TABLE_NAME 'USER____IND%';
 
 SELECT * FROM USER_IND_COLUMNS WHERE TABLE_NAME LIKE '%INX_TBLE%';
 
 --global index/normal index
 
 create index inx5 on inx_tble(job) global;
 
 drop  index inx5;
 
 create index inx6 on inx_tble(job) local;--this index you have to create on partition table
 
 
 --composite index
 create index inx7 on inx_tble(empno,ename,job);
 
 select * from user_ind_columns where table_name='INX_TBLE';
 USER_IND_COLUMNS
 
 SELECT INDEX_NAME,INDEX_TYPE,TABLE_NAME,COLUMN_NAME,COLUMN_POSITION,DESCEND FROM
 USER_INDEXES JOIN USER_IND_COLUMNS USING(TABLE_NAME,INDEX_NAME)
 WHERE TABLE_NAME='INX_TBLE';
 
 --REVERSE KEY INDEX;--data of columns will reverse
 
 create index inx8 on inx_tble(ename)reverse;
 
 
 --IOT - index organized table
 
 
 create table emp_iot(empno number primary key,ename varchar2(20),job varchar2(20),sal number,comm number) organization index;

 create cluster c(c1 number);
 
 create table c_cluster
 (empno number primary key,ename varchar2(20),job varchar2(20),sal number,comm number)  cluster c(empno);
 
 create index inx11 on cluster c;
 
 
 create table test6(srno number not null,fname varchar2(20),primary key(srno));
drop table test6;
select * from test6;
alter table test6 drop CONSTRAINT PK;
select * from user_constraints where table_name='TEST6';

alter table test6 add constraint pk primary key(srno);


create table test6(srno number not null,fname varchar2(20));

select * from user_constraints where table_name='TEST6';

drop  table test6;

alter table test6 add constraints uk unique(srno);


create table test6(srno number,fname varchar2(20));

alter table test6 modify srno not null;

alter table test6 add salary number;

select * from test6;

drop table test6;

create table test6(srno number,fname varchar2(20),salary number,check(salary>100));

create table test6(srno number,fname varchar2(20),salary number);
insert into test6 values(1,'a',50);

drop table test6;

alter table test6 add constraints ck check(salary>100);

select * from user_constraints where table_name='TEST6';

-----------foreign key constraints

select * from user_ind_columns where table_name='INX_TBLE';


 alter table test6 add (dept_name varchar2(20));
 
 alter table test6 add constraints pk primary key(deptno);
 
 alter table test6 drop (deptno);
 
 create table test6(deptno number primary key not null,deptname varchar2(20));
 
select * from test6;

insert into test6 values(10,'IT');
insert into test6 values(20,'CLERK');
insert into test6 values(30,'MANAGER');
insert into test6 values(40,'ASSISTANT');
insert into test6 values(50,'ENGINEER');

drop table test6;

SELECT * FROM TEST6;
SELECT * FROM TEST7;

create table test7(srno number primary key not null,fname varchar2(20),deptno number(10) references test6(deptno) on delete set null );

drop table test7;
select * from user_constraints where table_name='TEST7';

insert into test7 values(1,'a',10);
insert into test7 values(2,'b',30);
insert into test7 values(3,'d',50);

delete from test7 where srno in(1,2,3);

create table test7(srno number primary key not null,fname varchar2(20),deptno number);

drop table test7;

alter table test7 add constraint fk foreign key(deptno) REFERENCES test6(deptno);
 
select * from test7;
 
select * from test6;

delete from test6  where deptno=10;

truncate table test6 cascade;

alter table test6 drop primary key cascade;


--join 

--Below are the example of left outer join 
select e.employee_id,e.first_name,e.department_id  employee_dept,d.department_id department_dept
from hr.employees e,hr.departments d
where e.department_id=d.department_id(+);

--below are the example of right outer join
select e.employee_id,e.first_name,e.department_id employee_dept,d.department_id department_dept
from hr.employees e,hr.departments d
where e.department_id(+)=d.department_id;


--below are the example of full outer join
select e.employee_id,e.first_name,e.department_id employee_dept,d.department_id department_dept
from hr.employees e,hr.departments d
where e.department_id=d.department_id(+)
union
select e.employee_id,e.first_name,e.department_id employee_dept,d.department_id department_dept
from hr.employees e,hr.departments d
where e.department_id(+)=d.department_id;


--below are the example of full outer join
select e.employee_id,e.first_name,e.department_id employee_id,d.department_id department_dept
from hr.employees e full outer join hr.departments d
on(e.department_id=d.department_id);

--equi join
select e.employee_id,e.first_name,e.department_id,d.department_id
from hr.employees e,hr.departments d
where e.department_id=d.department_id;

--inner join
select e.employee_id,e.first_name,e.department_id employee_id,d.department_id department_dept 
from hr.employees e inner join hr.departments d
on(e.department_id=d.department_id);
 
--natural join
select employee_id,first_name,department_id employee_dept,department_id departments_dept
from hr.employees e natural join hr.departments d;

select * from hr.job_history;

select * from hr.employees where department_id=20 order by salary desc;
select first_name,count(*) from hr.employees group by first_name;




--single row subquery
select * from hr.employees where salary>(select avg(salary) from hr.employees);




select * from hr.employees where department_id=(select department_id from hr.departments where department_name='IT');

select e.first_name,d.department_name
from hr.employees e,hr.departments  d
where e.department_id=d.department_id
and d.department_name='IT';

select * from hr.employees where hire_date=(select min(hire_date) from hr.employees);

select * from hr.employees where department_id in(select department_id from hr.employees where first_name='Steven');



select department_name from hr.departments where department_id in(select department_id from hr.employees where salary>(select max(salary) from hr.employees where department_id=50));

select * from hr.employees where salary>(select max(salary) from hr.employees where department_id=50);

--select e.employee_id,e.first_name,e.salary,d.department_id
--from hr.employees e,hr.departments d
--where e.department_id=d.department_id
--and e.salary>(select max(salary) from hr.employees where department_id=50); this is wrong for above example

select max(salary) from hr.employees where salary <(select max(salary) from hr.employees);

select * from hr.employees where salary=(select max(salary) from hr.employees where salary<(select max(salary) from hr.employees));

select * from  hr.employees where salary=(select max(salary) from hr.employees where salary<(select max(salary) from hr.employees where salary<(select max(salary) from hr.employees)));



select job_id,avg(salary) from hr.employees group by job_id;

--lowest avg salary job 
select job_id,avg(salary) from hr.employees group by job_id having avg(salary)=(select min(avg(salary)) from hr.employees group by job_id);

select job_id,avg(salary) from hr.employees group by job_id having avg(salary)>(select avg(salary) from hr.employees where job_id='SH_CLERK');

select department_id,min(salary) from hr.employees group by department_id having min(salary)>(select min(salary) from hr.employees where department_id=50);

select  department_id  from(select department_id from hr.departments where department_id=50);


select * from hr.employees where department_id<all(20);

--max salary

select max(salary) from hr.employees where salary<all(select max(salary) from hr.employees);

select * from hr.employees where salary=(select max(salary) from hr.employees where salary<all(select max(salary) from hr.employees));


select * from hr.employees where salary>any(select salary from hr.employees where department_id=90);

select * from hr.employees where salary>any(select salary from hr.employees where department_id=30);

select * from hr.employees where hire_date<all(select min(hire_date) from hr.employees where department_id=50);

select max(salary) from hr.employees where salary<any(select max(salary) from hr.employees);


select * from hr.employees where salary>all(select salary from hr.employees where job_id='IT_PROG');

select * from hr.employees where salary<any(select salary from hr.employees where job_id='IT_PROG');

select * from hr.employees where salary>(select max(salary) from hr.employees where department_id=50);

select * from hr.employees where salary>(select min(salary) from hr.employees where department_id=50);


--inline view

select * from(select first_name,salary,salary*12 annsal from hr.employees) where annsal >100000;

--rownum
select rownum,e.* from hr.employees e;
select count(rownum) from hr.employees;

select * from hr.employees where rownum<=2;
select * from hr.employees where rownum=1;

select * from hr.employees where rownum<5;

 

select * from(select * from hr.employees order by salary desc) where rownum<=5;

declare
--cursor c1 is select * from(select * from hr.employees order by salary desc) where rownum<=5;
 cursor c1 is  select * from hr.employees order by salary desc;
i hr.employees%rowtype;
begin
open c1;
loop 
fetch c1 into i;
exit when c1%rowcount>5;
dbms_output.put_line(i.first_name||' '||i.salary);
end loop;
close c1;
end;


select * from(select * from hr.employees order by salary desc) where rownum<=5
minus
select * from(select * from hr.employees order by salary desc) where rownum<=4;

select * from(select * from hr.employees order by salary desc) where rownum<=10
minus
select * from(select * from hr.employees order by salary desc) where rownum<=9;

select * from hr.employees where rownum<=2
minus
select * from hr.employees where rownum<=1;

select * from hr.employees where rownum between 1 and 10;

 select * from hr.employees where rownum<=7
 minus
 select * from hr.employees where rownum<=3;

select * from hr.employees
minus
select * from hr.employees where rownum<=(select count(*)-2 from hr.employees);


select * from(select rownum r,e.* from hr.employees e) where r<=2;

select * from(select rownum r, e.* from hr.employees e) where r<=2
minus
select * from(select rownum r,e.* from hr.employees e) where r<=1;

select * from(select rownum r,e.* from hr.employees e) where r between 4 and 7;

select * from(select rownum r,e.* from hr.employees e) where r in(1,4,6,8,9);

select * from(select rownum r,e.* from hr.employees e) where r=1 or r=(select count(*) from hr.employees);

select * from(select rownum r,e.* from hr.employees e) where mod(r,2)=0;

 select * from(select rownum r,first_name,salary from(select * from hr.employees order by salary desc)) where r=5;
 
 select * from(select rownum,e.* from hr.employees e order by salary desc) where rownum<=3
 minus
 select * from(select rownum,e.* from hr.employees e order by salary desc) where rownum<=2;
 
 select * from(select rownum r,e.* from(select * from hr.employees order by salary desc) e) where r=2;
 
 select * from (select rownum r,e.* from(select * from hr.employees e order by salary desc)r ) where r<=5;
 
 --rank
select department_id,salary,rank()over(partition by department_id order by salary desc) rank  from hr.employees group by department_id,salary;
 
select * from( select department_id,salary,rank()over(partition by department_id order by salary desc) rank from hr.employees)order by department_id;

--2 tops most salary in each department 

select * from(select department_id,salary,rank()over(partition by department_id order by salary desc)rank from hr.employees group by department_id,salary) where rank<=2;


--dense rank
select * from (select department_id,salary,
rank() over(partition by department_id order by salary desc) rank,
dense_rank() over (partition by department_id order by salary desc) dense_rank from hr.employees) order by department_id;

--
select * from (select department_id,salary,dense_rank() over (partition by department_id order by salary desc) dense_rank from hr.employees) order by department_id;

--row number;

select * from(select department_id,salary, row_number()over (partition by department_id order by salary desc) row_number from hr.employees) order by department_id;


select * from
(select department_id,salary,count(*)              over(partition by department_id)dept_count,
                                                           row_number() over(partition by department_id order by salary desc) row_number,
                                                           rank()                  over(partition by department_id order by salary desc) rank,
                                                           dense_rank()   over(partition by department_id order by salary desc) dense_rank from hr.employees) order by department_id;
                                                           
                                                           
  --department wise count through the analytical function
 select  distinct department_id,count(*) over(partition by department_id) dept_count from hr.employees order by department_id;
            
 --department wise count through the aggregate function
 select department_id,count(*) from hr.employees group by department_id;
        
        --lead / lag
        select department_id,employee_id,first_name,salary,
        lag(salary,1,0)over(partition by department_id order by salary) pre_value,
        lead(salary,1,0) over(partition by department_id order by salary) next_value from hr.employees order by department_id;
                                                           
                                                           
    select department_id,employee_id,first_name,salary,
    lag(salary,1)over(order by salary) pre_val,
    lead(salary,1) over(order by salary)next_val from hr.employees order by salary;
    
    
    select department_id,employee_id,first_name,salary,
    lag(salary,5,1) over(partition by department_id order by salary desc) pre_value,
    lead(salary,5,1) over(partition by department_id order by salary desc)next_value from hr.employees order by department_id;
    
    
    select department_id,min(salary), max(salary) from hr.employees group by department_id;
    
    
    
    --rowid
    
    select rowid,rownum,first_name,employee_id from hr.employees;
    
    --first row using rowid
    
    select * from hr.employees where rowid=(select min(rowid) from hr.employees);
    
    
    --last row using rowid
    
    select * from hr.employees where rowid=(select max(rowid) from hr.employees);
    
    --second row using analytical funciton rowid

select * from(select employee_id,first_name,salary,row_number() over(order by rowid)r from hr.employees) where r=2;
    
select * from hr.employees where rownum<=2
minus
select * from hr.employees where rownum<=1;
    
 select * from(select rownum r,employee_id,first_name,salary from hr.employees) where r=2;
    
--last 2 record using analytical and rowid 

select * from (select employee_id,first_name,salary,row_number()over(order by rowid desc)r from hr.employees)where r<=2;

select * from hr.employees
minus
select * from hr.employees where rownum<=(select count(*)-2 from hr.employees);

--2 row from each dept using analytical and rowid
select * from(select rowid,employee_id,first_name,salary,department_id,row_number()over(partition by department_id order by rowid)r from hr.employees ) where r=2;

--delete duplicat row from table
delete from hr.employees where rowid not in(select max(rowid) from hr.employees group by department_id);


--co-related subquery

select e.*  from hr.employees e where exists(select * from hr.departments  d where d.department_id=e.department_id);

select distinct d.*
from hr.employees e,hr.departments d
where e.department_id(+)=d.department_id
and e.department_id is null;


select * from hr.employees e where 2=(select count(distinct(salary)) from hr.employees e2 where e2.salary>=e.salary);

select * from hr.employees e1 where salary>(select avg(salary) from hr.employees e2 where e1.job_id=e2.job_id);

select * from hr.employees where salary>(select avg(salary) from hr.employees);


select avg(salary) from hr.employees where job_id='IT_PROG';

select * from hr.employees where job_id='IT_PROG';


--exists operator

--waq to display department from dept tale those dept having employees in emp table by using corelated subqyery exists operator;

select * from hr.departments d where exists(select * from hr.employees e where e.department_id=d.department_id);

--waq to display department from dept tale those dept having employees in emp table by using non corelated subqyery exists operator;

select * from hr.departments where department_id in(select department_id from hr.employees);

--waq to dipslay the employees who are getting same salary as scott salary from emp table by using co-related query exists operator

select * from hr.employees e1 where exists(select * from hr.employees e2 where e2.salary=e1.salary and e2.first_name='Steven');

--waq to dipslay the employees who are getting same salary as scott salary from emp table by using subquery

 select  * FROM hr.employees WHERE salary in (SELECT salary FROM hr.employees  WHERE first_name = 'Steven');

--waq to display those department from dept table does not have a employees in emp table by using co-related subquery

select * from hr.departments d where not exists(select * from hr.employees e where e.department_id=d.department_id);

--waq to display those department from dept table does not have a employees in emp table by using non co-related subquery

SELECT *  FROM hr.departments WHERE department_id NOT IN (SELECT department_id FROM hr.employees WHERE department_id IS NOT NULL);

--merge statement

merge into hr.emp3 e3 using hr.emp e
on(e3.department_id=e.department_id)
when matched then
update set e3.employee_id=e.employee_id,e3.first_name=e.first_name,e3.last_name=e.last_name
when not matched then
insert(EMPLOYEE_ID,	FIRST_NAME,	LAST_NAME,	EMAIL,	PHONE_NUMBER,	HIRE_DATE,	JOB_ID,	SALARY,	COMMISSION_PCT,	MANAGER_ID,	DEPARTMENT_ID)
values(e.EMPLOYEE_ID,e.FIRST_NAME,	e.LAST_NAME,	e.EMAIL,	e.PHONE_NUMBER,	e.HIRE_DATE,	e.JOB_ID,	e.SALARY,	e.COMMISSION_PCT,	e.MANAGER_ID,	e.DEPARTMENT_ID);

 















    
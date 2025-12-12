create table abc4(srno number);
rename abc4 to abc5;
select * from abc5;

select 1+'1' from dual;--2
select '1'+'1' from dual;--2
select  '1''+''1''a''a'  from dual;--
 
 
select nvl2(null,20,30) from dual;
select * from hr.employees;
select nvl2(10,20,30) from dual;

select commission_pct,nvl2(commission_pct,20,500) from hr.employees;

select * from hr.employees where first_name like 'M%';--first letter
select * from hr.employees where first_name like '_a%';--second letter a
select * from hr.employees where first_name like '__e%';--third letter e
select * from hr.employees where first_name like '%e';--Last letter e
select * from hr.employees where first_name like '%e_';--second letter e
select * from hr.employees where first_name like '%e__';--third letter e
select * from hr.employees where first_name like '_%e%_';
select * from hr.employees where first_name like 'S_%e_';
select * from hr.employees where first_name like 'R_%e';

select first_name||' '||last_name from hr.employees;

--number function

select abs(-5) from dual;
select abs(0) from dual;
select abs('e') from dual;

select * from dual;

select mod(2,0) from dual;	 
select mod(0,2) from dual;	 
select mod(10,3) from dual;	 
select mod(10,2) from dual;	 
select * from dual;	

select round(1.7) from dual;	
select round(1.234567,3) from dual;

select round(34.456,2) from dual;

select round(00002,9) from dual;

select round(1223.10267,3) from dual;

select round(34244.362,1) from dual;

select round(47473.34,4) from dual;

select round(1475.789,-1) from dual;

select round(123658.857,-3) from dual;

select round(9883993.4949,-8) from dual;

--trunc--
select trunc(1.8) from dual;

select trunc(1.23456,4) from dual;

select trunc(3344.484,3) from dual;

select trunc(46833.373,-4) from dual;

--ceil

select ceil(1.3) from dual;

select ceil(abs(-3.1)) from dual;

select ceil(19.2) from dual;

select ceil(1.1) from dual;

--floor--
select floor(1.2) from dual;

select floor(-3.5) from dual;

select floor(-10.33444) from dual;

select floor(-3333) from dual;

select floor(1.9) from dual;

select floor(-1.9) from dual;

select floor(-168.3) from dual;

select greatest(10,4,3) from dual;

select greatest(10, null,1) from dual;--return null values

select greatest('gajanan','shindea','jagtap') from dual;

select greatest('gajanana','gajanane') from dual;

select least(1,2,3) from dual;

select employee_id,first_name,salary,commission_pct,greatest(salary,commission_pct) from hr.employees;

--number function--
select upper(first_name) from hr.employees;
select lower(first_name) from hr.employees;

update hr.employees set first_name=upper(first_name)  where department_id=10;

select * from hr.employees   where department_id=10;
update hr.employees set first_name=lower(first_name) where department_id=10;

select initcap(first_name) from hr.employees;

update  hr.employees set first_name=initcap(first_name) where department_id=10;

select length('1234567890!@#$%^&*()-_=+/?.>,<:;{}[]`~\|') from dual;
select length('" "') from dual;

--substr--

select substr('gajanan',2,3) from dual;

select substr('ABCDEFGHIJ',4,7) from dual;

select first_name,substr(first_name,2) from hr.employees;

select substr('ABCDEFGH',-4,2) FROM DUAL;

select substr('ABCDEFGH',-1) FROM DUAL;

select substr('GAJANAN',-8) FROM DUAL;--NULL

select substr('GAJANAN',-7) FROM DUAL;

select * from hr.employees where substr(first_name,2,2)='ee';

select * from hr.employees where length(first_name)>8;

select * from hr.employees where length(first_name)=5;

--instr--

select instr('ABC*D','*') from dual;

select instr('ABCDEFGHCDIJKLCDMNP','CD',-6,2) from dual;

select instr('ABCDEFGHCDIJKLCDEMNP','CD',-6,2) from dual;

select instr('ABCDEFGHCDIJKLCDMNP','CD',-5,2) from dual;

select instr('AB*CD*EF','*',-3,1) from dual;

select instr('geajanan','a',-2,1) from dual;

select instr('gajanan','a',2,1) from dual;

 
--lpad

select lpad('gajanan',10,'*') from dual;--***gajanan

select lpad('Gajanan',8,'#') from dual;

select lpad('Gajanan',6,'*') from dual;--Gajana

select lpad('Gajanan',5,'$') from dual;

--rpad--
select rpad('Gajanan',10,'*') from dual;

select rpad('Gajanan',8,'*') from dual;

select rpad('Gajanan',6,'#') from dual;

select substr('abcdefgh',-2,3) from dual;
select substr('abcdefgh',-4) from dual;
select substr(email,9,5) from email;
select instr(email,'.',1,1)from email;

select * from hr.employees where substr(first_name,1,2)='Da';

select * from hr.employees where length(first_name)>5;

select instr('abc*d','*') from dual;

select instr('abcdefghcdijklcdmnd','cd',-6,2) from dual;

select instr('abcdefghcdijklcdmnd','cd',-5,2) from dual;

select instr('AB*CDjhj*EF*ghhjj*jjj*','*',-3,2) from dual;


select * from hr.employees;

create table email(srno number(10),email varchar2(20));

insert into email values(1,'gajanan@gmail.com');
insert into email values(2,'santosh@gmail.com');
insert into email values(3,'amol@yahoo.com');
insert into email values(4,'arun@yahoo.com');
insert into email values(5,'satish@mphasis.com');
insert into email values(6,'rohan@tata.com');

select * from email;

select email, instr(email,'@',1.1)-1 from email;

select lpad(email,instr(email,'@',1.1),'#') from email;

select rpad('Gajanan',10,'*') from dual;

select email,lpad(email,length(email)+10,'*') from email;

select rpad(email,length(email)+3,'*') from email;

select lpad(rpad(email,length(email)+3,'*'),length(email)+6,'*') from email;

select  email,instr(email,'@',1.1)+1 from email;--@

select email,instr(email,'.',1,1) from email;--.

select email,substr(email,instr(email,'@',1.1),6) from email;

select email,substr(email,instr(email,'@',1.1)+1,instr(email,'.',1,1)) from email;

select email,substr(email,instr(email,'@',1.1),instr(email,'.',1,1)) from email;

select count(*),substr(email,instr(email,'@',1.1),instr(email,'.',1,1)) as Email_Id from email group by substr(email,instr(email,'@',1.1),instr(email,'.',1,1)); 

select department_id from hr.employees group by department_id;

select rpad(lpad('gajanan',10,'#'),15,'@') from dual;

select email,lpad(email,20,'*') from email;

select email,lpad(substr(email,instr(email,'@',1.1),instr(email,'.',1,1)),15,'*') from email;--*****@gmail.com

select length(email), email from email;

select email,instr(email,'@',1,1)-1 from email;

select email,length(substr(email,1,instr(email,'@',1,1)-1)) from email;

select email,length(substr(email,1,instr(email,'@',1,1)-1)),substr(email,1,instr(email,'@',1,1)-1) from email;

select email,length(substr(email,1,instr(email,'@',1,1)-1)),substr(email,1,instr(email,'@',1,1)-1) from email;

select email,lpad(email,length(email)+5 ,'*') from email;

select substr('gajanan',0,0) from dual;

select substr('gajanan',-3,5) from dual;     


select count(*), substr(email,instr(email,'@',-1,1),length(email)) from email group by substr(email,instr(email,'@',-1,1),length(email));


select email,instr(email,'.',-1,1) from email;

select email,instr(email,'.',-1,1) from email;

select  substr(email,instr(email,'@',-1,1),length(email)) from email;

select  length(substr(email,instr(email,'.',-1,1),length(email))) from email;

select email,substr(email,8,6) from email;

select  email,substr(email,instr(email,'@',-1,1),length(email)) from email;

select  email,instr(email,'.') from email;--found position of (.)

select  email,substr(email,instr(email,'@',-1,1),length(substr(email,instr(email,'@',-1,1)) )-4) from email;--gajanan@gmail.com	@gmail

 select lpad(substr(email,instr(email,'@',1,1)),length(email),'*')from email;--*******@gmail.com


--ltrim--
select ltrim('gajanan','g') from dual;
select ltrim('gajanan',null) from dual;--null
select ltrim('gajanan','-1') from dual;--gajanan
select ltrim('gajanan',' ') from dual;--gajanan

select job_id,ltrim(job_id,'PSA') from hr.employees;

update emp set job_id=ltrim(job_id,'PSA');

select * from emp;

rollback;
 
 
-- rtrim--
 
 select rtrim('gajanan','n') from dual;
 
 --trim--
 select trim('a' from 'aaagajananaa') from dual;
 
 --leading--left side trim--
 select trim(leading 'a' from 'aaagajananaa') from dual;
 
 select trim(leading 'ss' from 'SSDEERREDSSDSS') from dual;--trim should have only one character
 
 select trim(leading 'S' from 'SSDEERREDSSDSS') from dual;--
 
  select lpad(trim(leading 'S' from 'SSDEERREDSSDSS'),length(trim(leading 'S' from 'SSDEERREDSSDSS'))+4,'*') from dual;--****DEERREDSSDSS
 
 --trailing --right side trim--
 
 select trim(trailing 'S' from 'SSDEERREDSSDSS') from dual;
 
 select rpad(trim(trailing'S' from 'SSDEERREDSSDSS'),length(trim(trailing'S' from 'SSDEERREDSSDSS'))+5,'*')  from dual;--SSDEERREDSSD*****
 
create table tble_trim(srno number,name varchar2(20));
alter table tble_trim add primary key(srno);
insert into tble_trim values(1,'"gajanan');
insert into tble_trim values(2,'gajanan"');
insert into tble_trim values(3,'@gajanan');
insert into tble_trim values(4,'gaj@anan');
insert into tble_trim values(5,'gajanan)()()');
insert into tble_trim values(6,'"gajanan!!');
insert into tble_trim values(7,'"gajanan  ');
select * from tble_trim;

select name,trim('"@()!!' from name) from tble_trim;

select ltrim(name,'"@') from tble_trim;
select rtrim(name,'")(!! ') from tble_trim;

select rtrim(ltrim(name,'"@'),'")(!! ') from tble_trim;

--tranlsate
select translate('gajanan','ga','mn') from dual;

select translate('gajanan    ','   ','a') from dual;

select translate('gajanan','a',' ') from dual;

select translate('gajanan','a',1) from dual;

select translate('g1j1n1n',1,'a') from dual;--gajanan

select translate('12345','a',1) from dual;--12345

select translate('A B C',' ','AB') from dual;--AABAC --it will take only A reason : translate use character by character
----------------------------------------------
--Date function---

--sysdate

select sysdate from dual;


--add_months

select add_months(sysdate,1) from dual;
select add_months(sysdate,-1) from dual;
select add_months(sysdate,'19-APR-25') from dual;
--last_day()
select last_day(sysdate) from dual;

select last_day('30-01-25') from dual;

select next_day(sysdate,'Monday') from dual;--next day of specified date

--next day
select next_day('21-04-25','Monday') from dual;--next day of specified date

--months between
select months_between(sysdate,'17-03-25') from dual;

select sysdate+1 from dual;
select sysdate-2 from dual;
select sysdate-sysdate from dual;
select sysdate+sysdate from dual;--not allowed

select last_day(sysdate) from dual;
select last_day(add_months(sysdate,-1))+1 from dual;

select next_day(last_day(add_months(sysdate,-1))+1,'Monday') from dual;

--to_char

select to_char(sysdate,'DAY') from dual;--friday

select to_char(sysdate,'day') from dual;

select to_char('10-03-25','day') from dual;--need to use to_date function

select to_char(sysdate,'d') from dual;--day of the week
select to_char(sysdate,'dd') from dual;--day of months
select to_char(sysdate,'DDD') from dual;--day of the year
select to_char(sysdate,'mm') from dual;--which months
select to_char(sysdate,'yy') from dual;--which year like 2024,2025
select to_char(sysdate,'yyyy') from dual;--this will display frull year
select to_char(sysdate,'DDTH') from dual;--18TH
select to_char(sysdate,'DDSPTH') from dual;--EIGHTEENTH
select to_char(sysdate,'HH:MI:SS') from dual;--02:34:14
select to_char(sysdate,'HH24:MI:SS') from dual;--14:34:54
select to_Char('20-JAN-25','DD/MONTH/YY') from dual;--WILL GET ERROR

select last_day('15-AUG-2024') from dual;

--to_date


select to_date('10-DEC-2024') from dual;
select to_date('10-12-24') from dual;

select to_date('10-12-24','DD/MM/YY') from dual;

select to_date('10-12-2024')+5 from dual;

select to_date('10-DEC-2024')+1 from dual;


--to_date


select to_date('10-DEC-2024') from dual;

select to_date('10-12-24') from dual;

select to_date('10-12-24','DD/MM/YY')+1 from dual;

select to_date('19-12-24','DD-MM-YY')+1 from dual;

select to_date('10-12-2024')+5 from dual;

select to_date('10-DEC-2024')+1 from dual;


select to_date('19-12-2024','DD-MON-YYYY')+1 from dual;
select to_date('19-12-2024','DD-MM-YYYY')+1 from dual;

select to_date('DEC-10-2024','MON-DD-YY') from dual;

select to_char(to_date('05-JUNE-2025','DD/MON/YYYY'),'DAY-FMMONTH-YYYY') from dual;


SELECT TO_CHAR(SYSDATE,'DAY-MONTH-YYYY') from dual;

select to_char(sysdate,'DAY-FMMONTH-YYYY') from dual;

select to_char(sysdate,'DAY-DD-DDD') FROM DUAL;

select to_char(sysdate,'DD') from dual;

select to_char(sysdate,'DDD') from dual;


select * from hr.employees where to_char(hire_date,'DD_MON_YYYY') like '%DEC%';

select hire_date from hr.employees where to_char(hire_date,'MON')='DEC';

select to_char(hire_date,'DD_MON_YYYY') from hr.employees;

select to_Char(hire_date,'DD_MONTH-YYYY'),to_char(hire_date,'YYYY') from hr.employees where to_char(hire_date,'YYYY')='2003';



--automatic conversation

select last_day('15-AUG-2024') from dual;

select last_day(to_date('15-08-2024','DD_MM-YYYY')) from dual;

create table test(col1 date);

select * from test;

insert into test values(to_date('19-08-2024','DD-MM-YYYY'));


--round and trunc

select to_char(sysdate,'DD-MM-YYYY HH24:MI:SS') from dual;

select to_char(round(sysdate),'dd-mm-yyyy HH24:MI:SS') from dual;

select TO_CHAR(to_date('10-11-2024 21:11:11','DD-MM-YYYY HH24:MI:SS')) from dual;

SELECT TO_CHAR(TRUNC(sysdate),'DD-MON-YY HH24:MI:SS') from dual;

select to_char(trunc(sysdate),'DD-MON-YYYY HH24:MI:SS') from dual;

SELECT ROUND(SYSDATE,'year') FROM DUAL;

SELECT ROUND(TO_DATE('15-june-2025','DD-MON-YYYY'),'year') FROM DUAL;--01-01-2025

SELECT ROUND(TO_DATE('15-jul-2025','DD-MON-YYYY'),'year') FROM DUAL;--add one year

select round(sysdate,'year') from dual;

select round(to_date('01-JUL-2025','DD-MON-YYYY'),'year') from dual;

select round(sysdate,'month') from dual;

select round(sysdate,'day') from dual;

select trunc(sysdate,'year') from dual;

select trunc(sysdate,'month') from dual;

select trunc(sysdate,'day') from dual; 

select to_char(sysdate,'DAY') from dual;

select last_day(add_months(trunc(sysdate),-1))+1 from dual;
select last_day(add_months(round(sysdate),-1))+1 from dual;

select trunc(sysdate,'month') from dual;


SELECT EXTRACT(DAY FROM LAST_DAY(SYSDATE)) num_of_days FROM dual;
 
SELECT SYSDATE, TO_CHAR(LAST_DAY(SYSDATE), 'DD') num_of_days FROM dual
 
-- Days left in a month --
SELECT SYSDATE, LAST_DAY(SYSDATE) "Last", LAST_DAY(SYSDATE) - SYSDATE "Days left"
FROM DUAL;

select to_number(to_char(last_day(sysdate),'dd')) TotalDays from dual;


SELECT EXTRACT(DAY FROM LAST_DAY(SYSDATE)) num_of_days FROM dual;

SELECT SYSDATE, TO_CHAR(LAST_DAY(SYSDATE), 'DD') num_of_days FROM dual

SELECT TO_CHAR(SYSDATE,'dd') FROM DUAL;

SELECT TO_CHAR(LAST_DAY(SYSDATE),'dd') FROM DUAL;

-- Days left in a month --
SELECT SYSDATE, LAST_DAY(SYSDATE) "Last", LAST_DAY(SYSDATE) - SYSDATE "Days left"
FROM DUAL;



--rollup--
select department_id,sum(salary) from hr.employees group by rollup(department_id);--grand total;

--cube--
select department_id,sum(salary) from hr.employees group by cube(department_id) order by department_id asc;

select department_id,job_id,sum(salary) from hr.employees group by department_id,job_id order by department_id,job_id;

select * from hr.employees where department_id=30;


select department_id,job_id,sum(salary) from hr.employees group by rollup(department_id,job_id) order by department_id,job_id;


select department_id,job_id,sum(salary) from hr.employees group by cube(department_id,job_id) order by department_id,job_id;


select department_id,job_id,sum(salary) as sumsal,
case grouping_id(department_id,job_id)
when 1 then 'Department subtotal'
when 2 then 'Job subtotal'
when 3 then 'Grand total'
end as subtotals
from hr.employees where department_id=50
group by cube(department_id,job_id) order by department_id,job_id;

select department_id,job_id,sum(salary) as sumsal,
case grouping_id(department_id,job_id)
when 1 then 'Department subtotal'
when 2 then 'Job subtotal'
when 3 then 'Grand total'
end as subtotals
from hr.employees
group by cube(department_id,job_id) order by department_id,job_id;



select * from hr.employees where department_id=50;
select count(*) ,department_id from hr.employees group by department_id;
select department_id from hr.employees group by department_id;
select department_id from hr.employees group by department_id,job_id;
select department_id,sum(salary) from hr.employees group by department_id order by department_id asc;
select department_id,count(*) from hr.employees group by department_id having count(*)>3;


--inner join--

select e.employee_id,e.department_id,d.department_id
from hr.employees e,hr.departments d 
where e.department_id=d.department_id;



select e.employee_id,e.department_id,d.department_id,e.first_name
from hr.employees e,hr.departments d
where e.department_id=d.department_id;
 
 select job_id,count(*),max(salary),min(salary) from hr.employees group by job_id having sum(salary)>20000;
 
 select department_id,sum(salary) from hr.employees group by rollup(department_id)  order by department_id;
 
  select department_id,job_id,sum(salary) from hr.employees group by cube(department_id,job_id)  order by department_id,job_id;
  
  --non equie join--
  
  create table tble1(srno number(10),sname varchar2(20));
  
insert into tble1 values(10,'a');
 insert into tble1 values(10,'b'); 
 insert into tble1 values(10,'c');
 insert into tble1 values(20,'d');
 insert into tble1 values(30,'e');
 insert into tble1 values(null,'f');
 
 select * from tble1;
 delete from tble1 where srno is null;
 
   create table tble2(srno number(10),sname varchar2(20));
  
insert into tble2 values(10,'g');
 insert into tble2 values(20,'h'); 
 insert into tble2 values(20,'i');
 insert into tble2 values(30,'j');
 insert into tble2 values(null,'k');
 insert into tble2 values(null,'l');

select * from tble1;
select * from tble2;

select t1.*,t2.*
from tble1 t1,tble2 t2
where t1.srno=t2.srno;

 select t1.*,t2.*
from tble1 t1,tble2 t2
where t1.srno>t2.srno;

 select t1.*,t2.*
from tble1 t1,tble2 t2
where t1.srno<>t2.srno;


---self join
select e1.employee_id as emp_id,e1.salary as emp_salary,e2.MANAGER_ID as mgr_id,e2.salary as mgr_salary
from hr.employees e1,hr.employees e2
where e1.MANAGER_ID=e2.employee_id
and e1.salary>e2.salary;

select e1.employee_id as emp_id,e1.hire_date as hire_date,e2.MANAGER_ID as mgr_id,e2.hire_date as hire_date
from hr.employees e1,hr.employees e2
where e1.manager_id=e2.employee_id
and e1.hire_date<e2.hire_date;

--inner join--

select tble1.*,tble2.*
from
tble1 inner join tble2
on(tble1.srno=tble2.srno)
and tble1.srno=10;

select * from tble1;
select * from tble2;

--using clause

select srno,tble1.sname from tble1 join tble2
using(srno);
 
 select * from hr.employees join hr.departments using(department_id);



--left outer join

select *
from tble1  left outer  join tble2
on tble1.srno=tble2.srno;

--right outer join

select *
from tble1  right outer  join tble2
on tble1.srno=tble2.srno;

--full outer join
select *
from tble1  full outer  join tble2
on tble1.srno=tble2.srno;



 select *
 from hr.employees left outer join hr.departments
 on hr.employees.department_id=hr.departments.department_id;

--natural join

select * from tble1 natural join tble2;
select * from tble1;
select * from tble2;

select * from tble1 natural join tble2 using(srno);-- where tble1.srno=tble2.srno;
   

select * from hr.employees natural join hr.departments;

--employee and his manager

select e2.empid,e2.ename as employee_name,e1.ename as manager
from em e1,em e2
where e2.mgr_id=e1.empid;


--department wise max salary with employee
select *  from hr.employees where (department_id,salary) in (select department_id,
max(salary) from hr.employees group by department_id);

select * from hr.employees where departement_id in(select department_id from hr.departments order by department_id);


select * from(select rownum r,first_name,salary from(select * from hr.employees order by salary desc)) where r=5;
select rownum r,hr.employees.* from hr.employees order by salary desc;

--subquery--
--single row subquery

select * from hr.employees where salary >(select avg(salary) from hr.employees);


select * from hr.employees where department_id =(select department_id from hr.departments where department_name='Shipping');

select d.department_name,e.*
from hr.employees e,hr.departments d
where e.department_id=d.department_id
and d.department_name='Shipping';

select * from hr.employees where hire_date=(select min(hire_date) from hr.employees);

select * from hr.employees where department_id =(select department_id from hr.employees where first_name='Neena');

select * from hr.employees where salary>(select max(salary) from hr.employees where department_id=80);

select * from hr.employees where salary =(select max(salary) from hr.employees);

select * from hr.departments where department_id =(select department_id from hr.employees  where salary=(select max(salary) from hr.employees));

select max(salary) from hr.employees where salary<(select max(salary) from hr.employees);

select * from hr.employees where salary=(select max(salary) from hr.employees where salary<(select max(salary) from hr.employees));

select job_id,avg(salary) from hr.employees group by job_id having avg(salary)=(select min(avg(salary)) from hr.employees group by job_id); 

select job_id,avg(salary) from hr.employees group by job_id having avg(salary)>(select avg(salary) from hr.employees where job_id='ST_CLERK');

select department_id,min(salary) from hr.employees group by department_id having min(salary)>(select min(salary) from hr.employees where department_id=50);

select * from hr.employees where manager_id in(select employee_id from hr.employees where first_name ='Alexander');

select department_id,max(salary) from hr.employees group by department_id;

select * from hr.employees where salary in (select max(salary) from hr.employees group by department_id);

select * from hr.employees where salary in (select max(salary) from hr.employees group by job_id);

 select e.*,d.*
 from hr.employees e,hr.departments d
 where e.department_id=d.department_id
 and d.department_name in('Administration','Marketing');
select * from hr.departments;


select * from hr.employees where department_id 
in(select department_id from hr.departments where department_name in('Administration','Marketing'));


 select * from hr.employees where job_id in(select job_id from hr.employees where first_name ='Laura');

---multiple column

select * from hr.employees where(job_id,manager_id) in(select job_id,manager_id from hr.employees where first_name='Steven');

select department_id,salary,first_name from hr.employees where salary in(select max(salary) from hr.employees group by department_id);

select * from hr.employees where(department_id,salary) in(select department_id,max(salary) from hr.employees group by department_id);

select e.first_name,d.department_name,e.salary 
from hr.employees e,hr.departments d
where e.department_id=d.department_id
and (e.salary,nvl(e.commission_pct,0))
in(select e.salary,nvl(e.commission_pct,0) from hr.employees e,hr.departments d
where e.department_id=d.department_id
and d.location_id='1400');

select * from hr.locations;

select * from hr.countries;

select * from hr.departments;

select * from hr.employees where(job_id,hire_date) in(select job_id,min(hire_date) from hr.employees group by job_id);


select job_id,min(hire_date)
from hr.employees group by job_id;

--inline view

select * from (select first_name,salary,salary*12 as annsal from hr.employees) where annsal>200000;

select * from hr.employees where rownum<=10 order by salary desc;


select department_name,max_sal from hr.departments e,(select department_id,max(salary) max_sal from hr.employees group by department_id)d
where e.department_id=d.department_id;

select * from hr.departments;


UPDATE
    (SELECT
            salary
        FROM
            hr.employees
        INNER JOIN hr.departments  using (department_id)
        WHERE
            department_name = 'Administration'
    )
SET
    salary = salary * 1.15; 


--rownum

select * from hr.employees where rownum=1;

select * from hr.employees where rownum<=4;


select * from (select * from hr.employees order by salary desc) where rownum<=5;

select * from hr.employees where rownum<=5 order by salary desc;

select * from hr.employees;
select job_id,count(*) from hr.employees where job_id like 'A%' group by job_id having count(*)>1;

select * from hr.employees where job_id like 'A%';


 
select *
from hr.employees e,hr.departments d 
where e.department_id=d.department_id;

select * from hr.employees where department_id not in(select department_id from hr.departments);

select  * 


create table de(deptid number not null primary key,deptname varchar2(30),department_head varchar2(30),location varchar2(30));

create table child(empid number primary key not null,name varchar2(30),country varchar2(30),age number,salary number,deptid number);

alter table child add foreign key(deptid) references de(deptid);
 
 insert into de values(104,'Engineering','Kabir','Benglore');
 
 select * from de;
 
 insert into child values(4,'Naveen','Sri Lanka',24,40000,null);
 
 
 select * from child where deptid not in(select deptid from de);
 --fetch data from first table only that is not in second table
 select d.*,c.*
 from de d,child c
 where d.deptid(+)=c.deptid
 and c.deptid is null;
 
 --views
 create or replace view v1
 as
 select * from hr.employees;
 
 
 select * from v1;
 
 select text from user_views where view_name ='V1';
 
 
 create or replace view v2
 as
 select department_id,count(*) as dd from hr.employees group by department_id;
 
 select * from v2;
 
 select text from user_views where view_name='V2';
 
 create or replace view v3
 as
 select rownum,first_name from hr.employees;
 
 create or replace view v3
 as
 select rownum as ss, first_name from hr.employees;
 
 select * from v3;
 
 --complex view
 create or replace view v4
 as
 select first_name,salary,department_name
 from hr.employees e,hr.departments d
 where e.department_id=d.department_id;
 
 select * from v4;
 
 update v4 set first_name='ABC' where first_name ='Jennifer';
 
 select * from v4;
 
 update v4 set department_name ='HR' where department_name='Human Resources';
 
 select * from user_updatable_columns where table_name='V4';
 
create table test3(col2 date);-- as  select * from emp;
select * from test3;
 
drop table test3;

create or replace trigger tr_name
after update on test3
begin
insert into test3 values(sysdate);
end;

grant create any materialized view to hr;




select * from test2;




create materialized view log on test;



select seq_first.nextval from dual;

select req_first.currval from dual;


grant create public synonym to hr;


begin
update emp set salary=salary+10 where department_id=20;
dbms_output.put_line('no. of rows affected'||' '||sql%rowcount);
end;

select * from emp;


select sysdate from dual;

select add_months(sysdate,-1) from dual;

select add_months('20-10-2025',-1) from dual;

select last_day(sysdate) from dual;

select next_day(sysdate,'MON') from dual;

select next_day('28-07-2025','SUN') from dual;

select salary as previous_salary ,salary*0.2 as increments_salary,to_char(salary+salary*0.2,'$99,999') incremented_salary from hr.employees;


select round(months_between(sysdate,hire_date)) from hr.employees;

select last_day(add_months(sysdate,-3))+1 from dual;
--Write a query to display the first day of the month (in datetime format) three months before the current month.

select last_day(add_months(sysdate,-3)) from dual;
--Write a query to display the last day of the month (in datetime format) three months before the current month.


select distinct to_char(hire_date,'DY'),count(*) from hr.employees group by to_char(hire_date,'DY');

select to_char(months_between('01-jan-2024','31-dec-2024'),'DY') from dual;

select distinct to_char(hire_date,'DY') from hr.employees where to_char(hire_date,'DY')=('MON');

select salary,salary*.70 from hr.employees;


--to_char

select sysdate,to_char(sysdate,'DD-MON-YY') from dual;--24-JUL-25

select to_char(sysdate,'DAY') from dual;--THURSDAY 
select to_char(sysdate,'DY') from dual;--THU
select to_char(sysdate,'D') from dual;--5(day of the week(sunday,monday...
select to_char(sysdate,'DD') from dual;--24(day of the months
select to_char(sysdate,'DDD') from dual;--205 day of the year
select to_char(sysdate,'DDTH') from dual;--24TH
select to_char(sysdate,'DDSPTH') from dual;--TWENTY-FOURTH
select to_char(sysdate,'HH:MI:SS') from dual;--03:23:05
select to_char(sysdate,'HH24:MI:SS') from dual;--15:23:49


--to_date

select to_char(to_date(sysdate),'DD-MON-YYYY')  from dual;
select to_date('12-JUN-2025') from dual;
select to_date('12/06/25') from dual;

select to_date('12-09-2024','DD-MM-YYYY') from dual;

select '12-09-2025'+5 from dual;--no
select do_date(sysdate)+5 from dual;--no
select to_date('12-09-2024','DD-MM-YYYY') +6 from dual;--add

select to_date('09-12-2024') +6  from dual;--add

select to_char(to_date('05-JUNE-1994'),'DAY/MON/YYYY') from dual;--SUNDAY   /JUN/1994

select to_char(to_date('05-JUNE-1994'),'FMDAY/FMMONTH/YYYY') from dual;--SUNDAY/JUNE     /1994


select * from hr.employees where to_char(hire_date,'MON')='DEC'; 

select * from hr.employees where to_char(hire_date,'MM')='12';
 
 select * from hr.employees where to_char(hire_date,'YY')='06';
 
 select hire_date,to_char(hire_date,'YYYY') from hr.employees;
 
 select last_day('10-JAN-2025') from dual;
 select last_day('15-09-05') from dual;
 select last_day(to_date('15-09-24','DD-MM-YY')) from dual;
 
 
create  table test9(v_date date);

insert into test9 values('10-07_2024');

select * from test9;

insert into test9 values(to_date('10-08-2024','DD-MM-YYYY'));

select to_char(round(sysdate),'DD_MM_YY HH24:MI:SS') from dual;

select to_char(trunc(sysdate),'DD-MON-YYYY HH24:MI:SS') from dual; 

select round(sysdate,'year') from dual;

select round(sysdate,'month') from dual;

select round(sysdate,'day') from dual;

select trunc(sysdate,'year') from dual;

select trunc(sysdate,'month') from dual;


select  trunc(sysdate,'day') from dual;

set serveroutput on;
declare
no1 number(38,5);
begin
  select sum(employee_id) into no1 from hr.employees;
  if no1>=20000 then
    dbms_output.put_line('this is greater');
    else
      dbms_output.put_line('this is not greater');
      end if;
      exception
        when others then
          dbms_output.put_line('an error occured');
          end;
          
          
        
        begin
          begin
            dbms_output.put_line('first block');
            end; 
            dbms_output.put_line('second');
           end;
           
           
           declare
           no1 number(10):=0;
           no2 number(20):=20;
           add number(20);
           begin
             add:=no1/no2;
             dbms_output.put_line(add);
             exception
               when others then
                 dbms_output.put_line('An error occured');
             end;
             
             
             
 declare
 no1 number(10):=&no1;
 no2 number(20):=&no2;
 addition number(20);
 begin
   addition:=no1+no2;
   dbms_output.put_line(addition);
   exception 
     when others then
       dbms_output.put_line('An error occured');   
   end;            
 
 declare
 a number:=10;
 begin
   if (a>50) then
     dbms_output.put_line('This is greater');            
      end if;
      exception when others then
        dbms_output.put_line('An error occured');
        end;
             
declare
a number(10):=20;
begin
  if (a>50) then
    dbms_output.put_line('A is greater'); 
    else
      dbms_output.put_line('A is not greater');
      end if;       
     exception when others then
       dbms_output.put_line('An error ocuured');
       end;   
     
        
             
declare
a number(10):=200;
begin
  if a=10 then
    dbms_output.put_line('10');
    elsif a=20 then
      dbms_output.put_line('20');
      elsif a=30 then
        dbms_output.put_line('30');
        else
          dbms_output.put_line('value is not available');
        end if;
         end;    
             
             
declare
n number(10):=1;
begin
  loop
    dbms_output.put_line(n);
    exit when n>10;
    n:=n+1;
    end loop;
    end;
             
 declare
 n1 number(10):=2;
 begin
   loop
     dbms_output.put_line(n1);
     exit when n1>20;
     n1:=n1+2;
     end loop;
     end;            
             
             
---------------------------

declare 
n number(10):=1;
begin
  loop
    dbms_output.put_line(n);
    if n>=10 then
      exit;
      end if;
      n:=n+2;
      end loop;
      end;
      
      
      
declare
n number(10):=1;
begin
  loop
    dbms_output.put_line(n);
    exit when n>=10;
    n:=n+1;
    end loop;
    end;      
    
declare
n number(10):=2;
begin
  loop
  dbms_output.put_line(n);
      if n>=10 then
      exit;
      end if;
      n:=n+2;
      end loop;
      end;
    
    
   declare
   n number(10):=1;
   begin
     while(n<=10) loop--10<=10
     dbms_output.put_line(n);
     n:=n+1;--1+1=2;
     end loop;
     end; 
    
declare
n number(10):=2;
begin
  while (n<=10) loop
    dbms_output.put_line(n);
        n:=n+2;
       end loop;
       end;
    

    
declare
n number(10);
begin
  for i in 1..10  loop
    dbms_output.put_line(i*2+1);    
    end loop;
    end;
    
    
 declare
    n number(10):=100;
    begin
      for i in 100..1000 loop
        dbms_output.put_line(i);
        end loop;
        end;
    
    
    
    
    declare
    n number(10);
    begin
      for i in reverse 1..10 loop
        dbms_output.put_line(i);
        end loop;
        end;
    
    
    
    
declare 
ename varchar2(20);
esal number(20);
begin
  select first_name,salary into ename,esal from hr.employees where employee_id=105;
  dbms_output.put_line(ename||' '||esal);
  exception
    when others then
      dbms_output.put_line('Error');
      end;
      
      
declare 
max_sal number(10);
begin
  select max(salary) into max_sal from hr.employees;
  dbms_output.put_line(max_sal);
  exception when others then
    dbms_output.put_line('error');
    end;      
    
    
    declare 
    ename hr.employees.first_name%type;
    esal hr.employees.salary%type;
    begin
      select first_name,salary into ename,esal from hr.employees where employee_id=105;
      dbms_output.put_line(ename||' '||esal);
      exception when others then
        dbms_output.put_line('error');
        end;
        
        
        declare
        i hr.employees%rowtype;
        begin
          select salary into i.salary from hr.employees where employee_id=115;
          dbms_output.put_line(i.first_name||' '||i.salary);
          exception when others then
            dbms_output.put_line('Error');
            end;
            
        declare
        n number(10):=1;
        ename varchar2(20);
        begin
          select first_name into ename from hr.employees where employee_id='115';
          dbms_output.put_line(ename);
         if (n<=5) th
           
         
 declare
 n1 number(10):=1;
 fname varchar2(20);
 begin
   select first_name into fname from hr.employees where employee_id='115';
   loop
     dbms_output.put_line(fname);
     exit when n1>5;
     n1:=n1+2;
     end loop;
     end;    
         
         
  declare
  n number(10):=1;
  ename varchar2(20);
  begin
    select first_name into ename from hr.employees where employee_id='105';
    while(n<=5) loop
    dbms_output.put_line(ename);
    n:=n+1;
    end loop;
    end;
    
    
    declare
    n number(10):=1;
    ename varchar2(20);
    begin
      select first_name into ename from hr.employees where employee_id='115';
      for n in 1..5 loop
        dbms_output.put_line(ename);
        end loop;
        end;   

declare
a number not null:=60;
b constant number:=50;
begin 
    dbms_output.put_line(a);
    dbms_output.put_line(b);
    end;
    
    declare
a number not null default 90;
b constant number default 50;
begin 
    dbms_output.put_line(a);
    dbms_output.put_line(b);
    end;
    
    declare
    fname varchar2(20);
    begin
      select first_name into fname from hr.employees where employee_id='115';
      dbms_output.put_line(fname);
      exception when others then
        dbms_output.put_line('error');
        end;
    
declare
fname varchar2(20);
fsal number(10);
begin
  select first_name into fname from hr.employees where employee_id='115';
   dbms_output.put_line(fname||' ddd');
  select salary into fsal from hr.employees where employee_id='119'; 
  dbms_output.put_line(fsal);
  end;    
  
  
  
declare
cursor c1 is select first_name,salary from hr.employees;
v_en varchar2(20);
v_es number(10);
begin
  open c1;
  fetch c1 into v_en,v_es;
  dbms_output.put_line(v_en||' '||v_es);
  fetch c1 into v_en,v_es;
  dbms_output.put_line(v_en||' '||v_es);
  close c1;
  end; 
  
  
  declare
  fname varchar2(20);
  fsal number;
  cursor c1 is select first_name,salary into fname,fsal from hr.employees;
  begin
    open c1;
    loop
   fetch c1 into fname,fsal;
   if c1%notfound then 
     exit;
     else
       dbms_output.put_line(fname||' '||fsal);
       end if;
       end loop;
       close c1;
       end;


declare
cursor c1 is select first_name, salary from hr.employees;
ename varchar2(20);
esal number(10);
begin
  open c1;
  loop
    fetch c1 into ename,esal;
    if c1%notfound then
      exit;
      else
        dbms_output.put_line(ename||' '||esal);
        end if;
        end loop;
        dbms_output.put_line(C1%rowcount);
        close c1;
        end;
        
        
        declare
        cursor c1 is select first_name,salary from hr.employees;
        ename varchar2(20);
        esal number(10);
        begin
          open c1;
          loop
            fetch c1 into ename,esal;
            --if c1%rowcount=1 then
              exit when c1%rowcount=3; 
                 dbms_output.put_line(ename||' '||esal);
                end loop;
                 dbms_output.put_line(c1%rowcount);
                close c1;
                end;
        
        
 declare
 cursor c1 is select * from hr.employees;
 i hr.employees%rowtype;
 begin
   open c1;
   loop
     fetch c1 into i;
     exit when c1%notfound;
     if mod(c1%rowcount,2)=0 then
       dbms_output.put_line(i.first_name||' '||i.employee_id);
       end if;
       end loop;
       close c1;
       end;
       
       
  declare
  cursor c1 is select * from hr.employees;
  i hr.employees%rowtype;
  begin
    open c1;
    loop
      fetch c1 into i;
      exit when c1%notfound;
      if mod(c1%rowcount,2)!=0 then
      dbms_output.put_line(i.first_name||' '||i.employee_id);
       end if;
       end loop;
       close c1;
       end;
       
       declare
       cursor c1 is select * from hr.employees;
       i hr.employees%rowtype;
       begin
         open c1;
         loop
           fetch c1 into i;
           if c1%rowcount=5 then 
             dbms_output.put_line(i.employee_id||' '||i.first_name);
             end if;
             end loop;
             close c1;
             end;
             
             select salary from hr.employees;
             
           --691416  
             declare
             cursor c1 is select * from hr.employees;
             i hr.employees%rowtype;
             begin
               for i in c1 loop
                 if c1%rowcount=5 then
             dbms_output.put_line(i.employee_id||' '||i.first_name);
                   end if;
                   end loop;
                   end;
                   
                   
                   
  declare
  cursor c1 is select salary from hr.employees;
  total_sal number;
  n number:=0;
  begin
    open c1;
    loop
      fetch c1 into total_sal;
      exit when c1%notfound;
        n:=n+total_sal;               
        end loop;
        dbms_output.put_line(n);
        close c1;
        end;
        
 declare
 cursor c1 is select * from hr.employees;
 --total_sal number;
 n number:=0;
 begin
   for i in c1 loop
     n:=n+i.salary;
     end loop;
     dbms_output.put_line(n);
end;
       
declare
cursor c1(deptno number) is select * from hr.employees where department_id=deptno;
i hr.employees%rowtype;
begin
  open c1(50);
  loop
    fetch c1 into i;
    exit when c1%notfound;
    dbms_output.put_line(i.first_name||' '||i.department_id);
    end loop;
    dbms_output.put_line('No. of record return from curosr'||' '||c1%rowcount);
    close c1;  
     open c1(60);
    loop
      fetch c1 into i;
      exit when c1%notfound;
      dbms_output.put_line(i.first_name||' '||i.department_id);
      end loop;
    dbms_output.put_line('No. of record return from curosr'||' '||c1%rowcount);     
     close c1; 
    end;



declare
cursor c1 is select * from hr.employees;
i hr.employees%rowtype;
begin
  for i in c1
  loop
    dbms_output.put_line(i.first_name||' '||i.salary);
    end loop;
    end;






declare
cursor c1 is select * from hr.employees;
i hr.employees%rowtype;
begin
  for i in c1
    loop
      if mod(c1%rowcount,2)=0 then
        dbms_output.put_line(i.employee_id||' '||i.first_name||' '||i.salary);
        end if;
        end loop;
        end;

declare
cursor c1 is select * from hr.employees;
i hr.employees%rowtype;
begin
  for i in c1
    loop
      if c1%rowcount=5 then
        exit;
        else
        dbms_output.put_line(i.employee_id||' '||i.first_name||' '||i.salary);
          end if;
          end loop;
          end;                


begin
  for i in (select * from hr.employees) loop
    dbms_output.put_line(i.first_name||' '||i.salary);
    end loop;
    end;


declare
cursor c1 is select * from hr.employees;
i hr.employees%rowtype;
begin
  for i in c1
    loop
      if i.department_id=20 then
        update hr.employees set salary=salary+10 where department_id=i.department_id;
        end if;
        end loop;
        end;


select * from hr.employees where department_id=20;
rollback;




declare
cursor c1 is select * from hr.dept;
i hr.dept%rowtype;
begin
  for i in c1
    loop
      if i.department_id=50 then
      delete from hr.dept where department_id=i.department_id;  
      end if;         
     end loop;
    end;
select * from hr.dept;
create table hr.dept as select * from hr.departments where 1=1;
drop table hr.dept;

declare
cursor c1 is select * from hr.dept;
i hr.dept%rowtype;
begin
  open c1;
  loop 
    fetch c1 into i;
    if i.department_id=50 then
      delete from hr.dept where department_id=i.department_id; 
      end if;
      end loop; 
       close c1;
       end;



select * from hr.dept;
truncate table hr.dept;
declare
cursor c1 is select * from hr.departments;
i hr.departments%rowtype;
begin
  open c1;
  loop
    fetch c1 into i;
    exit when c1%notfound;
    insert into hr.dept(department_id,department_name,manager_id,location_id) 
    values(i.department_id,i.department_name,i.manager_id,i.location_id);
    end loop;
    close c1;
    end;




declare
cursor c1 is select * from hr.employees where department_id=50;
i hr.employees%rowtype;
begin
  for i in c1
    loop
      dbms_lock.sleep(10);
       update hr.employees set salary=i.salary+10 where department_id=i.department_id;
       end loop;
       end; 

delete from hr.employees where department_id=50;

rollback;


select * from hr.employees where department_id=50;

declare
name1 varchar2(20);
begin
  select first_name into name1 from hr.employees where employee_id=101;
  dbms_output.put_line(name1);
  end;
  
  
  declare
  v_name varchar2(20);
  begin
    select first_name into v_name from hr.employees;
    dbms_output.put_line(v_name);
    end;
    
    
 declare
 a number(10):=10;
 b number(10):=20;
 add number(10);
 begin
   add:=a*b;
   dbms_output.put_line(add);
   end;   
   
   
   
   
   
   
   if
     if else
       elsif
       
       
 declare
 a number(10):=10;
 begin
   if (a>5) then
     dbms_output.put_line('a is greater than 5');
     end if;      
       end;
       
       
       
declare
a number(10):=&no;
begin
  if (a>20) then
    dbms_output.put_line('a is greater'); 
    else
      dbms_output.put_line('a is not greater');
      end if;
      end;
      
      
      
declare
no1 number(10):=&no1;
begin
  if no1=10 then
    dbms_output.put_line('This is ten');
    elsif no1=20 then
      dbms_output.put_line('this is twenty'); 
      else
        dbms_output.put_line('other than 10 and 20');
        end if;
        end;     
     
    simple loop
    while loop
      for loop
    
    
 declare
 n number(10):=1;
 begin
   loop
     if mod(n,2)=0 then
     dbms_output.put_line(n);
     end if;
     exit when n>=10;
     n:=n+1;
     end loop;
     end;   
    
    
    declare
    n number(10):=1;
    begin
      while(n<5) loop
      dbms_output.put_line('Gajanan');
      n:=n+1;
      end loop;
      end;
    
    begin
      for i in 1..5 loop
        dbms_output.put_line('Gajanan');
        end loop;
        end;
    
    begin
      for i in reverse 1..5 loop
        dbms_output.put_line(i);
        end loop;
        end;
    
    

    
    
   declare
   fname hr.employees.first_name%type;
   fsal hr.employees.salary%type;
   begin
     select first_name,salary into fname,fsal from hr.employees where employee_id=104;
     dbms_output.put_line(fname||' '||fsal);
     exception when others then
       dbms_output.put_line('cursor in exception');
       end;        
       
declare
dno number(10);
begin
  select department_id into dno from hr.employees where department_id=&deptno;
  if dno=10 then
    dbms_output.put_line('department no is 10');
    elsif dno=50 then
    dbms_output.put_line('department no is 50');       
       else
         dbms_output.put_line('None');
         end if;
         end;
       
       
       
       
       
       declare
       cursor c1 is select first_name,salary from hr.employees;
       fname varchar2(20);
       fsal number(10);
       begin
         open c1;
         loop
           fetch c1 into fname,fsal;
           exit when c1%notfound;
           dbms_output.put_line(fname||' '||fsal);
           end loop;
           close c1;
           end;
           
           declare 
           cursor c1 is select * from hr.employees;
           i hr.employees%rowtype;
           begin
             open c1;
             loop
               fetch c1 into i;
               exit when c1%rowcount=2;
               dbms_output.put_line(i.first_name||' '||i.salary);
               end loop;
               close c1;
               end;


declare
cursor c1 is select * from hr.employees;
i hr.employees%rowtype;
begin
  open c1;
  loop
    fetch c1 into i;
    exit when c1%notfound;
    if mod(c1%rowcount,2)=0 then
      dbms_output.put_line(i.employee_id||' '||i.first_name||' '||i.salary);
      end if;
      end loop;
      close c1;
      end;




declare
cursor c1 is select * from hr.employees;
i hr.employees%rowtype;
begin
  open c1;
  loop
    fetch c1 into i;
       exit when c1%notfound;
    if c1%rowcount=5 then
      dbms_output.put_line(i.employee_id||' '||i.first_name||' '||i.salary);
      end if;
      end loop;
      close c1;
      end;
      
declare
cursor c1 is select * from hr.employees;
i hr.employees%rowtype;
begin
  for i in c1
  loop
    if c1%rowcount=5 then
      dbms_output.put_line(i.employee_id||' '||i.first_name||' '||i.salary);
      end if;
      end loop;
      end;      
      
      
      
      
declare
cursor c1 is select salary from hr.employees;
sal number:=0;
begin
  for i in c1 loop
   sal:=i.salary+sal;
   end loop;
   dbms_output.put_line(sal);
   end;

declare
cursor c1(deptno number) is select * from hr.employees where department_id=deptno;
i hr.employees%rowtype;
begin
  open c1(40);
  loop
    fetch c1 into i;
    exit when c1%notfound;
      dbms_output.put_line(i.employee_id||' '||i.first_name||' '||i.salary);
    end loop;
    close c1;
    end;
    
    
declare
cursor c1(deptno hr.employees.department_id%type) is select first_name,salary,department_id from hr.employees where department_id=deptno;
vname hr.employees.first_name%type;
vsal hr.employees.salary%type;
vdeptno hr.employees.department_id%type; 
begin
  open c1(10);
      dbms_output.put_line('This is data from deparment_no 10');
  loop
    fetch c1 into vname,vsal,vdeptno;
    exit when c1%notfound;
    dbms_output.put_line(vsal||' '||vdeptno||' '||vname);
    end loop;
    close c1;
    open c1(30);
    dbms_output.put_line('This is data from deparment_no 30');
    loop
    fetch c1 into vname,vsal,vdeptno;
    exit when c1%notfound;
    dbms_output.put_line(vsal||' '||vdeptno||' '||vname);
    end loop;
    close c1;
    end;
    
          
declare
cursor c1(deptno hr.employees.department_id%type,sal hr.employees.salary%type) is select first_name,salary from hr.employees where department_id=deptno and 
salary>sal;
fname hr.employees.first_name%type;
esal hr.employees.salary%type;
begin
  open c1(10,2000);
  dbms_output.put_line('This is data from deparment_no 10');
  loop
    fetch c1 into fname,esal;
    exit when c1%notfound;
    dbms_output.put_line(fname||' '||esal);
    end loop
    close c1;
    open c1(50,2000);
        dbms_output.put_line('This is data from deparment_no 50');
    loop
      fetch c1 into fname,esal;
      exit when c1%notfound;
      dbms_output.put_line(fname||' '||esal);
    end loop;
    close c1;
    end;
        
    
    declare
    cursor c1 is select * from hr.employees;
    i hr.employees%rowtype;
    begin
      for i in c1
        loop
          dbms_output.put_line(i.first_name||' '||i.salary);
          end loop;
          end;
    
    
    
    begin
      for i in (select * from hr.employees where department_id=50)
        loop
          dbms_output.put_line(i.first_name||' '||i.department_id);
          end loop;
          end;
    
    
    declare
    cursor c1 is select * from hr.employees for update;
    i hr.employees%rowtype;
    begin
      for i in c1
        loop
          if i.department_id=50 then
            update hr.employees set salary=i.salary+10 where current of c1;
            end if;
            end loop;
            --dbms_output.put_line(c1%rowcount);
            end;
    
declare
cursor c1(deptno hr.employees.department_id%type) is select first_name,salary from hr.employees where department_id=deptno;
--fname hr.employees.first_name%type;
--esal hr.employees.salary%type;
begin  
  dbms_output.put_line('This is data from deparment_no 10');
  for i in c1(50)
    loop  
    dbms_output.put_line(i.first_name||' '||i.salary);
    end loop;
    end;
    
--open fetch close in parameterised cursor(defaul value)
declare
cursor c1(deptno hr.employees.department_id%type default 10) is select * from hr.employees where department_id=deptno;
i hr.employees%rowtype;
begin
  open c1(20);
      dbms_output.put_line('===========================================');

  dbms_output.put_line('Department 20 information');

  loop
    fetch c1 into i;
    exit when c1%notfound;
    dbms_output.put_line(i.first_name||' '||i.department_id);
    end loop;
    close c1;
    open c1(40);
        dbms_output.put_line('===========================================');
      dbms_output.put_line('Department 40 information');
      loop
      fetch c1 into i;
      exit when c1%notfound;
      dbms_output.put_line(i.first_name||' '||i.department_id);    
    end loop;
    close c1;
    open c1;
        dbms_output.put_line('===========================================');

          dbms_output.put_line('Department 10 information'); 

    loop
      fetch c1 into i;
      exit when c1%notfound;
      dbms_output.put_line(i.first_name||' '||i.department_id);
      end loop;
      close c1;
      end;
    
 ========================
 declare
 cursor c1(deptno hr.employees.department_id%type default 10) is select * from hr.employees where department_id=deptno;
-- i hr.employees%rowtype;
 begin
     dbms_output.put_line('This is department no.20th information');
   for i in c1(20) 
     loop
        dbms_output.put_line(i.first_name||' '||i.department_id);
    end loop;
   dbms_output.put_line('This is department no.40th information');
    for i in c1(40)
      loop
        dbms_output.put_line(i.first_name||' '||i.department_id);
        end loop;
       dbms_output.put_line('This is department no.10th information');        
     for i in c1
       loop
         dbms_output.put_line(i.first_name||' '||i.department_id);
         end loop;
         end;
         



    declare
cursor c1 is select * from hr.employees;
cursor c2(deptno number) is select * from hr.departments where department_id=deptno;
begin
  for i in c1
    loop
      for j in c2(i.department_id)
        loop
        dbms_output.put_line(i.first_name||'================'||i.salary||'================'||j.department_id||'================'||j.department_name);
        end loop;
        end loop;
        end;        
        
---------------------------

declare
cursor c1 is select * from hr.employees;
i hr.employees%rowtype;
begin
open c1;
loop
fetch c1 into i;
exit when c1%notfound;
dbms_output.put_line(i.employee_id||' '||i.first_name||' '||i.salary);
end loop;
close c1;
end;


set serveroutput on;
declare
cursor c1 is select * from hr.employees;
i hr.employees%rowtype;
begin
open c1;
loop
fetch c1 into i;
exit when c1%notfound;
if mod(c1%rowcount,2)=0 then
dbms_output.put_line(i.employee_id||' '||i.first_name||' '||i.salary);
end if;
end loop;
close c1;
end;
    
    
    
declare
cursor c1 is select * from hr.employees;
i hr.employees%rowtype;
begin
open c1;
loop
fetch c1 into i;
exit when c1%notfound;
if c1%rowcount=5 then
dbms_output.put_line(i.employee_id||' '||i.first_name||' '||i.salary);
   end if;
   end loop;
   close c1;
   end;
    
declare
cursor c1 is select sum(salary) from hr.employees;
total_sal number(20);
begin
open c1;
loop
fetch c1 into total_sal;
exit when c1%notfound;
dbms_output.put_line(total_sal);
end loop;
close c1;
end;
    
    
    
declare
cursor c1 is select * from hr.employees;
ssss hr.employees%rowtype;
begin
for i in c1  
loop
dbms_output.put_line(i.employee_id||' '||i.first_name);
end loop;
end;
    
    
declare
cursor c1 is select * from hr.employees;
--v_name varchar2(20);
begin
for i in c1
loop
if c1%rowcount=5 then
dbms_output.put_line(i.first_name);
end if;
end loop;
end;
    
declare
cursor c1 is select * from hr.employees;
begin
for i in c1
loop
if mod(c1%rowcount,2)=0 then
dbms_output.put_line(i.first_name);
    end if;
    end loop;
    end;
    
declare
cursor c1 is select sum(salary) as total_Sum from hr.employees;
total_Sum number(20);
begin
for i in c1
loop
dbms_output.put_line(i.total_Sum);
end loop;
end;
    
    
    
begin
for i in(select * from hr.employees)
loop
dbms_output.put_line(i.first_name);
end loop;
end;

set serveroutput on;

declare
cursor c1 is select salary from hr.employees;
total_sal number(10):=0;
begin
for i in c1
loop
 total_sal:=i.salary+total_sal;
 end loop;
 dbms_output.put_line(total_sal);
 end;
    
declare
cursor c1 is select salary from hr.employees;
i hr.employees.salary%type;
n number(10):=0;
begin 
open c1;
loop
fetch c1 into i;
exit when c1%notfound;
n:=n+i;
end loop;
dbms_output.put_line(n);
close c1;
end;

--paramaterised cursor

declare
cursor c1(deptno number)is select * from hr.employees where department_id=deptno;
i hr.employees%rowtype;
begin
open c1(50);
loop
fetch c1 into i;
exit when c1%notfound;
dbms_output.put_line(i.department_id||' '||i.first_name);
end loop;
close c1;
end;



declare
cursor c1(deptno number) is select * from hr.employees where department_id=deptno;
i hr.employees%rowtype;
begin
open c1(50);
loop
fetch c1 into i;
exit when c1%notfound;
dbms_output.put_line(i.department_id||' '||i.first_name);
end loop;
close c1;
open c1(40);
loop
fetch c1 into i;
exit when c1%notfound;
dbms_output.put_line(i.department_id||' '||i.first_name);
end loop;
close c1;
end;



declare
cursor c1(deptno number default 50) is select * from hr.employees where department_id=deptno;
begin
for i in c1() loop
dbms_output.put_line(i.first_name||' '||i.last_name);
end loop;
end;

declare
cursor c1(deptno number default 50) is select * from hr.employees where department_id=deptno;
i hr.employees%rowtype;
begin
open c1();
loop
fetch c1 into i;
exit when c1%notfound;
dbms_output.put_line(i.first_name||' '||i.last_name||' '||i.department_id);
end loop;
close c1;
end;

set serveroutput on;

--cursor for loop
begin
for i in (select * from hr.employees)
loop
dbms_output.put_line(i.first_name);
end loop;
end;

declare
cursor c1 is select * from hr.employees;
i hr.employees%rowtype;
begin
for i in c1
loop
if i.department_id=20 then
update hr.employees set salary=salary+1;
end if;
end loop;
end;


select * from hr.employees where department_id=20;

declare
cursor c1 is select * from hr.employees for update of salary nowait;
begin
for i in c1
loop
if i.department_id=20 then
update hr.employees set salary=salary+1 where current of c1;
end if;
end loop;
end;


declare
cursor c1 is select * from hr.departments;
i hr.departments%rowtype;
begin
for i in c1
loop
if i.department_id=20 then
delete from hr.departments where department_id=i.department_id;
end if;
end loop;
end;

create table dummy as select * from hr.employees where 1=2;

insert into dummy 
select * from hr.employees;

drop table dummy;

select * from dummy;

declare
cursor c1 is select * from hr.employees;
i hr.employees%rowtype;
begin
open c1;
loop
fetch c1 into i;
exit when c1%notfound;
if i.department_id=20 then
delete from hr.employees where department_id=i.department_id;
else
update hr.employees set salary=salary+1 where department_id=i.department_id;
end if;
end loop;
close c1;
end;

truncate table dummy;

declare
cursor c1 is select * from hr.employees;
i c1%rowtype;
begin
open c1;
loop
fetch c1 into i;
exit when c1%notfound;
insert into dummy values(i.EMPLOYEE_ID,	i.FIRST_NAME,i.LAST_NAME,i.EMAIL,i.PHONE_NUMBER,	
i.HIRE_DATE,i.JOB_ID,i.SALARY,i.COMMISSION_PCT,i.MANAGER_ID,i.DEPARTMENT_ID);
end loop;
close c1;
end;

create table dummy_2(no1 number(10));
select * from dummy_2;

declare
n number(10):=1;
begin
for i in 1..1000 loop
insert into dummy_2 values(n);
n:=n+1;
end loop;
end;



 select * from dummy_2;   




declare
cursor c1 is select * from hr.employees for update;
begin
for i in c1
loop
if i.department_id=20 then
update hr.employees set salary=i.salary+1 where current of c1;
end if;
end loop;
commit;
end;

rollback;
select * from hr.employees where department_id=20;

set serveroutput on;

begin
delete from dummy where FIRST_NAME='Michael';
if sql%found then
dbms_output.put_line('Record deleted');
end if;
end;

set serveroutput on;

begin
if sql%notfound then
dbms_output.put_line('Record not exists');
end if;
end;


begin
update dummy set salary=salary+2 where department_id=20;
dbms_output.put_line('Affected no.of rows'||' '||sql%rowcount);
end;

select * from dummy where department_id=20;


create or replace function f1(a in number)
return varchar2
is
begin
if mod(a,2)=0 then
return 'Even';
else
return 'Odd';
end if;
end;


select f1(4.6) from dual;

declare
a varchar2(20);
begin
a:=f1(11);
dbms_output.put_line(a);
end;

begin
dbms_output.put_line(f1(10));
end;


create or replace function f1
return varchar2
as
vn_name varchar2(20);
begin
select first_name into vn_name from hr.employees where employee_id='102';
return vn_name;
end f1;

select f1 from dual;

declare
a varchar2(20);
begin
a:=f1;
dbms_output.put_line(a);
end;


begin
dbms_output.put_line(f1);
end;

create or replace function f1(no1 in number)
return varchar2
is
vn_name varchar2(20);
begin
select first_name into vn_name from hr.employees where employee_id=no1;
return vn_name;
end;




select f1(101) from dual;

declare
a varchar2(20);
begin
a:=f1(101);
dbms_output.put_line(a);
end;

begin
dbms_output.put_line(f1(100));
end;





create or replace function f1(  a number)
return varchar2
is
begin
if mod(a,2)=0 then
return 'Even';
else
return 'Odd';
end if;
end f1;

select f1(1) from dual;

begin
dbms_output.put_line(f1(2));
end;


declare
a varchar2(20);
begin
a:=f1(1);
dbms_output.put_line(a);
end;

create or replace function f1
return varchar2
is
vname varchar2(20);
begin
select first_name into vname from hr.employees where employee_id=103;
return vname;
end f1;


select f1 from dual;

begin
dbms_output.put_line(f1);
end;


declare
v_name varchar2(20);
begin
dbms_output.put_line(f1);
end;

create or replace function f1(no1 number)
return varchar2
is
v_name varchar2(20);
begin
select first_name into v_name from hr.employees where employee_id=no1;
return v_name;
end f1;


select f1(100) from dual;
begin
dbms_output.put_line(f1(102)) ;
end;

declare
v_name varchar2(20);
begin
v_name :=f1(102);
dbms_output.put_line(v_name);
end;


create or replace function f1
return number
is
max_sal number;
begin
select max(salary) into max_sal from hr.employees;
return max_sal;
end;


select f1 from dual;
begin
dbms_output.put_line(f1);
end;

declare
sal number;
begin
sal:=f1;
dbms_output.put_line(sal);
end;

create or replace function f1(empid number,fname out varchar2,lname out varchar2)
return varchar2
is
begin
select first_name,last_name into fname,lname from hr.employees where employee_id=empid;
return fname;
return lname;
end;



Declare
x VARCHAR2(30);
y VARCHAR2(30);
z varchar2(30);
Begin
z:= f1(100, :x, :y);
DBMS_OUTPUT.PUT_LINE(z);
End; 




================================================================
set serveroutput on;
declare
a number(10);
begin
a:=10;
dbms_output.put_line(a);
end;

declare 
a number(10);
b number(10);
c number(10);
begin
a:=10;
b:=20;
c:=a+b;
dbms_output.put_line(c);
end;

declare
a constant  number(10):=10;
b number(10) not null:=20;
begin
dbms_output.put_line('Constant value ' || a);
dbms_output.put_line('not null value ' || b);
end;



declare
e_no number(10);
e_name varchar2(20);
begin
select employee_id,first_name into e_no,e_name from hr.employees where employee_id=104;
dbms_output.put_line(e_no||' '||e_name);
end;

declare 
max_sal number(10);
begin
select sum(salary) into max_sal from hr.employees;
dbms_output.put_line(max_sal);
end;

set serveroutput on;

declare
a varchar2(10);
begin
a:=upper('gajanan');
dbms_output.put_line(a);
end;


--attribute
--1)column level
--2)row level

--1)column level
declare 
vname hr.employees.first_name%type;
vsal hr.employees.salary%type;
begin
select first_name,salary into vname,vsal from hr.employees where employee_id=105;
dbms_output.put_line(vname||' '||vsal);
end;

--2)row level

declare 
i hr.employees%rowtype;
begin
select first_name,salary into i.first_name,i.salary from hr.employees where employee_id=105;
dbms_output.put_line(i.first_name||' '||i.salary);
end;

declare
i hr.employees%rowtype;
begin
select * into i from hr.employees where employee_id=105;
dbms_output.put_line(i.first_name||' '||i.salary);
end;

declare
a number(10):=10;
b number(10):=11;
begin
if a= b then
dbms_output.put_line('True');
else
dbms_output.put_line('else True');
end if;
end;

declare
a number(10):=10;
b number(10):=20;
c number(10):=30;
begin
if a>b then
dbms_output.put_line('A is greater');
elsif b>c then
dbms_output.put_line('B is greater');
else
dbms_output.put_line('C is greater');
end if;
end;

declare
vdeptno number(10);
begin
select department_id into vdeptno from hr.departments where department_id=&vdeptno;
if vdeptno=10 then
dbms_output.put_line('This is 10th');
elsif vdeptno=20 then
dbms_output.put_line('This is 20nth');
elsif  vdeptno=30 then
dbms_output.put_line('This is 30th');
else
dbms_output.put_line('other');
end if;
end;

----simple loop
declare
n number(10):=1;
begin
loop
dbms_output.put_line(n);
exit when n>=5;
n:=n+1;
end loop;
end;

declare
n number(10):=1;
begin
loop
dbms_output.put_line(n*3);
exit when n>=10;
n:=n+1;
end loop;
end;


declare
n number(10):=20;
begin
loop
dbms_output.put_line(n);
exit when n<=1;
n:=n-2;
end loop;
end;


declare
n number(10);--:=1;
begin
n:=1;
loop
dbms_output.put_line('*');
exit when n>=5;
n:=n+1;
end loop;
end;


declare
n number(10):=1;
begin
while (n<=10) loop
dbms_output.put_line(n);
n:=n+1;
end loop;
end;

declare
n number(10):=1;
begin
while (n<=10) loop
dbms_output.put_line(n*2);
n:=n+1;
end loop;
end;
--
--declare
--n number(10):=10;
--begin
--while(n<=10) loop
--dbms_output.put_line(n);
--n:=n-1;
--end loop;
--end;
--

declare
n number(10);
begin
for n in 1..10 loop
dbms_output.put_line(n*2);
end loop;
end;

set serveroutput on;

declare
n number(10);
begin
for n in reverse 1..10 loop
dbms_output.put_line(n);
end loop;
end;

--cursor--

declare
cursor c1 is select first_name,salary from hr.employees;
ename varchar2(20);
esal number(10);
begin
open c1;
fetch c1 into ename,esal;
dbms_output.put_line(ename||' '||esal);
fetch c1 into ename,esal;
dbms_output.put_line(ename||' '||esal);
close c1;
end;
set serveroutput on;

declare
cursor c1 is select * from hr.employees;
i hr.employees%rowtype;
begin
open c1;
loop
fetch c1 into i;
exit when c1%notfound;
dbms_output.put_line(i.first_name);
end loop;
close c1;
end;

declare
cursor c1 is select salary from hr.employees;
total_sal number(10);
n number(10):=0;
begin
open c1;
loop
fetch c1 into total_sal;
exit when c1%notfound;
n:=n+total_sal;
end loop;
dbms_output.put_line(n);
close c1;
end;

declare
cursor c1 is select first_name,salary from hr.employees order by salary desc;
ename varchar2(20);
esal number(10);
begin
open c1;
loop
fetch c1 into ename,esal;
dbms_output.put_line(ename||' '||esal);
exit when c1%rowcount>=5;
end loop;
close c1;
end;

declare
cursor c1 is select * from hr.employees;
i hr.employees%rowtype;
begin
open c1;
loop
fetch c1 into i;
exit when c1%notfound;
if mod(c1%rowcount,2)=0 then
dbms_output.put_line(i.first_name||' '||i.employee_id);
end if;
end loop;
close c1;
end;


declare
cursor c1 is select first_name,salary from hr.employees;
ename varchar2(20);
esal number(10);
begin
open c1;
fetch c1 into ename,esal;
fetch c1 into ename,esal;
fetch c1 into ename,esal;
dbms_output.put_line(c1%rowcount);
close c1;
end;


create table e(empid number(10),fname varchar2(20),lname varchar2(20));

declare
cursor c1 is select *  from hr.employees;
i hr.employees%rowtype;
begin
open c1;
loop
fetch c1 into i;
exit when c1%notfound;
insert into e(empid,fname,lname) values(i.employee_id,i.first_name,i.last_name);
end loop;
close c1;
end;


select count(*) from e;

declare
cursor c1 is select * from hr.employees;
i hr.employees%rowtype;
begin
open c1;
loop
fetch c1 into i;
exit when c1%notfound;
if c1%rowcount=5 then
dbms_output.put_line(i.first_name||' '||i.employee_id);
end if;
end loop;
close c1;
end;


declare
cursor c1 is select * from hr.employees;
i hr.employees%rowtype;
begin
open c1;
loop
fetch c1 into i;
exit when c1%notfound;
if mod(c1%rowcount,2)=0 then
dbms_output.put_line(i.employee_id||' '||i.first_name);
end if;
end loop;
close c1;
end;

--cursor for loop;

declare
cursor c1 is select * from hr.employees;
begin
for i in c1
loop
if mod(c1%rowcount,2)= 0 then
dbms_output.put_line(i.employee_id||' '||i.first_name);
end if;
end loop;
end;

declare
cursor c1 is select * from hr.employees order by 
begin
for i in c1
loop
if c1%rowcount>=99 then
dbms_output.put_line(i.employee_id||' '||i.first_name);
end if;
end loop;
end;

declare
cursor c1 is select * from hr.employees;
n number(10):=0;
begin
for i in c1
loop
n:=n+i.salary;
end loop;
dbms_output.put_line(n);
end;

declare
n number(10):=0;
begin
for i in (select * from hr.employees)
loop
n:=n+i.salary;
end loop;
dbms_output.put_line(n);
end;

declare
begin
for i in (select * from hr.employees)
loop
if 
dbms_output.put_line(i.employee_id||' '||i.first_name);
end loop;
end;

set serveroutput on;

BEGIN
    FOR i in (select department_id, count(*) as count from hr.employees group by department_id)
    loop 
        dbms_output.put_line(i.department_id||' '||i.count);
    end loop;
end;

declare
cursor c1(deptno number) is select * from hr.employees where department_id=deptno;
i hr.employees%rowtype;
begin
open c1(50);
loop
fetch c1 into i;
exit when c1%notfound;
dbms_output.put_line(i.first_name||' '||i.last_name||' '||i.department_id);
end loop;
close c1;
end;

declare
cursor c1(jobid varchar2) is select * from hr.employees where job_id=jobid;
i hr.employees%rowtype;
begin
open c1('IT_PROG');
loop
fetch c1 into i;
exit when c1%notfound;
dbms_output.put_line(i.first_name||'                                       '||i.job_id);
end loop;
close c1;
open c1('AD_VP');
loop
fetch c1 into i;
exit when c1%notfound;
dbms_output.put_line(i.first_name||'                              '||i.job_id);
end loop;
close c1;
end;




declare
cursor c1(deptno number) is select * from hr.employees where department_id=deptno;
begin
for i in c1 (50)
loop
dbms_output.put_line(i.first_name||' '||i.department_id);
end loop;
for i in c1(20)
loop
dbms_output.put_line(i.first_name||' '||i.department_id);
end loop;
end;


declare
cursor c1 is select sum(salary) as sum_sal from hr.employees;
i c1%rowtype;
begin
open c1;
fetch c1 into i;
dbms_output.put_line(i.sum_sal);
close c1;
end;

declare
cursor c1(deptno number) is select sum(salary) as sum_sal,max(salary) as max_sal from hr.employees where department_id=deptno;
i c1%rowtype;
begin
open c1(50);
fetch c1 into i;
dbms_output.put_line(i.sum_sal||' '||i.max_sal);
close c1;
end;




begin
delete from hr.employees where first_name='Welcome';
if sql%found then
dbms_output.put_line('record is deleted');
else
dbms_output.put_line('record is not deleted');
end if;
end;


begin
update hr.employees set first_name='Gajanan'
where first_name='Adam';
dbms_output.put_line('No of record is updated'||Sql%rowcount);
end;
rollback;

declare
cursor c1 is select * from hr.employees where department_id=20;
i hr.employees%rowtype;
begin
open c1;
loop
fetch c1 into i;
exit when c1%notfound;
update hr.employees set salary=i.salary+20 where department_id=i.department_id;
end loop;
dbms_output.put_line('Number of row update'||' '||c1%rowcount);
close c1;
end;

declare
cursor c1 is select * from hr.employees;
i hr.employees%rowtype;
begin
open c1;
loop
fetch c1 into i;
exit when c1%notfound;
if i.department_id=20 then
update hr.employees set salary=i.salary+20 where department_id=i.department_id;
end if;
end loop;
dbms_output.put_line('Number of row update'||' '||c1%rowcount);
close c1;
end;

declare
cursor c1 is select * from hr.employees;
begin
for i in c1
loop
if i.department_id=20 then
update hr.employees set salary=i.salary+100;
end if;
--dbms_output.put_line('No. of record '||' '||c1%rowcount);
end loop;
end;

declare
cursor c1 is select * from e where FNAME='James';
f_name e%rowtype;
begin
open c1;
loop
fetch c1 into f_name;
exit when c1%notfound;
delete from e where FNAME=f_name.FNAME;
end loop;
close c1;
end;

create table emp as select * from hr.employees where 1=2;

declare
cursor c1 is select * from hr.employees;-- where department_id=20;
i hr.employees%rowtype;
begin
for i in c1
loop
if i.department_id=20 then
insert into emp(EMPLOYEE_ID,	FIRST_NAME,	LAST_NAME,	EMAIL,	PHONE_NUMBER,	HIRE_DATE,	JOB_ID	,SALARY,	COMMISSION_PCT,	MANAGER_ID,	DEPARTMENT_ID)
values(i.EMPLOYEE_ID,i.FIRST_NAME,i.LAST_NAME,i.EMAIL,i.PHONE_NUMBER,i.HIRE_DATE,i.JOB_ID,i.SALARY,i.COMMISSION_PCT,i.MANAGER_ID,i.DEPARTMENT_ID);
end if;
end loop;
end;

select * from emp;
rollback;

declare
cursor c1 is select * from emp;
i emp%rowtype;
begin
for i in c1
loop
if i.department_id=20 then
delete from emp where department_id=i.department_id;
end if;
end loop;
end;

--

begin
for i in (select * from hr.employees)
loop
if i.department_id=20 then
insert into emp(EMPLOYEE_ID,	FIRST_NAME,	LAST_NAME,	EMAIL,	PHONE_NUMBER,	HIRE_DATE,	JOB_ID	,SALARY,	COMMISSION_PCT,	MANAGER_ID,	DEPARTMENT_ID)
values(i.EMPLOYEE_ID,i.FIRST_NAME,i.LAST_NAME,i.EMAIL,i.PHONE_NUMBER,i.HIRE_DATE,i.JOB_ID,i.SALARY,i.COMMISSION_PCT,i.MANAGER_ID,i.DEPARTMENT_ID);
end if;
end loop;
end;

rollback;
commit;
select * from emp;

begin
for i in (select * from emp)
loop
if i.job_id='ST_MAN' then
update emp set salary=i.salary+100 where job_id=i.job_id;
end if;
end loop;
end;

select * from emp where DEPARTMENT_ID='50';

set serveroutput on;

begin
for i in (select * from emp)
loop
if i.job_id='ST_MAN' then
delete from emp where job_id=i.job_id;
end if;
end loop;
end;

--current of clause for update clause
create table aa(ename varchar2(20),salary number(10));

insert into aa values('A',110);
insert into aa values('A',210);
insert into aa values('B',310);
insert into aa values('A',410);
insert into aa values('C',510);
declare
cursor c1 is select * from aa for update of salary nowait;
begin
for i in c1
loop
update aa set salary=salary+100 where current of c1;
end loop;
end;

select * from aa;

commit;

--exception
set serveroutput on;

declare
ename varchar2(20);
begin
select first_name into ename from hr.employees where employee_id=&no;
dbms_output.put_line(ename);
exception when no_data_found then
dbms_output.put_line('requested data is not available');
end;

DECLARE
    ename NUMBER(10);
BEGIN
    SELECT
        first_name
    INTO ename
    FROM
        hr.employees
    WHERE
        department_id = &deptno;

    dbms_output.put_line(ename);
EXCEPTION 
    WHEN no_data_found THEN
        dbms_output.put_line('select data is not presenrt in table');
          WHEN too_many_rows THEN
        dbms_output.put_line('select clause return more than too many rows');
END;


declare
a number(10):=10;
b number(10):=0;
c number(10);
begin
c:=a/b;
dbms_output.put_line(c);
exception when zero_divide then
dbms_output.put_line('divisor value is zero');
end;

--invalid cursor
declare
cursor c1 is select * from hr.employees;
i hr.employees%rowtype;
begin
loop
fetch c1 into i;
exit when c1%notfound;
dbms_output.put_line(i.first_name);
end loop;
close c1;
exception when invalid_cursor then
dbms_output.put_line('first we must open the cursor');
end;

declare
cursor c1 is select * from hr.employees;
begin
for i in c1
loop
dbms_output.put_line(i.first_name);
end loop;
close c1;
exception when invalid_cursor then
dbms_output.put_line('first we must open the cursor');
end;


begin
for i in (select * from hr.employees)
loop
dbms_output.put_line(i.first_name);
end loop;
close c1;
exception when invalid_cursor then
dbms_output.put_line('first we must open the cursor');
end;


---value error
declare
a number(2):=500;
b number(3):='ABC';
begin
dbms_output.put_line(a||' '||b);
exception when value_error then
dbms_output.put_line('Values erro');
end;

--value error-

declare
z number(10);
begin
z:='&X'+'&Y';
dbms_output.put_line(z);
exception when value_error then
dbms_output.put_line('Values error');
end;

 --cursor alredy open--
 declare
 cursor c1 is select * from hr.employees;
 i hr.employees%rowtype;
 begin
 open c1;
 loop
 fetch c1 into i;
 exit when c1%notfound;
 dbms_output.put_line(i.first_name);
 end loop;
 open c1;
 exception when cursor_already_open then
 dbms_output.put_line('Cursor already open');
 end;
 
 --invalid number
 
 select * from aa;
 
 begin
 insert into aa(ename,salary) values(1,'AA');
 exception when invalid_number then
 dbms_output.put_line('invalid number');
 end;
 
 -- VALUE ERROR
 
 DECLARE
 Z NUMBER(3);
 BEGIN
 z:='ABCD';
 DBMS_OUTPUT.PUT_LINE(Z);
 EXCEPTION WHEN VALUE_ERROR THEN
 DBMS_OUTPUT.PUT_LINE('INVALID STRING LENGHT');
 END;
 
 create table aaa(srno number(10) primary key,ename varchar2(20)); 
 
 insert into aaa values(111,'A');
 
 begin
 insert into aaa(srno) values(111);
 exception when dup_val_on_index then
 dbms_output.put_line('Not allowed  duplicate values');
 end;
 
 -- multiple  exceptions in a single block--
 declare
 n varchar2(20);
 begin
 select salary into n from hr.employees where department_id=&no;
 dbms_output.put_line(n);
 exception when no_data_found then
 dbms_output.put_line('Requesred data not available');
 when too_many_rows then
  dbms_output.put_line('return more than rows');
  when others then
   dbms_output.put_line('error in code');
   end;
   
   set serveroutput on;
   
   --raise exception
   declare
   z exception;
   a number(10):=&no1;
   b number(10):=&no2;
   begin
   if a=b then
   dbms_output.put_line('True');
   else
   raise z;
   end if;
   exception when z then
   dbms_output.put_line('exception raised');
   end;
   
declare
esal number(10);
z exception;
begin 
select sum(salary) into esal from hr.employees where department_id=&no;
--dbms_output.put_line(esal);
if esal>2000 then
dbms_output.put_line('salary is greater than 2000');
else 
raise z;
end if;
exception   when z then
dbms_output.put_line('my exceptioni raised'); 
--exception  when other then
--dbms_output.put_line('Requested data is not available');
--exception  when  too_many_rows then
--dbms_output.put_line('return more than one rows');
end;


declare
ename varchar2(20);
begin
select first_name into ename from hr.employees where employee_id=10;
raise no_data_found;
exception when no_data_found then
dbms_output.put_line('requested data is not available');
end;

create table abcc as select rownum employee_id,first_name from hr.employees where rownum<=10;

declare
v_ename varchar2(20);
v_eno number(10);
z exception;
begin
v_eno :=&no;
if v_eno>10 and v_eno<1 then
raise z;
else
select first_name into v_ename from abcc where employee_id=v_eno;
dbms_output.put_line(v_ename);
   end if;
   exception when no_data_found then
   dbms_output.put_line('Your empno is outoff range');
   end;
  
  ------------------------------------------------------------------------
  declare
  z exception;
  a number(10):=&no1;
  b number(10):=&no2;
  begin
  if a=b then
  raise z;
  else 
  dbms_output.put_line('a is not same to b');
  end if;
  exception when z then
  dbms_output.put_line('My exception raised is true');
  end;
   
-----------------------
declare
a number(10):=&no1;
b number(10):=&no2;
begin
if a=b then
dbms_output.put_line('a is same to b');
  dbms_output.put_line('a is not same to b'); 
   end  if;
   end;
   
   declare
   cursor c1 is select * from hr.employees where department_id=&deptno;
   i hr.employees%rowtype;
   z exception;
   begin
   open c1;
   fetch c1 into i;
   if c1%rowcount= 0 then
   raise z;
   else
   while(c1%found) 
   loop
   dbms_output.put_line(i.first_name||' '||i.employee_id);
   fetch c1 into i;
   end loop;
   end if;
   exception when z then
   dbms_output.put_line('Your requested deptno does not exist');
   end;
   
   declare
   cursor c1 is select * from hr.employees where department_id=&deptno;
   i hr.employees%rowtype;
   begin
   open c1;
   fetch c1 into i;
   if c1%rowcount=0 then
   raise no_data_found;
   else
   while (c1%found) 
   loop
   dbms_output.put_line(i.employee_id||' '||i.first_name);
   fetch c1 into i;
   end loop;
   end if;
   exception when no_data_found then
   dbms_output.put_line('Requested data is not available');
   end;
   
   --exception propagation;
declare
a varchar2(2):='abc';
begin   
dbms_output.put_line(a);
exception when value_error then
 dbms_output.put_line('invalid string length');
 end;
 
 
 
begin
declare
 a varchar2(2):='abc';
 begin
 dbms_output.put_line(a);
 exception when value_error then
 dbms_output.put_line('invalid string length');
 end;
 exception when value_error then
 dbms_output.put_line('invalid string length handled through the outer block only');
 end;
 
begin
declare
a number(10):=10;
b number(10):=0;
z number(10);
begin
z:=a/b;
dbms_output.put_line(z);
exception when zero_divide then
 dbms_output.put_line('can not be divisor zero');
 end;
exception when zero_divide then
 dbms_output.put_line('can not be divisor zero outer block');
 end;
 
 
 ---exception propagation by using userdefine exception
 --exception raised in executable section;
 set serveroutput on;
 
declare
a exception;
begin
raise a;
exception when a then
dbms_output.put_line('Exception handled by using inner blocks');
end;

declare
a exception;
begin
begin
raise a;
end;
exception when a then
dbms_output.put_line('Exception handled by using outer blocks');
end;
 
 SET SERVEROUTPUT ON;
 
declare
a exception;
b exception;
begin
begin
raise a;
exception when a then
dbms_output.put_line('Exception raise in executable section handled by using inner blocks');
raise b;
end;
exception when b then
dbms_output.put_line('Exception raise in exception section handled by using outer blocks');
end;

 declare
a exception;
b exception;
c exception;
begin
begin
begin
raise a;
exception when a then
dbms_output.put_line('Exception handled by using a blocks');
raise b;
end;
exception when b then
dbms_output.put_line('Exception handled by using b blocks');
raise c;
end;
exception when c then
dbms_output.put_line('Exception handled by using c blocks');
end;
 
 ---------------un-named exception--------------------------------------
 
 create table ane(empno number primary key,fname varchar2(20));
 
begin
insert into ane(empno,fname) values(11,'aa');
end;
 
 set serveroutput on;

declare
a exception;
pragma exception_init(a,-1400);
begin
insert into ane(empno,fname) values(null,'Murali');
exception when a then
dbms_output.put_line('not to insert null values');
end;

begin
delete from hr.employees where department_id=20;
end;

declare
a exception;
pragma exception_init(a,-2292);
begin
delete from hr.employees where department_id=20;
exception when a then
dbms_output.put_line('Not to delete master table record');
end;

declare
a exception;
pragma exception_init(a,-2291);
begin
insert into ane(empno,fname) values(11,'GG');
exception when a then
dbms_output.put_line('not to insert other than primary key');
end;

set serveroutput on;

--raise application error

declare
a number(10):=10;
b number(10):=20;
z exception;
begin
if a=b then
dbms_output.put_line('True');
else
raise z;
end if;
exception when z then
raise _application_error(-20345,'my exception raise in else part');
end;


declare
a exception;
begin
if to_char(sysdate,'DY')='TUE' then
raise a;
end if;
exception when a then
raise_application_error(-20345,'My exception raised on tuesday');
end;

declare
comm number(10);
a exception;
begin
select  commission_pct into comm  from hr.employees where employee_id=&no;
if comm is not null then
dbms_output.put_line(comm);
else 
raise a;
end if;
exception when no_data_found then
dbms_output.put_line('no data found');
--exception when to_many_rows then
--dbms_output.put_line('return more rows');
exception when a then
dbms_output.put_line('commission is null');
end;
 
set serveroutput on;


declare
    n1 number(10):=&no1;
    n2 number(10):=&no2;
    begin
    dbms_output.put_line('Division '||to_number(n1/n2));
exception when zero_divide then
raise_application_error(-20001,'divisor can not be zero');
end;

--error trapping function in plsql

declare
v_sal number(10);
begin
select salary into v_sal from hr.employees where department_id=&deptno;
dbms_output.put_line(v_sal);
exception when others then
dbms_output.put_line(sqlcode);
end;

set serveroutput on;


begin
delete  from hr.departments where department_id=50;
exception when others then
if sqlcode=-2292 then
dbms_output.put_line('not to delete from master table records');
end if;
end;


CREATE TABLE tbl_invalid (col1  NUMBER,col2  VARCHAR2(50));
 
  declare
 a  NUMBER;
 b  VARCHAR2(50);
 C  VARCHAR2(50);
  BEGIN
   a:=1/0;
  EXCEPTION
  WHEN OTHERS THEN
  a:=sqlcode;
  b:=sqlerrm;
 INSERT INTO tbl_invalid (col1,col2) VALUES (a,b);
  END ;
  
select * from tbl_invalid;

--user defined exception with sqlcode and sqlerrm

declare
v_sal number(10);
begin
select salary into v_sal from hr.employees where department_id=&no;
dbms_output.put_line(v_sal);
exception 
            when no_data_found then
dbms_output.put_line(sqlcode);
dbms_output.put_line(SQLERRM);
            when too_many_rows then
dbms_output.put_line(sqlcode);
dbms_output.put_line(SQLERRM);
 end;

--un named exception with sqlcode and sqlerrm

declare
large_value exception;
pragma exception_init(large_value,-1438);
begin
insert into errt values(123456765432);
exception when large_value then
dbms_output.put_line(sqlcode);
dbms_output.put_line(SQLERRM);
end;

--raise application error with sqlcode and sqlerrm

declare
no1 number(10):=10;
no2 number(10):=0;
no3 number(10);
begin
if no2 =0 then
raise_application_error(-20008,'this is raise application error');
end if;
exception when others then
dbms_output.put_line(sqlcode);
dbms_output.put_line(SQLERRM);
end;

select * from user_procedures where procedure_name ='P1';--it display 

--procedure

--in parameter for
create or replace procedure p1(deptid in number)
as
fname varchar2(20);
fsal number;
begin
select first_name,salary into fname,fsal  from hr.employees where department_id=deptid;
dbms_output.put_line( fname||' '||fsal);
exception when no_data_found then
dbms_output.put_line('no required data found');
when too_many_rows then
dbms_output.put_line('it return too many rows');
end p1;



--below are call procedure in sql developer in parameter only and it shows in dbms output tab after below run

exec p1(50);

--below are call procedure in sql developer in parameter only and it shows in dbms output tab after below run

begin p1(50);
end;

--below are call procedure in sql developer in parameter only and it shows in dbms output tab after below run

call p1(50);

--with curssor 

create or replace procedure p2(deptno in number)
is
i hr.employees%rowtype;
cursor c1 is select * from hr.employees where department_id=deptno;
a exception;
begin
open c1;
fetch c1 into i;
if c1%rowcount=0 then
raise a;
else
while(c1%found)
loop
dbms_output.put_line(i.employee_id||' '||i.first_name||' '||i.department_id);
fetch c1 into i;
end loop;
end if;
close c1;
exception when a then
dbms_output.put_line('no data found');
end p2;

exec p2(50);

call p2(50);

begin p2(50);
end;

--with predefined error
create or replace procedure p2(deptid in number)
is
cursor c1 is select * from hr.employees where department_id=deptid;
i hr.employees%rowtype;
begin
open c1;
fetch c1 into i;
if c1%rowcount =0 then
raise no_data_found;
else
while(c1%found)
loop
dbms_output.put_line(i.employee_id||' '||i.first_name||' '||i.salary);
fetch c1 into i;
end loop;
end if;
close c1;
exception when no_data_found then
dbms_output.put_line('no data found');
end p2;

exec p2(50);

call p2(30);

begin p2(500);
end;




 --in parameter insert
 select * from hr.dept;
 create or replace procedure p3(dept_id in number,deptname in varchar2,manager_id in number, location_id in number)
 as
 begin
 insert into hr.dept(department_id,department_name,manager_id,location_id) values(dept_id,deptname,manager_id,location_id);
 end p3;
 
 exec p3(400,'abc',222,1400);
 
 
 create or replace procedure p4( a in number,b out number)
 is
 begin
 b:=a*a;
 end p4;
 --Bind variable (execute in cmd window)
 
-- variable x number;
-- exec p4(7,:x);
-- print x;

--anonymous block

declare
x number(10);
begin
p4(8,x);
dbms_output.put_line(x);
end;

--
create or replace procedure p5(empid in number,sal out number)
is
begin
select salary into sal from hr.employees where employee_id=empid;
dbms_output.put_line(sal);
end p5;

--
declare
 a number;
 begin
 p5(100,a);
 --dbms_output.put_line(a);
 end;---
 
 
 --pass deptno and return no. of employee from dept;
 create or replace procedure p5(deptno in number,count_emp out number)
 as
 begin
 select count(*) into count_emp from hr.employees where department_id=deptno;
 dbms_output.put_line(count_emp);
 end p5;
 
 
 
 declare
 a number;
 begin
 p5(50,a);
 end;
 
 --pass dept no and return dname,location and manager
 
 select * from hr.departments;
 
 
 create or replace procedure p6(deptno in number,deptname out varchar2,location_id out varchar2)
 is
 begin
 select department_name,location_id into deptname,location_id from hr.departments where department_id=deptno;
 dbms_output.put_line(deptname||' '||location_id);
 end p6;
 
 
 declare
 a varchar2(20);
 b number(10);
 begin
 p6(50,a,b);
  dbms_output.put_line(a||' '||b);
 end;
---

create or replace procedure get_emp_rec_proc(empid in hr.employees.employee_id%type,emp_ret out hr.employees%rowtype)
is
begin
select EMPLOYEE_ID,	FIRST_NAME,	LAST_NAME,	EMAIL,	PHONE_NUMBER into emp_ret
from hr.employees where employee_id=empid;
end get_emp_rec_proc;
  
  
declare
emp_details hr.employees%rowtype;
begin
get_emp_rec_proc(102,emp_details);
dbms_output.put_line('EMP ID'||' '||emp_details.EMPLOYEE_ID);
 dbms_output.put_line('FIRST_NAME'||' '||emp_details.FIRST_NAME);
 dbms_output.put_line('LAST_NAME'||' '||emp_details.LAST_NAME);
 dbms_output.put_line('EMAIL'||' '||emp_details.EMAIL);
 dbms_output.put_line('PHONE_NUMBER'||' '||emp_details.PHONE_NUMBER);
 end;
 --no copy concept
 
create or replace procedure p7(empid in number,fsal out nocopy number)
is
begin
select salary into fsal from hr.employees where employee_id=empid;
end p7;


declare
a number;
begin
p7(104,a);
  dbms_output.put_line(a);
end;


create or replace procedure p8(PI_Name in varchar2,
                                                                  PO_Date out nocopy date,
                                                                  PIO_Status in out nocopy varchar2)
 is
 begin
 PO_Date:=sysdate;
 PIO_Status:=PI_name||' ::: sample in out parameter nocopy testing';
 end p8;
                                                                  


declare
v_date date;
v_status varchar2(200);
begin
p8('Gajanan',v_date,v_status);
dbms_output.put_line(v_date);
dbms_output.put_line(v_status);
end;


--in out parameter
create or replace procedure p9(p_x in out number)
is
begin
select salary into p_x from hr.employees where employee_id=p_x;
end p9;

 --
 create or replace procedure p10(a in number,b in number)
 is
 begin
 dbms_output.put_line(a/b);
 exception when zero_divide then
 dbms_output.put_line('b can not zero');
 end p10; 

alter procedure p10 to p11;


call p10(10,0);

create or replace procedure p11
is
begin
p10(10,0);
exception when others then
dbms_output.put_line('any error occured');
end p11;

exec p11;

-- pragma autonomous transaction
create or replace procedure proc_auto_trans
is
pragma autonomous_transaction;
begin
insert into test2 values('india');
commit;
end proc_auto_trans;


begin
insert into test2 values('pune');
insert into test2 values('mumbai');
proc_auto_trans;
rollback;
end;

select * from test2;

--without using  pragma autonomous transaction
create or replace procedure proc_no_auto_trans
is
begin
insert into test2 values('india');
commit;
end proc_no_auto_trans;

 
begin
insert into test2 values('pune');
insert into test2 values('mumbai');
proc_no_auto_trans;
rollback;
end;

select * from test2;

--function;

create or replace function f1(a varchar2)
return varchar2
as
begin
return a;
end f1;

--execute using select statement
select f1('hi') from dual;

--using anonymous block
declare
a varchar2(20);
begin
a:=f1('Welcome');
dbms_output.put_line(a);
end;

create or replace function f2(a number)
return varchar2
is
begin
if mod(a,2)=0 then
return 'Even';
else
return 'Odd';
end if;
end f2;


select f2(3) from dual;

declare
a varchar2(50);
begin
a:=f1(3);
dbms_output.put_line(a);
end;

---------using bind variable

--SQL> variable z varchar2(20);
--SQL> begin
--  2  :z:=f2(3);
--  3  end;
--  4  /
--
-- SQL> print z;

exec dbms_output.put_line(f2(3));

begin
dbms_output.put_line(f2(3));
end;

--user defined function in dml statements;

insert into test2 values(f2(4));

select * from test2;

create or replace function f3
return varchar2
is
v_sal number;
begin
select max(salary) into v_sal from hr.employees;
return v_sal;
end f3;


select f3 from dual;

select employee_id,f3 from hr.employees;

create or replace function f4(empid in number)
return varchar2
is
v_job varchar2(20);
begin
select job_id into v_job from hr.employees where employee_id=empid;
return v_job;
exception when no_data_found then
return 'no data found';
end f4;

select f4(101) from dual;

declare
x varchar2(20);
begin
x:=f4(1005);
dbms_output.put_line(x);
end;

create or replace function f5(empid in number)
return number
is
v_sal number;
avg_sal number;
deptno number;
begin
select salary,department_id into v_sal,deptno from hr.employees where employee_id=empid;
select avg(salary) into avg_sal from hr.employees where department_id=deptno;
if v_sal>avg_sal then
return 1;
else
return 2;
end if;
end f5;

select f5(101) from dual;

declare
a number;
begin
a:=f5(100);
dbms_output.put_line(a);
end;


exec dbms_output.put_line(f5(100)) ;

begin
dbms_output.put_line(f5(100)) ;
end;

select * from hr.employees where f5(100)=1;

create or replace function f6(empno number,p_date date)
return number
is
z number(10);
begin
select months_between(p_date,hire_date)/12 into z from hr.employees where employee_id=empno;
return round(z);
end f6;

select f6(102,sysdate) from dual;

select employee_id,first_name,last_name,f6(employee_id,sysdate)  from hr.employees  where employee_id=105;


select f6(106,sysdate) from dual;

declare
a number;
b date;
c varchar2(30);
begin
c:=f6(112,sysdate);
dbms_output.put_line(c);
end;



create or replace function f8(empid in number)
return number
is
ann_sal number;
sal number;
z number;
begin
select salary  into sal from hr.employees where employee_id=empid;
ann_sal:=sal*12;
if ann_sal>10000 and ann_sal<15000 then
z:= ann_sal*0.1;
elsif  ann_sal>15000 and ann_sal<20000 then
z:= ann_sal*0.2;
elsif  ann_sal>20000  then
z:= ann_sal*0.3;
else
z:=0;
end if;
return z;
end f8;


select f8(110) from dual;





select 10000*.1 from dual;


create or replace function f9(deptno in number)
return number
is
v_count number;
begin
delete from emp where department_id=deptno;
v_count:=sql%rowcount;
return v_count;
end f9;

select * from emp;

declare
a number;
begin
a:=f9(50);
dbms_output.put_line(a);
end;

create or replace function f10(deptno in number)
return varchar2
is
v_count number;
pragma autonomous_transaction;
begin
delete from emp where department_id=deptno;
v_count:=sql%rowcount;
commit;
return 'no of record deleted is '||' '||v_count;
end f10;

insert into emp select * from hr.employees;


select f10(50) from dual;
--out parameter in function

create or replace function f11(deptno in number,deptname out varchar2,l_name out number)
return varchar2
is
begin
select department_name,location_id into deptname,l_name from hr.departments where department_id=deptno;
return deptname;
end f11;


-- SQL> conn as sysdba
--Enter user-name: hr
--Enter password:
--Connected.
--SQL> variable a varchar2(20);
--SQL> variable b varchar2(20);
--SQL> variable c varchar2(20);
--SQL> begin
--  2  :a:=f11(50,:b,:c);
--  3  end;
--  4  /
--
--PL/SQL procedure successfully completed.
--
--SQL> print b c;

--execution method of function with out parameter anonymous block
declare
a varchar2(30);
b varchar2(30);
c varchar2(30);
begin
c:=f11(50,a,b);
dbms_output.put_line(a||' '||b);
end;


--function with cursor

create or replace function f12(deptno in number)
return varchar2
is
a varchar2(500);
cursor c1 is select first_name into a from hr.employees where department_id=deptno;
begin
for i in c1
loop
a:=a||' '||i.first_name;
end loop;
return a;
end f12;

select department_id,f12(department_id) from hr.employees group by department_id;
select department_id,wm_concat(department_id) from hr.employees group by department_id;


--packages in plsql

create or replace package pk1
is
procedure p1;
end pk1;

create or replace package body pk1
is 
procedure p1
is
begin
dbms_output.put_line('This is procedure p1 in package pk1');
end p1;
end pk1;

--
exec pk1.p1;

begin
pk1.p1;
end;
 
 -----------------------
 
 create or replace package pk2
 is
 procedure p1(deptno in number);
end pk2;
 
 create or replace package body pk2
 is
 procedure p1(deptno in number)
 is
 cursor c1 is select * from hr.employees where department_id=deptno;
 i hr.employees%rowtype;
 a exception;
 begin
 open c1;
  fetch c1 into i;
  if c1%rowcount =0 then 
  raise a;
 else
 while(c1%found) 
 loop
 dbms_output.put_line(i.first_name||' '||i.department_id);
 fetch c1 into i;
 end loop;
 end if;
 close c1;
 exception when a then
 dbms_output.put_line('no data found');
 end p1;
 end pk2;
 
 exec pk2.p1(50);
 
 begin
 pk2.p1(500);
 end;
 
 
 
 
 create or replace package pk3
 is
 g number(10):=500;
 procedure p1;
 function f1(a number)
 return number;
 end pk3;
 
 
 create or replace package body pk3
 is
 procedure p1
 is
 x number(10);
 begin
 x:=g/2;
 dbms_output.put_line(x);
 end p1;
 function f1(a number)
 return number
 is
 begin
 return g*a;
 end f1;
 end pk3;
 
 
select pk3.f1(2) from dual;
 
 --package function with anonymous block
 
 declare
 a number;
begin
a:=pk3.f1(2);
dbms_output.put_line(a);
end;
  
  
--overloading procedure
create or replace package pk5
is
procedure p1(a number,b number);
procedure p1(x number,y number);
end pk5;


create or replace package body pk5
is
procedure p1(a number,b number)
is
c number;
begin
c:=a/b;
dbms_output.put_line(c);
end p1;
procedure p1(x number,y number)
is
z number;
begin
z:=x-y;
dbms_output.put_line(z);
end p1;
end pk5;


exec pk5.p1(10,2);--this will fetch error like too many declaration

exec pk5.p1(a=>10,b=>2);
exec pk5.p1(x=>10,y=>5);

---types used in package
--varray

declare
type t1 is varray(10) of number(10);
arr t1:=t1(10,20,30,40,50);
z boolean;
begin
dbms_output.put_line(arr.first);
dbms_output.put_line(arr.last);
dbms_output.put_line(arr.prior(3));
dbms_output.put_line(arr.next(4)); 
dbms_output.put_line(arr.count);
dbms_output.put_line(arr.limit);
for i in arr.first..arr.last
loop
dbms_output.put_line(arr(i));
end loop;
z:=arr.exists(6);
if z= true then
dbms_output.put_line('your index is exists');
else
dbms_output.put_line('your index is not exists');
end if;
arr.extend;
arr(6):=60;
dbms_output.put_line(arr(6));
arr.extend(2);
arr(7):=70;
arr(8):=80;
dbms_output.put_line(arr(7));
dbms_output.put_line(arr(8));
arr.trim(4);--ya made ky hote arr made ahe ka te delete hote
dbms_output.put_line(arr.count);
arr.delete;
dbms_output.put_line(arr.count);
end;

declare
type t1 is varray(10) of number(10);
arr t1:=t1(10,20,30,40,50);
z boolean;
begin
dbms_output.put_line(arr.first);
dbms_output.put_line(arr.last);
dbms_output.put_line(arr.prior(3));
dbms_output.put_line(arr.next(4)); 
dbms_output.put_line(arr.count);
dbms_output.put_line(arr.limit);
for i in arr.first..arr.last
loop
dbms_output.put_line(arr(i));
end loop;
z:=arr.exists(6);
if z= true then
dbms_output.put_line('your index is exists');
else
dbms_output.put_line('your index is not exists');
end if;
arr.extend;
arr(6):=60;
dbms_output.put_line(arr(6));
--arr.extend(2);
--arr(7):=70;
--arr(8):=80;
--dbms_output.put_line(arr(7));
--dbms_output.put_line(arr(8));
arr.trim(4);--ya made ky hote arr made ahe ka te delete hote. trim  from last like 5,4,3
for i in arr.first..arr.last
loop
dbms_output.put_line(arr(i));
end loop;
dbms_output.put_line(arr.count);
arr.delete;--this will delete all record 
dbms_output.put_line(arr.count);
end;

--
declare
type t1 is varray(20) of hr.employees%rowtype;
arr t1:=t1();
cursor c1 is select * from hr.employees where rownum<=10;
n number:=1;
begin
for i in c1 loop
arr.extend();
arr(n):=i;
n:=n+1;
end loop;
for i in arr.first..arr.last
loop
dbms_output.put_line(arr(i).first_name||' '||arr(i).salary);
end loop;
end;

--without using five record in varray
declare
 type t1 is varray(10) of hr.employees%rowtype;
 arr t1:=t1(null,null,null,null,null);
 begin
 for i in arr.first..arr.last
 loop
 select *  into arr(i) from hr.employees where employee_id=100+i;
 dbms_output.put_line(arr(i).first_name);
 end loop;
 end;
--------------------------------------------------------------
--------------------------------------------------------------
set serveroutput on;

create or replace procedure p1
as
type t1 is varray(10) of number(10);
arr t1;
begin
arr:=t1(11,22,33,44,55);
dbms_output.put_line(arr(1));
end p1;


exec p1;


create or replace procedure p1(v1 number)
as
type t1 is varray(10) of number(10);
arr t1;
begin
arr:=t1(11,22,33,44,55);
dbms_output.put_line(arr(v1));
end p1;


exec p1(1);

declare
type t1 is varray(10) of number(10);
arr t1:=t1(11,22,33,44,55);
begin
for i in arr.first..arr.last
loop
dbms_output.put_line(arr(i));
end loop;
end;

--associative array
declare
type t1 is table of  number(10) index by varchar2(20);
arr t1;
flag boolean;
begin
arr(1):=10;
arr(2):=20;
arr(3):=30;
arr(4):=40;
arr(5):=50;
dbms_output.put_line(arr.first);
dbms_output.put_line(arr.last);
dbms_output.put_line(arr.prior(3));
dbms_output.put_line(arr.next(2));
dbms_output.put_line(arr.count);
flag:=arr.exists(6);
if flag=true then
dbms_output.put_line('This is exists');
else
dbms_output.put_line('This is not exists');
end if;
arr.delete(3);
dbms_output.put_line(arr.count);
 end;



--associative array
declare
type t1 is table of  number(10) index by varchar2(20);
arr t1;
flag boolean;
begin
arr(1):=10;
arr(2):=20;
arr(3):=30;
arr(4):=40;
arr(5):=50;
for i in arr.first..arr.last
loop
dbms_output.put_line(arr(i));
end loop;
end;

----------------------------------------
declare
type t1 is table of varchar2(20) index by varchar2(20);
arr t1;
cursor c1 is select first_name from hr.employees;
n number(10):=1;
begin
open c1;
loop
 fetch c1 into arr(n);
 exit when c1%notfound;
 n:=n+1;
end loop;
close c1;
for i in arr.first..arr.last
loop
dbms_output.put_line(arr(i));
end loop;
end;




--
declare
type t1 is table of date index by varchar2(20);
arr t1;
begin
for i in 1..10 loop
arr(i):=sysdate+i;
end loop;
for i in arr.first..arr.last
loop
dbms_output.put_line(arr(i));
end loop;
end;


--nested table
declare
type t1 is table of number(10);
arr t1:=t1(10,20,30,40,50);
flag boolean;
begin
arr(1):=10;
arr(2):=20;
arr(3):=30;
arr(4):=40;
arr(5):=50;
dbms_output.put_line(arr.first);
dbms_output.put_line(arr.last);
dbms_output.put_line(arr.prior(3));
dbms_output.put_line(arr.next(3));
dbms_output.put_line(arr.limit);
dbms_output.put_line(arr.count);
arr.delete(3,4);
dbms_output.put_line(arr.count);
for i in arr.first..arr.last
loop
dbms_output.put_line(arr(i));
end loop;
flag:=arr.exists(6);
if flag=true then
dbms_output.put_line('This is exists');
else
dbms_output.put_line('This is not exists');
end if;
arr.extend;
arr(10):=500;
dbms_output.put_line(arr.count);
if arr.limit is null then
dbms_output.put_line('no limit ot nested table');
else
dbms_output.put_line('limit '||' '||arr.limit);
end if;
 end;
 
 ------------------
 declare
 type t1 is table of varchar2(20);
 arr t1:=t1();
 cursor c1 is select first_name from hr.employees;
n number(10):=1;
 begin
 for  i in c1 loop
  arr.extend(n);
    arr(n):=i.first_name;
    n:=n+1;
 end loop;
 for i in arr.first..arr.last loop
 dbms_output.put_line(arr(i));
 end loop;
 end;
 

 
 ---bulk collect
 
 --select into clause
 
 declare
  type t1 is table of hr.employees%rowtype;
  v_t t1;
  begin
  select * bulk collect into v_t from hr.employees;
  for i in v_t.first..v_t.last loop
  dbms_output.put_line(v_t(i).first_name||' '||v_t(i).salary);
  end loop;
  end;
 
 --
 declare
  type t1 is table of hr.employees%rowtype;
cursor c1 is select * from hr.employees;
  v_t t1;
  begin
  open c1;
  fetch c1 bulk collect into v_t;
  close c1;
  for i in v_t.first..v_t.last loop
  dbms_output.put_line(v_t(i).first_name||' '||v_t(i).salary);
  end loop;
  end;
  
  
  DECLARE
    TYPE emp_table IS TABLE OF VARCHAR2(100) INDEX BY binary_INTEGER;
    emp_names emp_table;  -- Associative Array
BEGIN
    -- Bulk collect first names into associative array
    SELECT first_name 
    BULK COLLECT INTO emp_names
    FROM hr.employees;
    
    -- Print values from associative array
    FOR i IN emp_names.FIRST..emp_names.LAST LOOP
        DBMS_OUTPUT.PUT_LINE(emp_names(i));
    END LOOP;
END;


  
  
  
  
   
  DECLARE
    TYPE t1 IS TABLE OF VARCHAR2(200) INDEX BY BINARY_INTEGER;
    vt t1;
BEGIN
    -- Bulk collect first names into the associative array
    SELECT first_name 
    BULK COLLECT INTO vt 
    FROM hr.employees;

    -- Iterate through the array using proper indexing
    FOR i IN vt.FIRST..vt.LAST LOOP
        DBMS_OUTPUT.PUT_LINE(vt(i));  -- Correct way to access elements
    END LOOP;
END;
  
  
  --limit (nested table)
  declare
  type t1 is table of hr.employees%rowtype;
  v_t t1;
  cursor c1 is select * from hr.employees;
  begin
  open c1;
  fetch c1  bulk collect into v_t limit 10;
  close c1;
  for i in 1..v_t.count loop
  dbms_output.put_line(v_t(i).first_name);
  end loop;
  end;
  
  --limit with associative array
  declare
  type t1 is table of varchar2(20) index by binary_integer;
  v_t t1;
  cursor c1 is select first_name from hr.employees;
  begin
  open c1;
  fetch c1 bulk collect into v_t limit 10;
  close c1;
  for i in 1..v_t.count loop
  dbms_output.put_line(v_t(i));
  end loop;
  end;
  
  
  
 --return resultset
 create or replace package pkg1 is
 type t1 is table of hr.employees%rowtype index by binary_integer;
 function f1 return t1;
 procedure p1;
 end pkg1;
 
 create or replace package body  pkg1
 is
 function f1 return t1
 is
 v_t t1;
 begin
 select * bulk collect into v_t from hr.employees;
 return v_t;
 end f1;
end pkg1;
 
 
 --execution
 declare
 x pkg1.t1;
 begin
 x:=pkg1.f1;
 for i in x.first..x.last loop
 dbms_output.put_line(x(i).first_name);
end loop;
 end;
 
 
 declare
 type t1 is table of varchar2(20) index by binary_integer;
 v_t t1;
 begin
 select first_name bulk collect into v_t from hr.employees;
 v_t.delete(10);
 for i in v_t.first..v_t.last loop
 dbms_output.put_line(v_t(i));
 end loop;
 end;
 
 
 --using exists method
 declare
 type t1 is table of varchar2(20) index by binary_integer;
 v_t t1;
 begin
 select first_name bulk collect into v_t from hr.employees;
 v_t.delete(10);
 for i in v_t.first..v_t.last loop
 if v_t.exists(i) then
 dbms_output.put_line(v_t(i));
 end if;
 end loop;
 end;
 
 declare
type t1 is table of number(10) INDEX by binary_integer;
v_t t1;
begin
v_t(500):=50;
dbms_output.put_line(v_t(500));
end;

declare
type t1 is table of number(10);
v_t t1:=t1();
begin
v_t(500):=50;
dbms_output.put_line(v_t(500));
end;

declare
TYPE t1 is table of number(10);
v_t t1:=t1();
begin
v_t.extend(500);
v_t(500):=50;
dbms_output.put_line(v_t(500));
end;

--by using extend key word we need to reserve the memory
declare
type t1 is table of number(10);
v_t t1:=t1();
begin
v_t.extend(5);
v_t(1):=10;
v_t(2):=20;
v_t(3):=30;
v_t(4):=40;
v_t(5):=50;
dbms_output.put_line(v_t(4));
end;


--without using extend key word

declare
type t1 is table of number(10);
v_t t1:=t1(10,20,30,40,50);
begin
for i in v_t.first..v_t.last loop
dbms_output.put_line(v_t(i));
end loop;
end;


declare
type t1 is table of number(10);
v_t t1:=t1();
begin
v_t.extend(10);
v_t(1):=10;
dbms_output.put_line(v_t(1));
end;

declare
type t1 is table of number(10);
v_t t1:=t1(10,20,30,40);
begin
dbms_output.put_line(v_t.first);
dbms_output.put_line(v_t.last);
dbms_output.put_line(v_t.prior(3));
dbms_output.put_line(v_t.next(2));
dbms_output.put_line(v_t.count);
v_t.extend;
v_t(5):=50;
v_t.extend(3,4);
v_t.trim;
dbms_output.put_line(v_t.count);
for i in v_t.first..v_t.last loop
dbms_output.put_line(v_t(i));
end loop;
end;


declare
type t1 is table of number(10);
v_t t1:=t1(10,20,30,40,50,60);
begin
v_t.trim(2);
dbms_output.put_line('after deleting last two elements');
for i in v_t.first..v_t.last loop
dbms_output.put_line(v_t(i));
end loop;
v_t.delete(2);
dbms_output.put_line('after deleting second elements');
for i in v_t.first..v_t.last loop
if v_t.exists(i) then
dbms_output.put_line(v_t(i));
end if;
end loop;
end;

--bulk collect clause through the nested table
declare
type t1 is table of hr.employees%rowtype;
vt t1:=t1();
begin
select * bulk collect into vt from hr.employees;
for i in vt.first..vt.last loop
dbms_output.put_line(vt(i).first_name);
end loop;
end;

 --bulk collect clause through the associative array
 declare
 type t1 is table of hr.employees%rowtype index by binary_integer;
 vt t1;
 begin
 select * bulk collect into vt from hr.employees;
 for  i in vt.first..vt.last
 loop
 dbms_output.put_line(vt(i).first_name);
 end loop;
 end;
 
 --bulk collect clause used in cursor fetch statement associative array
 declare
 type t1 is table of hr.employees%rowtype index by binary_integer;
 v_t t1;
 cursor c1 is select * from hr.employees;
 begin
 open c1;
 fetch c1 bulk collect into v_t;
 close c1;
 for i in v_t.first..v_t.last loop
 dbms_output.put_line(v_t(i).first_name||' '||v_t(i).salary);
 end loop;
 end;
 
  --bulk collect clause used in cursor fetch statement nested table
 declare
 type t1 is table of hr.employees%rowtype;
 v_t t1:=t1();
cursor c1 is select * from hr.employees;
begin
open c1;
fetch c1 bulk collect into v_t;
close c1;
for i in v_t.first..v_t.last loop
dbms_output.put_line(v_t(i).first_name||' '||v_t(i).salary);
end loop;
end;

 
 --returning clause with associative array
 declare
 type t1 is table of number(10) index by binary_integer;
 v_t t1;
 begin
 update hr.employees set salary=salary+100 where department_id=30 returning salary bulk collect into v_t;
 dbms_output.put_line(sql%rowcount);
 for i in v_t.first..v_t.last 
 loop
 dbms_output.put_line(v_t(i));
 end loop;
 end;
 
 --returning clause with nested table
 declare
  type t1 is table of number(10);
  v_t t1:=t1(30);
  begin
  update hr.employees set salary=salary+100 where department_id=30 returning salary bulk collect into v_t;
  dbms_output.put_line(sql%rowcount);
  for i in v_t.first..v_t.last loop
  dbms_output.put_line(v_t(i));
  end loop;
  end;
  
  --bulk bind
 
declare
type t1 is table of number(10) index by binary_integer;
v_t t1;
begin
select employee_id bulk collect into v_t from hr.employees;
 forall i in v_t.first..v_t.last
 update hr.employees set salary=salary+100 where employee_id=v_t(i);
 end;
 
SELECT * FROM HR.EMPLOYEES;
 
 
 --varray update
 declare
 type t1 is varray(20) of number(10);
 v_t t1:=t1(20,30);
 begin
 forall i in v_t.first..v_t.last
 update hr.employees set salary=salary+100 where department_id=v_t(i);
 end;
 
 select * from hr.employees where department_id in(20,30);
 
 --bulk insert 
 
 declare
 type t1 is table of varchar2(20) index by binary_integer;
 v_t t1;
 begin
 select first_name bulk collect into v_t from hr.employees;
 v_t(1):='abc';
 v_t(2):='pqr';
 forall i in v_t.first..v_t.last 
 insert into test(country) values(v_t(i));
 end;


 declare
 type t1 is table of varchar2(20) index by binary_integer;
 v_t t1;
 begin
 select first_name bulk collect into v_t from hr.employees;
 forall i in v_t.first..v_t.last 
 insert into test(country) values(v_t(i));
 end;


 
 select * from test;
 truncate table test;
 --indices of clause
 --bulk update;
 declare
 type t1 is table of number(10) index by binary_integer;
 v_t t1;
 begin
 select department_id bulk collect into v_t from hr.employees;
 forall i in indices of v_t
 update hr.employees set salary =salary+50 where department_id=v_t(i);
 end;
 
 --bulk delete;
 declare
  type t1 is varray(20) of number(10);
 v_t t1:=t1(20,30);
 begin
  forall i in v_t.first..v_t.last 
 delete from hr.emp2 where department_id=v_t(i);
 end;
 
 declare
 type t1 is table of number(10) index by binary_integer;
 v_t t1;
 begin
 select department_id bulk collect into v_t from hr.emp2 where department_id=50;
 forall i in v_t.first..v_t.last 
 delete from hr.emp2 where department_id=v_t(i);
 end;
 
 select * from hr.emp2;
 
 rollback;

 declare
 type t1 is varray(20) of number(10);
 v_t t1:=t1(20,30);
 begin
 forall i in v_t.first..v_t.last 
 delete from hr.emp2 where department_id=v_t(i);
 for i in v_t.first..v_t.last loop
DBMS_OUTPUT.PUT_LINE('Number of affected rows for Dept  '||v_t(i)  || ': ' ||SQL%BULK_ROWCOUNT(i));
 end loop;
 end;
 
 
select * from hr.emp2;
 
 
--SAVE EXCEPTION 
 declare
 type t1 is table of number(10);
 v_t t1:=t1(20,30,40,50,60);
 z number(10);
 begin
 v_t(3):=null;
 v_t(4):=null;
 forall i in v_t.first..v_t.last  save exceptions
 insert into test(country) values(v_t(i));
 exceptions 
 when others then
 z:=sql%bulk_exception.count;
 dbms_output.put_line(z);
 for i in 1..z 
 loop
 dbms_output.put_line(sql%bulk_exceptions(i).error_index||' '||sql%bulk_exceptions(i).error_code);
 end loop;
 end;
 
 ---dbms_utility package
 
 --comma to table
 declare
 v_t dbms_utility.uncl_array;
 x binary_integer;
 str varchar2(200);
 begin
 str:='a,b,c,d,e,f';
 dbms_utility.comma_to_table(str,x,v_t);
 for i in v_t.first..v_t.last loop
 dbms_output.put_line(v_t(i));
 end loop;
 end;
 
 declare
 v_t dbms_utility.uncl_array;
 x binary_integer;
 str varchar2(2000);
 begin
 select department_name bulk collect into v_t from hr.departments;
 dbms_utility.table_to_comma(v_t,x,str);
 dbms_output.put_line(str);
 end;
 
 
 DECLARE
    TYPE t1 IS TABLE OF VARCHAR2(200); -- Correct collection type
    v_t t1;
    str VARCHAR2(1000); -- Extended size for result
BEGIN
    -- Bulk collect department names into the collection
    SELECT department_name BULK COLLECT INTO v_t FROM hr.departments;

    -- Convert collection to comma-separated string
    str := v_t(1);
    FOR i IN 2..v_t.COUNT LOOP
        str := str || ', ' || v_t(i);
    END LOOP;

    -- Display the comma-separated list of department names
    DBMS_OUTPUT.PUT_LINE(str);
END;
 
 
--ref cursor 
 
 
 declare
type t1 is ref cursor;
v_t t1;
i hr.employees%rowtype;
begin
open v_t for select * from hr.employees where salary>10000;
loop
fetch v_t into i;
exit when v_t%notfound;
dbms_output.put_line(i.first_name||' '||i.salary);
end loop;
close v_t;
end;

DECLARE
    TYPE t1 IS REF CURSOR;
    v_t t1;
    i hr.employees%ROWTYPE;
    deptno NUMBER(10) := 10; -- Assign a valid department number

BEGIN
    -- Check condition before opening cursor
    IF deptno = 10 THEN
        OPEN v_t FOR SELECT * FROM hr.employees WHERE department_id = deptno;

        LOOP
            FETCH v_t INTO i;
            EXIT WHEN v_t%NOTFOUND;
            DBMS_OUTPUT.PUT_LINE(i.first_name || ' ' || i.department_id);
        END LOOP;
        CLOSE v_t;
    END IF;
END;
/

declare
type t1 is ref cursor;
c1 t1;
i hr.employees%rowtype;
j hr.departments%rowtype;
begin
open c1 for select * from hr.employees;
loop
fetch c1 into i;
exit when c1%notfound;
dbms_output.put_line(i.first_name||' '||i.salary);
end loop;
close c1;
open c1 for select * from hr.departments;
loop
fetch c1 into j;
exit when c1%notfound;
dbms_output.put_line(j.department_name);
end loop;
close c1;
end;


--sys ref cursor
declare
v_t sys_refcursor;
i hr.employees%rowtype;
begin
open v_t for select * from hr.employees;
loop
fetch v_t into i;
exit when v_t%notfound;
dbms_output.put_line(i.first_name||' '||i.salary);
end loop;
close v_t;
end;

--passing sys refcusor as in parameter the subprogram

create or replace procedure p1(v_t in sys_refcursor)
is
i hr.employees%rowtype;
begin
loop
fetch v_t into i;
exit when v_t%notfound;
dbms_output.put_line(i.first_name||' '||i.salary);
end loop;
end p1;

--executing above procedure 
declare
v_t sys_refcursor;
begin
open  v_t for select * from hr.employees;
p1(v_t);
close v_t;
end;

--passing sys refcursor to out parameter to the subprogram
create or replace procedure p1(v_t out sys_refcursor)
is
begin
open v_t for select * from hr.employees;
end p1;


declare
v_t sys_refcursor;
i hr.employees%rowtype;
begin
p1(v_t);
loop
fetch v_t into i;
exit when v_t%notfound;
dbms_output.put_line(i.first_name||' '||i.salary);
end loop;
close v_t;
end;

--function
create or replace function f1
return sys_refcursor
is
v_t sys_refcursor;
begin
open v_t for select * from hr.employees;
return v_t;
end f1;


select f1 from dual;

 create or replace package pk1 
 is
 type t1 is ref cursor
 return hr.employees%rowtype;
 procedure p1(v_t out t1);
 type t2 is ref cursor
 return hr.departments%rowtype;
 procedure p2(v_t2 out t2);
 end pk1;

 

create or replace package body pk1
is
procedure p1(v_t out t1)
is
begin
open v_t for select * from hr.employees;
end p1;
procedure p2(v_t2 out t2)
is
begin
open v_t2 for select * from hr.departments;
end p2;
end pk1;





declare
a varchar2(2000);
b varchar2(2000);
begin
pk1.p1(:a);
dbms_output.put_line(a);
end;



DECLARE
    a VARCHAR2(2000);
    b VARCHAR2(2000);
BEGIN
    -- Call procedure and pass variable correctly
    pk1.p1(a);
    
    -- Print the value assigned in the procedure
    DBMS_OUTPUT.PUT_LINE(a);
END;

 --debuging procedure
 
create or replace procedure p1(empid in number,fname out varchar2,P_OUT_MESSAGE out varchar2)
is
begin
   select first_name into fname from hr.employees where employee_id =empid;                                                             
   dbms_output.put_line(fname);
   P_OUT_MESSAGE:='Success';
   exception when no_data_found then
   dbms_output.put_line('requested data not found');
   P_OUT_MESSAGE:='Fail';
   end;
 
 

 
 CREATE OR REPLACE PROCEDURE p2(
    deptno IN NUMBER,
    fname  OUT VARCHAR2
)
IS
BEGIN
    SELECT first_name 
    INTO fname 
    FROM hr.employees 
    WHERE department_id = deptno;

    DBMS_OUTPUT.PUT_LINE(fname);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No employee found in department ' || deptno);
        fname := NULL;
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('More than one employee found in department ' || deptno);
        fname := NULL;
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Unexpected error: ' || SQLERRM);
        fname := NULL;
END p2;
 
--trigger

 
  
  create table test10(srno number primary key,sname varchar2(20),sal number);
  
  insert into test10 values(1,'A',100);
  insert into test10 values(2,'B',200);
  insert into test10 values(3,'C',300);
  insert into test10 values(4,'D',400);
  insert into test10 values(5,'E',500);
  insert into test10 values(6,'E',600);
  insert into test10 values(7,'E',700);
  insert into test10 values(8,'F',700);   
  
  select * from test10;
   
   create or replace trigger tr_stmt
   after update on test10
   begin
   dbms_output.put_line('statement level trigger record inserted');
   end;
   
 update test10 set sal=sal+1 where sal>=500;
 
 
 
 create  or replace trigger tr_row
 after update on test10
 for each row
 begin
   dbms_output.put_line('row level trigger record inserted');
   end;
 
 update test10 set sal=sal+5 where sname='E';
 
 
 create or replace trigger tr_row_1
 before insert on test10
 for each row
 begin
 if :new.sal>10000 then
 raise_application_error(-20123,'Salary should be less than 10000');
 end if;
 end;
 
 select * from test10;
 insert into test10 values(9,'G',11000);
 
 
 create or replace trigger tr_row_2
 before update on test10
 for each row
declare
 cursor c1 is select * from test10;
 begin
 for i in c1
 loop
 if i.srno=:new.srno then
 raise_application_error(-20345,'not to insert duplicate data');
 end if;
 end loop;
 end;

select * from test10; 
 insert into test10 values(10,'E',1000);
 
 CREATE OR REPLACE TRIGGER tr_row_2
BEFORE UPDATE ON test10
FOR EACH ROW
DECLARE
    CURSOR c1 IS
        SELECT srno FROM test10;
    v_srno test10.srno%TYPE;
BEGIN
    FOR i IN c1 LOOP
        -- Skip the current row being updated
        IF i.srno = :NEW.srno AND :NEW.srno != :OLD.srno THEN
            RAISE_APPLICATION_ERROR(-20345, 'Not allowed to update to a duplicate srno.');
        END IF;
    END LOOP;
END;
 

 ------------------------------------
create or replace trigger tr_row_3
before insert on test10
for each row
declare
v_count number(10);
begin
select count(*) into v_count from test10 where srno=:new.srno;
if v_count>=1 then
raise_application_error(-20123,'we cannot insert duplicate record');
elsif v_count=0 then
dbms_output.put_line('your record is inserted');
end if;
end;
 
 insert into test10 values(9,'E','1000');
 
 select * from test10;
 
 
 
 --updation
 
 create or replace trigger tr_row_4
 after update on test10
 for each row
 declare
 z number(10);
 begin
 z:=:new.sal - :old.sal;
 dbms_output.put_line('Old salary'||' '||:old.sal);
 dbms_output.put_line('New salary'||' '||:new.sal);
 dbms_output.put_line('difference on salary'||' '||z);
 end;
 
 update test10 set sal=sal+100 where srno=1;
 select * from test11;
 
 
 create table test11 as select * from test10;
 
 
 CREATE OR REPLACE TRIGGER tr_row_5
AFTER UPDATE ON test11
FOR EACH ROW
DECLARE
    z NUMBER(10);
BEGIN
    z := :NEW.sal - :OLD.sal;

    DBMS_OUTPUT.PUT_LINE('Old salary: ' || :OLD.sal);
    DBMS_OUTPUT.PUT_LINE('New salary: ' || :NEW.sal);
    DBMS_OUTPUT.PUT_LINE('Difference in salary: ' || z);
END;
/
 update test11 set sal=sal+100 where srno=1;
 
 
 create or replace trigger tr_row_6
 after delete on hr.departments
 for each row
 begin
 delete from hr.employees where department_id=:old.department_id;
 end;
 
 delete from hr.departments where department_id=50;
 
 --row level trigger application;
 
 CREATE TABLE target (empno NUMBER,ename  VARCHAR2(100),old_sal NUMBER,new_sal NUMBER,change_date  DATE, changed_by   VARCHAR2(100));

 select * from target;
 
CREATE OR REPLACE TRIGGER tr_audit
AFTER UPDATE OF sal ON test11
FOR EACH ROW
BEGIN
    INSERT INTO target (empno, ename, old_sal, new_sal, change_date, changed_by) 
                            VALUES (:OLD.srno, :OLD.sname, :OLD.sal, :NEW.sal, SYSDATE, USER);
END;
 /
 select * from test11;

 update test11 set sal=sal+100 where srno=10;
 
 select * from target; 
 
 create table test12(srno number primary key,ename varchar2(20));
 create sequence s12;
 
 create or replace trigger tr_auto_incre
 before insert on test12
 for each row
 begin
 select s12.nextval into :new.srno from dual;
 end;
 
 insert into test12(ename) values('jagtap');
 
select * from test12; 
 
 
 create table test13(srno varchar2(20) primary key,ename varchar2(20));
 create sequence s13;

 create or replace trigger tr_auto_incre_2
 before insert on test13
 for each row
 begin
 select 'ABC'||lpad(s13.nextval,10,'0') into :new.srno from dual;
 end;
 
insert into test13(ename) values('jagtap'); 
 
select * from test13; 
 
  
 select * from abee;
 
 CREATE OR REPLACE TRIGGER tr_row_8
BEFORE INSERT ON abee
FOR EACH ROW
BEGIN
 :NEW.fname := UPPER(:NEW.fname);
END;


 insert into abee(srno,fname) values(2,'Gunda');

select * from abee;


--statement level trigger
create or replace trigger tr_stmt_1
before insert or update or delete on abee
begin
if to_char(sysdate,'DY') in('SAT','SUN') then
raise_application_error(-20123,'We can not perform DML operation on saturday and sunday');
end if;
end;

insert into abee(srno,fname) values(3,'Rajesh');


--not to perform dml operation on last day of months
create or replace trigger tr_stmt_2
before insert or update or delete on abee
begin
if sysdate=last_day(sysdate) then
raise_application_error(-20123,'we can not perform the dml operation on last day of months');
end if;
end;


insert into abee(srno,fname) values(3,'Rajesh');



--
create or replace trigger tr_stmt_3
before insert or update or delete on abee
begin
if inserting then
raise_application_error(-20123,'we can not performing inserting');
elsif  updating then
raise_application_error(-20145,'we can not performing updating');
elsif deleting then
raise_application_error(-20150,'we can not performing deleting');
end if;
end;


insert into abee(srno,fname) values(3,'Rajesh');
delete from abee where srno=1;
update abee set srno=2 where srno=2;

--trigger execution order;

create or replace trigger tr_exe_order_11
after insert on abeee
for each row
begin
dbms_output.put_line('after row level');
end;

create or replace trigger tr_exe_order_22
before insert on abeee
for each row
begin
dbms_output.put_line('before row level');
end;


create or replace trigger tr_exe_order_33
after insert on abeee
begin
dbms_output.put_line('after statement level');
end;

create or replace trigger tr_exe_order_44
before insert on abeee
begin
dbms_output.put_line('before statement level');
end;

 create table abeee(srno number);
 insert into abeee values(1);
 
 --follows clause
 create or replace trigger tr_row_follows
 before insert on test3
 for each row
 begin
 select s1.nextval into :new.srno from dual;
 dbms_output.put_line('trigger 1 fired');
 end;
 
 
 select * from test3;
 alter table test3 add srno1 number;
 
 create or replace trigger tr_row_follows_2
 before insert on test3
 for each row
 follows tr_row_follows
 begin
 select reverse (to_char(:new.srno)) into :new.srno1 from dual;
 dbms_output.put_line('trigger 2 fired');
 end;
 
 insert into test3(srno) values(1234);
 
 select * from test3;
 
 --statement level trigger 
 create or replace trigger tr_11
 after delete on test10
 declare
 z number(10);
 begin
 select count(*) into z from test10;
 dbms_output.put_line(z);
 end;
 
 delete from test10 where sname='E';
 
 select * from test10;
 
 
 --row level trigger
 create or replace trigger tr_12
 after delete on test10
 for each row
 declare
 z number(10);
 begin
 select count(*) into z from test10;
 dbms_output.put_line(z);
 end;
 
  delete from test10 where sname='E';
 
 --mutating 
  create or replace trigger tr_23
 after delete on test22
 for each row
 declare
 z number(10);
 pragma autonomous_transaction;
 begin
 select count(*) into z from test22;
 commit;
 dbms_output.put_line(z);
 end;
 
  delete from test22 where SAL>=800;
  
  
  
  --error log
  
  set serveroutput on;

DECLARE
    v_errorno  NUMBER(20);
    v_errormsg VARCHAR2(2000);
BEGIN
    INSERT INTO test VALUES (1, 'a');
EXCEPTION
    WHEN OTHERS THEN
        v_errorno := SQLCODE;
        v_errormsg := SQLERRM;
        -- Call the error_log procedure with parameters
        error_log(v_errorno, v_errormsg);
END;
 
 CREATE OR REPLACE PROCEDURE error_log (
    v_errorno  NUMBER,
    v_errormsg VARCHAR2
) IS
BEGIN
    --DBMS_OUTPUT.PUT_LINE('Error ' || p_errorno || ': ' || p_errormsg);
    -- Optionally insert into a log table
   INSERT INTO target2 (e_no, e_msg,log_time)
    VALUES (v_errorno, v_errormsg,SYSTIMESTAMP);
END;
 
 select * from target2;
  create table target2(e_no number(10),e_msg varchar2(2000)); 
 alter table target2 add log_time date;
select * from  test;

select 
 
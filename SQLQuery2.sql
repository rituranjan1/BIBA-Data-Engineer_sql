create database ritu;

create table employee(
	emp__id int,
	emp_name varchar(255),
	emp_salary int,
	emp_bonus int
);

insert into employee(emp__id,emp_name,emp_salary,emp_bonus)
values('101','Raj','45000','1000');

insert into employee(emp__id,emp_name,emp_salary,emp_bonus)
values('138','Rohan','46000','500');


insert into employee(emp__id,emp_name,emp_salary,emp_bonus)
values('402','Lovely','43000','00');

insert into employee(emp__id,emp_name,emp_salary,emp_bonus)
values('400','Soham','50000','700');

insert into employee(emp__id,emp_name,emp_salary,emp_bonus)
values('301','Ritik','42580','1000');

insert into employee(emp__id,emp_name,emp_salary,emp_bonus)
values('321','Shreya','42520','100');



select * from employee;

select count (emp_salary)  emp_salary from employee;
select count (emp_salary) from employee group by emp__id;

select max(emp_salary)  from employee where emp_bonus >500 group by emp_salary;

select min(emp_salary) from employee where emp_bonus<100 group by emp_salary;

 select min(emp_salary) from employee group by emp_salary;

 select emp_name,emp_salary from employee where emp_salary in(40000,50000,55000);

 select distinct emp_name from employee;

 SELECT COUNT (emp_salary) AS COUNT_SALARIES
FROM employee
GROUP BY emp_salary HAVING emp_salary > 100; 


begin tran ;
delete from employee where emp_salary =46000;
rollback;

select * from employee;
begin tran;
save tran s1
delete from employee where emp_name='raj'and emp_bonus=1000;

save tran s2
delete from employee where emp_name='ritik';
rollback tran s2;
rollback tran s1;


begin tran
delete from employee where emp_name='ritik';
rollback
select * from employee;

DECLARE @altstartdate DATETIME;  
SET @altstartdate = CONVERT(DATETIME, 'January 10, 1900 3:00 AM', 101);  
SELECT @altstartdate - 1.5 AS 'Subtract Date';  

select emp_name,emp_salary*1000 as new_salary from employee;

SELECT 38 / 5 AS Integer, 38 % 5 AS Remainder;



      /'Unique constraints are used to avoid duplicate data in a column but accept null /'

Create table demo1(id int unique,name varchar(50),price int unique);
select * from demo1;
insert into demo1(id,name,price )
values('5','raj','100');

insert into demo1(id,name,price )
values('5','raj','100');

Create table demo4(id int, Age int check(Age between 18 and 24));

select * from demo4;
/' created new table as  employee1/'
create table employee1(
	emp__id int,
	emp_name varchar(255),
	emp_salary int,
	emp_bonus int
);
insert into employee1(emp__id,emp_name,emp_salary,emp_bonus)
values('101','arjun','45000','1000');

insert into employee1(emp__id,emp_name,emp_salary,emp_bonus)
values('138','shreya','46000','500');


insert into employee1(emp__id,emp_name,emp_salary,emp_bonus)
values('402','Lovely','4355','100');
 select * from employee;

 /'here we have apply  inner join on table employee and employee1'/

 select employee.emp__id,employee1.emp_name,employee.emp_salary 
 from employee
 inner join employee1 
 on employee.emp__id=employee1.emp__id;


 
 /'here we have apply  left  join on table employee and employee1'/

 select employee.emp__id,employee1.emp_name from employee
 left join employee1 on employee.emp__id=employee1.emp__id;

 select employee.emp_id,empolyee









































update students set id=5 where st_name='soham';

update students set st_address ='sasaram' where st_name='ritu';

delete from students where id='1';

insert into students(id,st_name,st_college,st_address)
values('6','Lovely','DAV','Telangana');

select * from students;
alter table students add st_qualification varchar(225);
update students set st_qualification ='Btech' where id=2;

update students set st_qualification='bca'where id=5;

 alter table students add country varchar(224);
  update students set country ='america' where id =4;

  select * from students where st_name like 'r%';
 
 select * from students where st_name='ritu';

 select * from students where st_qualification ='btech' and country='india';

 select * from students where country in('india','america');

 select * from students where st_name not like 'r%';

 select * from students where st_name='rehan' or country ='india';

 select * from students where id between 1 and 5;

 select * from students where id = any

(select id from students where country ='india');

select CURRENT_TIMESTAMP;
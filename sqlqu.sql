create database assesment

create table employee(name varchar(220),salary int,mobno int,address varchar(50));
drop table employee;
insert into employee(name,salary,mobno,address) values('Reshmi','40000' ,'9006484','bhopal');
insert into employee(name,salary,mobno,address) values('Beauty','36000' ,'9456484','bhopal');
insert into employee(name,salary,mobno,address) values('Devanand','50000' ,'98964','Chennai');
insert into employee(name,salary,mobno,address) values('shubham','45000' ,'90664484','Indore');
insert into employee(name,salary,mobno,address) values('Ritik','23000' ,'9506484','sasaram');

select * from employee;

--create another table name studentrec
create table employeerec(name varchar(220),salary int,mobno int,address varchar(50));
insert into employeerec(name,salary,mobno,address) values('Ajay','45600' ,'955484','chennai');
insert into employeerec(name,salary,mobno,address) values('Madhu','46000' ,'9056484','bhopal');
insert into employeerec(name,salary,mobno,address) values('Priya','65400' ,'956484','Telari');
insert into employeerec(name,salary,mobno,address) values('Mantu','49900' ,'895645','Sasaram');
insert into employeerec(name,salary,mobno,address) values('Kajal','30000' ,'9336484','Banglore');

select * from employeerec;

/*joining the table dtudent and studentrec,inner join*/

select t.name,t.salary,t2.name,t2.salary
from employee t  inner join employeerec t2
on t.address=t2.address;

/* full join*/
select t.name,t.salary,t2.name,t2.salary
from employee t  full join employeerec t2
on t.address=t2.address;

--Left  join--
select t.name,t.salary,t.mobno,t.address,t2.name,t2.salary,t2.mobno,t2.address
from employee t  cross join employeerec t2

 
 /*subquery*/
 select * from employee
 where salary > (select avg(salary) from employee);

 select salary from employee
 where address in ('bhopal','chennai');

  /* it will show the salary from table employeerec whose salary is greater than oe equal to 1000000*/

 select * from employeerec
 where salary<=1000000;

 /* Group by, Having*/

 
 SELECT COUNT (salary) AS COUNT_SALARIES
FROM employeerec
GROUP BY salary HAVING salary > 10000; 


 /* Group by*/
select min(salary) from employeerec group by salary;

select  name,max(salary)  from employeerec where salary >500 group by name;

select * from employeerec

 /* it will gave the salary + 1000 as a new salary of employee*/
select name,salary+1000 as new_salary from employeerec;

/* insert */
insert into employeerec(name,salary,mobno,address)
values('AJIT','49000','856248','Telangana');


/* update the name of employee whose salary is 65400*/
update employeerec set name= 'kartik' where address=65400;

update employeerec set address ='kolkata' where name='priya';
select* from employeerec;

delete from employeerec where salary=30000;
select* from employeerec;

 select * from employeerec where name like 'p%' and salary >=50000;

 

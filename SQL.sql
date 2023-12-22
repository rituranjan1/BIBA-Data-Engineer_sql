create table sstudent(
s_name varchar(220),s_rollno int,s_mobno int,s_address varchar(220));

insert into sstudent(s_name,s_rollno,s_mobno,s_address) values('ritu','0177' ,'87095111','sasaram');
insert into sstudent(s_name,s_rollno,s_mobno,s_address) values('Ritik','0176' ,'825225','kolkata');
insert into sstudent(s_name,s_rollno,s_mobno,s_address) values('lovely','0173' ,'552586','vanarasi');
insert into sstudent(s_name,s_rollno,s_mobno,s_address) values('priya','01732' ,'87095631','bhopal');

create table sstudent1(s_rollno varchar(220),s_marks int,s_address varchar(220),s_grade varchar);
select * from sstudent1;
select * from sstudent;

insert into sstudent1(s_rollno,s_marks,s_address,s_grade) values('536','200','kolkata' ,'A');
insert into sstudent1(s_rollno,s_marks,s_address,s_grade) values('5323','250','BANGLORE' ,'A');
insert into sstudent1(s_rollno,s_marks,s_address,s_grade) values('456','200','delhi' ,'C');
insert into sstudent1(s_rollno,s_marks,s_address,s_grade) values('565','200','chennai' ,'B');

select t.s_name,t2.s_address,t2.s_grade
from sstudent t inner join sstudent1 t2
on t.s_address=t2.s_address;


select t.s_name,t2.s_address,t2.s_grade
from sstudent  t left join sstudent1 t2
on t.s_address=t2.s_address;

select t.s_name,t2.s_address,t2.s_grade        ----,RIGHT JOIN
from sstudent  t right join sstudent1 t2
on t.s_address=t2.s_address;

select t.s_name,t2.s_address,t2.s_grade        ----FULL JOIN
from sstudent  t full join sstudent1 t2
on t.s_address=t2.s_address;

select t.s_name,t.s_address,t.s_mobno,t.s_rollno   --- CROSS JOIN
from sstudent  t cross join sstudent1;



select ascii('Z');  --- IT SHOW THE ASCII VA;UE OF Z

SELECT CHAR (66);

SELECT LEN('WIDESKILL');  --- it return the length
  

SELECT REPLACE('COUNTRY','Y','IES');--- it will replace the y from the country and add ies at the place of y

SELECT REVERSE ('RITU');  -- reverse the value

SELECT STR (134.56,6,2); ---(number,length,decimal)--

SELECT UPPER('uhdugfu'); -- it reaturns the value in uppercse

select getdate();    -- Get current date and time

select dateadd(mm,2,'2013-02-03');

select datediff(year,convert(datetime,'2006-05-06'),convert(datetime,'2010-01-01'));-- it show the diffrence between the year---
select datediff(month,convert(datetime,'2006-05-06'),convert(datetime,'2010-01-01')); -- it will gave 44 diffrence of month--

SELECT datepart (dd, '2008-09-01');  -- -- it will show the date

SELECT day ( '2010-03-21'); ---- it will show the day


SELECT month ('2007-04-03'); --- show the month

SELECT year ( '2011-04-17'); ---- it will show the year

--MATHEMATICAL FUNCTION
SELECT ABS(-202);         --Returns 77, an absolute valuE

SELECT SIN(1.5);            --It shows the angle in radian
SELECT CEILING(20.08);   --Returns 21, the smallest or greater than or equal to the specified value.



SELECT EXP(4.5);   --Returns 90.017, the exponential value of the specified parameter.


SELECT FLOOR(59.32);    -- Returns 59, the largest or less than or equal to the specified value.
SELECT LOG(9.1); -- Returns 2.2082744135228  , the logarithm of the paramete

-- ROW NUMBER  displays the sequential number on a column by using the --
 select s_marks,s_address,row_number() over (order by s_rollno desc) as rank from sstudent1;

 --RANK()-- function is used to return the rank of each row in a result set based on the specified condition--
 SELECT s_marks,s_address,rank() over( order by s_address desc)as rank  from sstudent1;

 --DENSE_RANK()--It performs similar to the rank function but provides consecutive ranking values as output-- it willnot   skipp 

select s_address,s_marks,dense_RANK() over( order by s_marks asc) as rank from sstudent1;

--ntile() divide the result set into number of groups--

select s_address,s_marks, s_grade, ntile(2) over (order by s_rollno) as rank from sstudent1 where s_marks >=30;



--count It returns the number of values in an expression---
select  s_address =count(distinct 's_salary') from sstudent1;
select * from sstudent1;

select * from sstudent;

-- System function---
select host_id();
select HOST_NAME();
SELECT USER_ID();
SELECT DB_NAME();

   --union -- Duplicate rows will be eliminated --
select s_address from sstudent union select s_address from sstudent1;

 --UNION ALL :-Duplicate rows will be not be eliminated from the results--

select s_address from sstudent union ALL select s_address from sstudent1;

---INTERSECT :-used to combine two SELECT statements, but it only returns the records which are common from both SELECT statements.--
select s_address from sstudent INTERSECT select s_address from sstudent1;

-- select * from tablename1  union  select * from tablename2---

     select * from sstudent minus select * from sstudent1;--//////////////////////////////////////////////////////////////////////////////////

select s_address, s_rollno from sstudent  union select s_address ,s_marks from sstudent1;

select s_rollno, s_marks,s_address,s_grade from sstudent1 where s_address IN ('delhi','chennai');


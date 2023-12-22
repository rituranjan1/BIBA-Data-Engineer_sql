create table sstudent(
s_name varchar(220),s_rollno int,s_mobno int,s_address varchar(220));

drop table sstudent;
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

SELECT STR (134.56,6,2);

SELECT UPPER('uhdugfu'); -- it reaturns the value in uppercse

select getdate();    -- Get current date and time

select dateadd(mm,2,'2013-02-03');

select datediff(year,convert(datetime,'2006-05-06'),convert(datetime,'2010-01-01'));  -- it show the diffrence between the year

SELECT datepart (dd, '2008-09-01');  -- -- it will show the date

SELECT day ( '2010-03-21'); ---- it will show the day


SELECT month ('2007-04-03'); --- show the month

SELECT year ( '2011-04-17'); ---- it will show the year
 



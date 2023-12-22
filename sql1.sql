create table student1(
id int,name varchar(45),class int,city varchar(20));

insert into student1(id,name,class ,city) values('01','kajal' ,'8','Kolkata');
insert into student1(id,name,class ,city) values('02','riya' ,'9','bhopal');
insert into student1(id,name,class ,city) values('03','nita' ,'6','indore');
insert into student1(id,name,class ,city) values('04','shubham' ,'8','sasaram');

drop table student1;

create table record(id int, class varchar(25),city varchar(25));
insert into record(id,class ,city) values('9', '8','banglore');
insert into record(id,class ,city) values('9','10','karnataka');
insert into record(id,class ,city) values('9', '12','bhopal');
insert into record(id,class ,city) values('9', '8','Kolkata');
select * from record;
select * from student1;
        
SELECT student1.name, student1.id, record.class, record.city   ----join 
FROM student1, record
WHERE student1.city = record.city;



select t.name,t.id,t2.class ,t2.city   ----------join
from student1 t join record t2 on t.city=t2.city;


select class from record  where exists  (select class from student1 where student1.class=record.class);



select * from record;
select * from student1;


---- ANY operator ----
select id from record
where id = any
(select id from student1 where id =1;

select id from student1);


-- all operator---
select all id from record where class =8;

select class from   record  where class  any (
select  name from student1 where city=kolkata);

--- created another table
CREATE TABLE TableB
(
ID INT,
Name VARCHAR(50),
Gender VARCHAR(10),
Department VARCHAR(50)
)

INSERT INTO TableB VALUES(2, 'Priyanka', 'Female','IT')
INSERT INTO TableB VALUES(3, 'Preety', 'Female','HR')
INSERT INTO TableB VALUES(4, 'Anurag', 'Male','IT')


CREATE TABLE TableA
(
ID INT,
Name VARCHAR(50),
Gender VARCHAR(10),
Department VARCHAR(50)
);

INSERT INTO TableA VALUES(1, 'Pranaya', 'Male','IT');
INSERT INTO TableA VALUES(2, 'Priyanka', 'Female','IT');
INSERT INTO TableA VALUES(3, 'Preety', 'Female','HR');
INSERT INTO TableA VALUES(3, 'Preety', 'Female','HR');

 select * from tableB;





SELECT * FROM TableB;
 ---UNION OPERATOR-----The Union operator will return all the unique rows from both queries 

SELECT ID, Name, Gender, Department FROM TableA
UNION
SELECT ID, Name, Gender, Department FROM TableB;

 ----UNION ALL:-The UNION ALL operator returns all the rows from both queries, including the duplicates. 
SELECT ID, Name, Gender, Department FROM TableA
UNION ALL
SELECT ID, Name, Gender, Department FROM TableB;

---INTERSECT OPERATOR--retrieves the common unique rows from the left and right queries,duplicates are removed.
SELECT ID, Name, Gender, Department FROM TableA
INTERSECT
SELECT ID, Name, Gender, Department FROM TableB;

--EXCEPT OPERATOR:-returns all rows common to both SELECT statements.

SELECT ID, Name, Gender, Department FROM TableA
EXCEPT
SELECT ID, Name, Gender, Department FROM TableB; 

-----Correlated Subqueries----

SELECT a.id,a.name,a.gender,a.department
from tableb a
where a.Name=(select b.name from tablea b where b.name='priyanka');


---EXISTS--
SELECT a.id,a.name,a.gender,a.department
from tableb a
where exists (select b.name from tablea b where b.name='priyanka');

--- NOT EXISTS---
SELECT a.id,a.name,a.gender,a.department
from tableb a
where NOT EXISTS (select b.name from tablea b where b.name='priyanka');


select*from tablea;
select*from tableb;


select * from record;

---- data cleaning---
---get duplicate data----- from table--

select class,count(class) as count
from record
group by class
having count(class)>1;



----add a row number for each row based on the name column:---

sELECT city,
     ROW_NUMBER() OVER( partition by city order BY city) AS rn
FROM record;
--- DELET THE DUPLICATE VALUE
with cte as (select class,ROW_NUMBER() OVER(PARTITION BY CLASS ORDER BY CLASS) AS RN 
FROM RECORD)
DELETE FROM CTE
WHERE RN >1;

---Removing null value----
SELECT*FROM RECORD 
WHERE class is null;

---DELETING NULL VALUE---
DELETE FROM RECORD 
WHERE Class is null;

select * from record;
   ---to ensure that all city values uppercase,----
update record   set city  =upper(city);

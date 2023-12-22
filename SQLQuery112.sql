create database ritu;

create table students(
	id int,
	st_name varchar(255),
	st_college varchar(255),
	st_address varchar(255)
);

insert into students(id,st_name,st_college,st_address)
values('1','Ritu','IES','sasaram');

insert into students(id,st_name,st_college,st_address)
values('2','Rohan','Sagar','varansi');


insert into students(id,st_name,st_college,st_address)
values('3','Rehan','LNCT','Kudra');

insert into students(id,st_name,st_college,st_address)
values('4','Soham','gnct','Bhopal');

insert into students(id,st_name,st_college,st_address)
values('5','Ritik','ORIENTAL','Bhu');


select * from students;

update students set id=5 where st_name='soham';

update students set st_address ='sasaram' where st_name='ritu';

delete from students where id='1';

insert into students(id,st_name,st_college,st_address)
values('6','Lovely','DAV','Telangana');

select * from students;
alter table students add st_qualification varchar(225);
update students set st_qualification='Btech' where id=2;

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
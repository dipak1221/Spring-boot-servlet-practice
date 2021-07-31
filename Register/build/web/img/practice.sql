select database();
use practice;
create table hello(id int,name varchar(20));
show tables;
show databases;
drop table hello;

insert into hello(id,name) values(4,"dipak4"),(5,"dipak5");
select * from hello;
select database();
create table student(id int ,name varchar(20) not null,registration_no int unique,
city varchar(20) default("Delhi"),age int check(age >18));
select * from student;
insert into student(id,name,registration_no,age,city) 
values(1,"Dipak",254,41,"mumbai");
desc student;
show index from student;
alter table student add unique( registration_no);
create table demo(id int not null unique ,name varchar(20) not null unique,
age int not null unique,hello int primary key );
desc demo;
drop table demo;
show index from demo;
alter table demo add primary key(hello);

drop table Fd_master;
show index from Fd_master;
select * from Fd_master;
Create table Fd_master(Sr_no varchar(10), 
Branch_no varchar(10), account_no varchar(20),
company_type varchar(20), constraint pk1 primary key(Sr_no),  
constraint fk foreign key (Branch_no) references demo(name),
constraint chk check(company_type in ("1C", "2C", "3C")));
alter table Fd_master drop foreign key fk ;
show create table Fd_master;

show create table student;
create table table1(id int,name varchar(20));
alter table table1 add primary key(id);
alter table table1 add constraint ff foreign key(name) references demo(name);
-- constraint pp primary key(id),
-- constraint fk1 foreign key (name) references demo(name));
desc demo;
alter table table1 modify id int default(23);
show create table table1;
drop table table1;

use practice;
select * from student;
select * from hello;
insert into hello(id,name) values(12,"dz");
select * from hello where name between "dapak4" and "dzpak5";
alter table hello modify id int not null unique;
delete from hello where id=4; 
show tables;

select * from hello where name regexp "^ram|kh$|m$";
select * from hello;
show create table hello;
alter table hello drop primary key;
alter table hello add primary key(id,name);
select avg(id),name from hello;


select count(*) from hello;


use practice;
show tables;
desc student;
alter table student modify city int;
select * from student;
show create table student;
alter table student add primary key(id);
truncate table student;
alter table student modify id int auto_increment;
alter table student add constraint fk foreign key(city) references cities(city);
create table cities(city int ,name varchar(20), primary key(city));
select * from cities;
show create table cities;
select s.id,s.name,c.name,s.age from student as s inner join cities as c 
on s.city=c.city
union all 
select s.id,s.name,c.name,s.age from student as s inner join cities as c 
on s.city=c.city group by s.age ;

select h.hacker_id,h.name,count(c.hacker_id) from Hackers as h 
inner join Challenges as c
on h.hacker_id=c.hacker_id
group by c.hacker_id
order by count(c.hacker_id) desc, hacker_id asc;


use springdb;
select * from images;
create database school;
create database ridi;

use school;

create table student (
id int primary key,
name varchar(50),
age int not null
);

insert into student(id,name,age) values(1,"ridita",25);
insert into student(id,name,age) values(2,"neha",35);
insert into student(id,name,age) values(3,"fatiha",25);
insert into student(id,name,age) values(4,"ashima",35);
insert into student(id,name,age) values(5,"rima",25);
insert into student(id,name,age) values(6,"sadman",35);
insert into student(id,name,age) values(7,"saad",15),(8,"jadu",56),(9,"Kalini",10);

select* from student;

create database if not exists school;

drop database if exists ridi;

show databases;

show tables;

create database XYZ;
use XYZ;

create table Employee
(
id int primary key,
name varchar(50),
salary int not null
);

insert into Employee(id,name,salary) values (1,"adam",25000),(2,"bob",30000),(3,"casey",40000);

create table temp1
(
id int unique
);

insert into temp1(id) values (1),(1),(2);

create table temp3
(id int,
name varchar(50),
city varchar(50),
primary key (id,name)
);

insert into temp3(id,name,city) values(1,"ridika","Dhaka"),(1,"Simi","Pabna");

select* from temp3;

create table salary(
id int unique,
salary int default 25000 
);

insert into salary(id) values (1),(2);
select* from salary;

create table voter(
id int primary key,
name varchar(50),
age int check(age>=18 and age<=100)
);

insert into voter (id,name,age) values(1,"ridita",25),(2,"Shruti",19),(3,"Koiri",99),(4,"Neha",45);

use school;

create database grad_school;
use grad_school;

create table if not exists student(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);

insert into student(rollno,name,marks,grade,city) values(101,"anil",78,"C","Pune"),(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),(104,"Druv",96,"A","Delhi"),(105,"Emanuel",12,"F","Delhi"),(106,"Farah",82,"B","Delhi");

select rollno,name from student;

select distinct city from student;

select* from student where marks>50;

select* from student where marks>90 and city="Mumbai";

 select* from student where marks+10>90;
 
  select* from student where marks=90;
  
  select* from student where marks between 80 and 90;
  
  select* from student where city in ("Delhi","Mumbai");
  
  select* from student where city not in("Delhi","Mumbai","Pune","Gauhati");
  
 select* from student where city not in("Rajshahi","Gauhati");
 
 select* from student where city = "Delhi" limit 2;
 
 select* from student where marks>70 limit 3;
 
 select* from student order by marks desc;
 
 select* from student order by city asc ;
 
 select max(marks) from student;
 
 select* from student where marks = (select max(marks) from student);
 
 select* from student where marks=(select max(marks) from student where marks<(select max(marks) from student)) ;
 
 select min(marks) from student;
 
 select* from student where marks = (select min(marks) from student where marks>(select min(marks) from student));
 
 select avg(marks) from student;
 
 select* from student where marks > (select avg(marks) from student);
 
 select* from student where city in (select distinct city from student);
 
 select count(rollno) from student where marks>80;
 
 select* from student where marks in (select max(marks) from student group by(city));
 
 select count(rollno),avg(marks) from student group by(city) order by avg(marks) asc;
 
 select grade,count(rollno) from student group by(grade);
 
 select city,count(rollno) from student group by(city) having max(marks)>95;
 
 select* from student;
 
 select city from student group by(city);
 use grad_school;
 select city,count(rollno) from student where marks>20 group by(city) having max(marks)>70;
 
 set sql_safe_updates=0;
 
 update student
 set grade="O"
 where grade="A";

select* from student;
 
 update student
 set marks=90
 where name="Emanuel";
 
 update student 
 set grade="A"
 where marks>=90;
 
 update student
 set grade="B"
 where marks between 80 and 89;
 
 update student 
 set grade="C"
 where marks between 70 and 79;
 
 insert into student(rollno,name,marks,grade,city) values(108,"Fania",80,"D","Dhaka");
 
 select* from student;
 
 update student
 set marks=marks+1;
 
 delete from student where name="Fania";
 
 create table dept(
 id int primary key,
 name varchar(50)
 
 );
 
 insert into dept(id,name) values (101,"English"), (102,"CSE"),(103,"EEE"),(104,"ME"),(105,"Civil");
 
 drop table teacher;
 
 create table teacher(
 id int primary key,
 name varchar(50),
 dept_id int ,
 foreign key(dept_id) references dept(id)
 on delete cascade
 on update cascade
 );
 
 insert into teacher(id,name,dept_id) values(1,"Adam",101),(2,"Bob",102),(3,"Catline",103),(4,"Donald",104),(5,"Emma",105),(6,"Farah",101),
 (7,"George",102),(8,"Hania",105);
 
 select* from dept;
 
 select* from teacher;
 
 update dept
 set name="BME"
 where name="English";
 
 alter table teacher
 add column dep varchar(50) ;
 
 alter table teacher
 drop column dep;
 
 use grad_school;
 
 alter table student
 add column age int not null default 19;
 
 alter table student
 modify column age varchar(2);
 
 alter table student
 change column age stu_age int;
 
 alter table student
 drop column stu_age;
 
 alter table stu
 rename to student;
 
 select* from student;
 
 alter table student
 change column name full_name varchar(10);
 
 delete from student
 where marks<80;
 
 insert into student(rollno,full_name,marks,grade,city) values (110,"Orpa",45,"F","Khulna");
 
 alter table student
 drop column grade;
 
 use grad_school;
 create table course
 (
 cou_id int primary key,
 name varchar(40)
 );
 
 select* from course;
 
 insert into course(cou_id,name) values(101,"A"),(102,"B"),(103,"C"),(104,"D"),(105,"E");
 
 create table stud
 (
 id int primary key,
 stud_name varchar(20),
 course_id int,
 foreign key(course_id) references course(cou_id)
 );
 
 insert into stud(id,stud_name,course_id) values (1,"Adam",101),(2,"Bobi",102),(3,"Catherine",103),(4,"Dobby",104),(5,"Emma",105),(6,"Fabiola",101),(7,"Gargi",102),(8,"Habia",105);
 
 select* from stud;
 
select* 
from stud
inner join course
where stud.course_id = course.cou_id;

select*
from stud
left join course
on stud.course_id = course.cou_id;
 
insert into stud(id,stud_name) values (11,"Madam"),(12,"Babi"),(101,"Cathe");
insert into course values (109,"CSE"),(110,"EEE"),(111,"ME");

select*
from stud
left join course
on stud.course_id = course.cou_id
union
select*
from stud
right join course
on stud.course_id = course.cou_id;

select* 
from stud
left join course
on stud.course_id = course.cou_id
where course.cou_id is null;

select* from course;

select* 
from stud
right join course
on  course.cou_id=stud.course_id
where stud.course_id is null;

select*
from stud
left join course
on stud.course_id = course.cou_id
where course.cou_id is null
union
select*
from stud
right join course
on stud.course_id = course.cou_id
where  stud.course_id is null;

create table employee(
id int primary key,
name varchar(50),
manager_id int
);

insert into employee(id,name,manager_id) values (101,"adam",104),(102,"Bob",104),(103,"Donald",103),(104,"Pritha",103),(105,"Katina",101);

select* from employee;

select a.name as underdoer,b.name as manager
from employee as a 
join employee as b
on a.manager_id = b.id;

select * from employee
union
select * from employee;

select* from employee
union all
select* from employee;


select* from student;

select avg(marks) from student;
select* from student where marks > (select avg(marks) from student);

select* from student where rollno%2=0;

select max(marks) from student where city="Delhi";

select* from student where marks=(select max(marks) from student where city="Delhi") and city="Delhi";

select max(marks) from (select* from student where city="Delhi") as temp;

create view view1 as
select rollno,full_name,marks from student;

select* from view1
where marks>90;

drop view view1;

create view view2 as
select name,dept_id from teacher;






 
 
 
 
 
 
 
  
  
 





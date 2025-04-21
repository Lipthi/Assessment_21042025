-- Q1
create table students(
id serial primary key,
name varchar(30) not null,
email varchar(20) unique,
age int,
marks decimal(5,2)
)

insert into students(name,email,age,marks) values('Ajay','ajay@yahoo.com',20,88.9);
insert into students(name,email,age,marks) values('Chaitra','chaitra@gmail.com',21,91.62);
insert into students(name,email,age,marks) values('Siddharth','Siddharth@yahoo.com',19,95);
insert into students(name,email,age,marks) values('Rajesh','Rajesh@yahoo.com',22,95);
insert into students(name,email,age,marks) values('rahul','r@gmail.com',17,95);

select * from students;

-- Q2
select * from students where age>21;
-- Q3
update students set email='rahul@gmail.com' 
where id = '5';
-- Q4
delete from students where age<18;
-- Q5
select * from students
order by marks desc
limit 1 offset 1;
-- limit 2 offset 2 since two values have same highest marks

-- Q6
create table student(
id int primary key,
name varchar(20),
age int
)

insert into student(id,name,age) values(1,'rahul',22);
insert into student(id,name,age) values(2,'priya',21);
insert into student(id,name,age) values(3,'akash',23);

select * from student;

create table courses(
course_id int,
student_id int,
course_name varchar(30),
foreign key(student_id) references student(id)
)
insert into courses(course_id,student_id,course_name) values(101,1,'java');
insert into courses(course_id,student_id,course_name) values(102,2,'python');
insert into courses(course_id,student_id,course_name) values(103,1,'sql');
select * from courses;

select s.name,c.course_name from student s left join courses c
on s.id=c.student_id;







create database IF NOT EXISTS student_management;
use student_management;
SHOW databases;
CREATE TABLE student(
student_id int primary key,
name varchar(50),
age int,
gender varchar(10),
city varchar(50));

CREATE TABLE course (
course_id int primary key,
course_name varchar(50),
fees int
);

CREATE TABLE enrollments(
enrollment_id int primary key,
student_id int,
course_id int,
marks int
);



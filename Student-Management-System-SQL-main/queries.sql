use student_management;
-- =====================================
-- BEGINNER QUERIES
-- =====================================

-- Display all students.  
SELECT*from student
-- Display all courses.  
SELECT*from course
LIMIT 10;
-- Display all enrollments.
SELECT*from enrollments
LIMIT 10;
-- Find students from Kolkata.  
SELECT * FROM student
where city="Kolkata";
-- Find students older than 20.  
SELECT * FROM student
WHERE age>20;
-- Sort students by age.  
SELECT * FROM student
ORDER BY age;
-- Find students whose names start with "A".  
SELECT * FROM student
WHERE name like 'A%';
-- Display courses with fees greater than 7000. 
SELECT * FROM course
WHERE fees>7000;
-- Count the total number of students. 
SELECT count(*) as totalnumberofstudent FROM student;
--  Find the highest marks.  
SELECT max(marks) as highestmarks FROM enrollments;
-- Find the average marks.  
SELECT AVG(marks) as Averagemarks FROM enrollments;
-- =====================================
-- INTERMEDIATE QUERIES
-- =====================================

-- Show each student's course name.
SELECT  student.name as student_name,course.course_name
FROM enrollments
INNER JOIN student
ON enrollments.student_id=student.student_id
inner join course
on enrollments.course_id=course.course_id;
-- Show student names with their marks.
SELECT enrollments.marks as student_Marks,student.name as student_name 
FROM enrollments
INNER JOIN student
on enrollments.student_id=student.student_id;
-- Find students enrolled in SQL.
SELECT student.name as student_name
FROM enrollments
INNER JOIN student 
on enrollments.enrollment_id=student.student_id
INNER JOIN course
on enrollments.course_id=course.course_id
WHERE course.course_name="SQL";

SELECT * FROM course
where course_name="SQL";
-- Count students in each course.
SELECT count(enrollments.student_id)as total_student,
course.course_name
from enrollments
INNER JOIN course
on enrollments.course_id=course.course_id
GROUP BY course_name;
-- Find the average marks for each course.
SELECT course.course_name,
avg(enrollments.marks)as Avg_marks
FROM enrollments
INNER JOIN course
on enrollments.course_id=course.course_id
GROUP BY course_name;
-- Find the highest marks in each course.
SELECT course.course_name,
max(enrollments.marks)as Highest_marks
FROM enrollments
INNER JOIN course
on enrollments.course_id=course.course_id
GROUP BY course_name;
-- Find the lowest marks in each course
SELECT course.course_name,
min(enrollments.marks)as Lowest_marks
FROM enrollments
INNER JOIN course
on enrollments.course_id=course.course_id
GROUP BY course_name;
-- List students who scored more than 80.
select student.name as Student_name,enrollments.marks as Student_marks
from student
INNER JOIN enrollments
on enrollments.student_id=student.student_id
where marks>80;
-- Find courses with more than 5 enrollments.
SELECT course.course_name,count(enrollments.student_id)as Total_Enrollment
FROM course
INNER JOIN enrollments
on course.course_id=enrollments.course_id
GROUP BY course.course_name
HAVING count(enrollments.student_id)>5;
-- Display students and courses in alphabetical order.
SELECT student.name,course.course_name
FROM student
INNER JOIN enrollments
on student.student_id=enrollments.student_id
INNER JOIN course
on course.course_id=enrollments.course_id
ORDER BY student.name ASC,course.course_name DESC;
-- =====================================
-- ADVANCED QUERIES
-- =====================================

-- Update a student's city.
UPDATE student
SET city = 'Kolkata'
WHERE student_id = 102;
-- Increase all marks by 5.
UPDATE enrollments
set marks=marks+5
where marks<70;
select* from enrollments;
-- Delete a student record.
Delete from enrollments 
where marks < 70;
SELECT * FROM enrollments;
-- Find students who scored between 70 and 90.
SELECT student_id,marks FROM enrollments
where marks between 70 and 90;
-- Find the total fees of all courses.
SELECT sum(fees)as Total_fees FROM course ;
-- Count male and female students.
SELECT gender,count(gender)as total_student
FROM student
GROUP BY gender;
SELECT*from student;
-- Display students from Kolkata or Howrah.
SELECT * FROM student
WHERE city in ('Kolkata','Howrah');
-- Find students not from Kolkata.
SELECT * FROM student
WHERE city NOT in ('Kolkata');
-- Display the top 5 highest marks.
SELECT student_id,marks FROM enrollments 
ORDER BY marks DESC
LIMIT 5; 
-- Show students who enrolled in more than one course.
SELECT student.name,count(enrollments.course_id)as total_course
FROM enrollments
INNER JOIN student
on enrollments.student_id=student.student_id
GROUP BY student.name
HAVING count(enrollments.course_id)>1;



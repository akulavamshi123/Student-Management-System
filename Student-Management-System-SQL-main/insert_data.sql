INSERT INTO student(student_id,name,age,gender,city)
values
(101, 'Rahul Sharma', 20, 'Male', 'Kolkata'),
(102, 'Priya Das', 19, 'Female', 'Durgapur'),
(103, 'Amit Roy', 21, 'Male', 'Siliguri'),
(104, 'Sneha Paul', 20, 'Female', 'Kolkata'),
(105, 'Arjun Singh', 22, 'Male', 'Asansol'),
(106, 'Riya Ghosh', 19, 'Female', 'Howrah'),
(107, 'Karan Verma', 21, 'Male', 'Kolkata'),
(108, 'Pooja Sen', 20, 'Female', 'Malda'),
(109, 'Vikram Das', 22, 'Male', 'Kharagpur'),
(110, 'Neha Roy', 20, 'Female', 'Siliguri'),
(111, 'Suman Dey', 21, 'Male', 'Bardhaman'),
(112, 'Ananya Paul', 19, 'Female', 'Kolkata'),
(113, 'Rohit Gupta', 22, 'Male', 'Durgapur'),
(114, 'Nisha Mondal', 20, 'Female', 'Howrah'),
(115, 'Aditya Bose', 21, 'Male', 'Kolkata'),
(116, 'Tanya Saha', 19, 'Female', 'Asansol'),
(117, 'Deep Roy', 22, 'Male', 'Malda'),
(118, 'Mitali Das', 20, 'Female', 'Bardhaman'),
(119, 'Sourav Ghosh', 21, 'Male', 'Kolkata'),
(120, 'Isha Sen', 19, 'Female', 'Siliguri');

INSERT INTO course(course_id,course_name,fees )
values
(201, 'Python',  6000),
(202, 'SQL', 5000),
(203, 'Java',  8000),
(204, 'Web Development',  10000),
(205, 'Data Analytics',  12000);

INSERT INTO enrollments(enrollment_id,student_id ,course_id ,marks)
values
(1,101,201,85),
(2,102,202,91),
(3,103,203,76),
(4,104,201,88),
(5,105,204,72),
(6,106,202,95),
(7,107,205,81),
(8,108,201,67),
(9,109,203,79),
(10,110,204,84),
(11,111,202,69),
(12,112,205,93),
(13,113,201,75),
(14,114,202,89),
(15,115,203,90),
(16,116,204,64),
(17,117,205,87),
(18,118,201,82),
(19,119,202,94),
(20,120,203,71),
(21,101,205,92),
(22,102,201,80),
(23,103,202,77),
(24,104,204,85),
(25,105,205,78),
(26,106,201,96),
(27,107,202,73),
(28,108,203,86),
(29,109,204,70),
(30,110,205,91);

SHOW tables;
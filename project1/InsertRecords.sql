SET GLOBAL local_infile=1;

use project1;

/*
====== LOAD STUDENTS ======
*/
LOAD DATA LOCAL INFILE 'C:\\Users\\DEADL\\Documents\\coms363\\project1\\project1_data\\students.csv'
INTO TABLE students
FIELDS TERMINATED BY ','
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(sid, ssn, name, gender, dob, c_addr, c_phone, p_addr, p_phone);

/*
====== LOAD DEPARTMENTS ======
*/
LOAD DATA LOCAL INFILE 'C:\\Users\\DEADL\\Documents\\coms363\\project1\\project1_data\\departments.csv'
INTO TABLE departments
FIELDS TERMINATED BY ','
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(dcode, dname, phone, college);

/*
====== LOAD DEGREES ======
*/
LOAD DATA LOCAL INFILE 'C:\\Users\\DEADL\\Documents\\coms363\\project1\\project1_data\\degrees.csv'
INTO TABLE degrees
FIELDS TERMINATED BY ','
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(dgname, level, department_code);

/*
====== LOAD COURSES ======
*/
LOAD DATA LOCAL INFILE 'C:\\Users\\DEADL\\Documents\\coms363\\project1\\project1_data\\courses.csv'
INTO TABLE courses
FIELDS TERMINATED BY ','
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(cnumber, cname, description, credithours, level, department_code);

/*
====== LOAD REGISTER ======
*/
LOAD DATA LOCAL INFILE 'C:\\Users\\DEADL\\Documents\\coms363\\project1\\project1_data\\register.csv'
INTO TABLE register
FIELDS TERMINATED BY ','
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(sid, course_number, regtime, grade);

/*
====== LOAD MAJOR ======
*/
LOAD DATA LOCAL INFILE 'C:\\Users\\DEADL\\Documents\\coms363\\project1\\project1_data\\major.csv'
INTO TABLE major
FIELDS TERMINATED BY ','
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(sid, name, level);

/*
====== LOAD MAJOR ======
*/
LOAD DATA LOCAL INFILE 'C:\\Users\\DEADL\\Documents\\coms363\\project1\\project1_data\\minor.csv'
INTO TABLE minor
FIELDS TERMINATED BY ','
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(sid, name, level);

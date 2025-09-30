use project1;

/*
Author: Eduardo Barboza-Campos
Course: COMS 3630
*/

-- ===SETTING UP ENTITY TABLES===
/*
STUDENTS ENTITY
KEY(s): sid, ssn
*/
CREATE TABLE students
(
	sid int NOT NULL,
	ssn int NOT NULL,
    name varchar(20),
    gender varchar(1),
    dob varchar(10),
    c_addr varchar(20),
    c_phone varchar(20),
    p_addr varchar(20),
    p_phone varchar(20),
    
    PRIMARY KEY (ssn),
    
    -- candidate key
    UNIQUE (sid)
    
	-- no foreign key
);

/*
DEPARTMENTS ENTITY
KEY(s): name, code
*/
CREATE TABLE departments
(
	dcode int NOT NULL,
    dname varchar(50) NOT NULL,
    phone varchar(10),
    college varchar(20),
    
    PRIMARY KEY (dcode),
    
    -- candidate key
    UNIQUE (dname)
);

/*
DEGREES ENTITY
KEY(s): name, level
*/
CREATE TABLE degrees
(
	dgname varchar(50) NOT NULL,
    level varchar(5) NOT NULL,
    department_code int NOT NULL,
    
    PRIMARY KEY (dgname, level),
    
    -- no candidate key
    
    FOREIGN KEY (department_code) REFERENCES departments (dcode)
);

/*
COURSES ENTITY
KEY: number
*/
CREATE TABLE courses
(
    cnumber int NOT NULL,
    cname varchar(50),
    description varchar(50),
    credithours int,
    level varchar(20),
    department_code int NOT NULL,
    
    PRIMARY KEY (cnumber),
    
    FOREIGN KEY(department_code) REFERENCES departments (dcode)
);

-- =====CREATING RELATIONSHIP TABLES=====

/*
REGISTER RELATIONSHIP
- between Students and Courses
- additional attributes: regtime, grade
*/
CREATE TABLE register
(
	sid int NOT NULL,
    course_number int NOT NULL,
    regtime varchar(20),
    grade int,
    
    PRIMARY KEY (sid, course_number),
    
    -- no candidate key
    
    FOREIGN KEY (sid) REFERENCES students (sid),
    FOREIGN KEY (course_number) REFERENCES courses (cnumber)
);

/*
MAJOR RELATIONSHIP
- between Students and Degrees
*/
CREATE TABLE major
(
	sid int NOT NULL,
    name varchar(50) NOT NULL,
    level varchar(5) NOT NULL,
    
    PRIMARY KEY(sid, name, level),
    
    -- no candidate key
    
    FOREIGN KEY (sid) REFERENCES students (sid),
    FOREIGN KEY (name, level) REFERENCES degrees (dgname, level)
);

/*
MINOR RELATIONSHIP
- between Students and Degrees
*/
CREATE TABLE minor
(
	sid int NOT NULL,
    name varchar(50) NOT NULL,
    level varchar(5) NOT NULL,
    
    PRIMARY KEY(sid, name, level),
    
    -- no candidate key
    
    FOREIGN KEY (sid) REFERENCES students (sid),
    FOREIGN KEY (name, level) REFERENCES degrees (dgname, level)
);

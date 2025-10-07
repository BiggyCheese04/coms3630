-- drop all tables; results in empty database
-- use project1;

-- destroy our relationships first so we get rid of foreign key constraints!
DROP TABLE IF EXISTS register;
DROP TABLE IF EXISTS major;
DROP TABLE IF EXISTS minor;

-- destroy the entities!
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS degrees;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS students;

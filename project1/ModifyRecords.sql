-- change name of student with 
-- ssn = 144673371 to 'Frank'
UPDATE students
SET name = 'Frank'
WHERE ssn = 144673371;

-- change the major of the student 
-- with ssn = 144673371 to 
-- Computer Science, Master. 
UPDATE major m
JOIN students s ON m.sid = s.sid
SET m.name = 'Computer Science', m.level = 'MS'
WHERE s.ssn = 144673371;

-- delete all registration records that were in 'Summer2024'
-- MAY NEED TO TOGGLE SAFE UPDATE MODE OFF/ON. Left these in as comments:
-- SET SQL_SAFE_UPDATES = 0;

-- delete all registration records that were in 'Summer2024'
DELETE FROM register
WHERE regtime = 'Summer2024';

-- TOGGLE SAFE UPDATE MODE ON AGAIN IF NEEDED :3
-- SET SQL_SAFE_UPDATES = 1;

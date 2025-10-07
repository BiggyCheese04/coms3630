-- the names of the students enrolled in Fall2022 semester
-- assuming duplicates allowed
SELECT s.name
FROM students s
JOIN register r ON s.sid = r.sid
WHERE regtime = 'Fall2022';
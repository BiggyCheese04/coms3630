/*
the sid and names of all students
who have a minor,
ordered by student sid
*/
SELECT s.sid, s.name
FROM students s
JOIN minor m ON s.sid = m.sid
ORDER BY s.sid;
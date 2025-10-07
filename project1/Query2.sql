-- major name and major level of students whose name is 'Julie'
SELECT m.name, m.level
FROM students s
JOIN major m ON s.sid = m.sid
WHERE s.name = 'Julie';
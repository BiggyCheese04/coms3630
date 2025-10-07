/*
the name, sid, and ssn of students,
whose name is between 'Amy' and 'Gail',
order by name
*/
SELECT name, sid, ssn
FROM students
WHERE name BETWEEN 'Amy' AND 'Gail'
ORDER BY name;
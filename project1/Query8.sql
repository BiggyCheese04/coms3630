/*
the name, sid, and ssn of students,
whose name contains letter 'n' or 'N',
order by sid
*/
SELECT name, sid, ssn
FROM students
WHERE name LIKE '%n%' OR name LIKE '%N%'
ORDER BY sid;
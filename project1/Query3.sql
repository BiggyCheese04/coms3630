-- use project1;

/*
numbers and names of all courses offered by
the department of Computer Science,
ordered by course number
*/
SELECT c.cnumber, c.cname
FROM courses c
JOIN departments d ON c.department_code = d.dcode
WHERE d.dname = 'Computer Science'
ORDER BY c.cnumber;
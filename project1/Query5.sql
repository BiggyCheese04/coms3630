/*
all degree names and levels,
offered by the department Computer Science,
ordered by degree level
*/
SELECT dg.dgname, dg.level
FROM degrees dg
JOIN departments d ON dg.department_code = d.dcode
WHERE d.dname = 'Computer Science'
ORDER BY dg.level;
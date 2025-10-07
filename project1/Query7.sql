/*
the names and sids of all non-undergraduate students,
enrolled in course 'database', 
ordered by sid.
non-undergraduate means: MS or PhD levels
*/
SELECT s.name, s.sid
FROM students s
JOIN major mj ON s.sid = mj.sid
JOIN degrees dg ON mj.name = dg.dgname AND mj.level = dg.level -- join same degree/major name and level
JOIN register r ON s.sid = r.sid	-- gets us course number info for the student
JOIN courses c ON r.course_number = c.cnumber	-- gets us course name by letting us use course number 
WHERE c.cname = 'database' AND mj.level IN ('MS', 'PhD')
ORDER BY s.sid;

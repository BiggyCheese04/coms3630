/*
course number, course name, number of students (COUNT) registered for each course,
order by course number,
NOTE: if course has no student registered -> COUNT = 0
*/
SELECT c.cnumber, c.cname, COUNT(r.sid) AS students_registered
FROM courses c
LEFT JOIN register r ON c.cnumber = r.course_number
GROUP BY c.cnumber, c.cname		-- courses might be named the same but have different number
ORDER BY c.cnumber;
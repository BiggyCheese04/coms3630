/*
count of female students,
who major OR minor in 'Software Engineering' degrees,
at any level
*/
SELECT COUNT(DISTINCT s.sid) AS females_in_SE
FROM students s
LEFT JOIN major mj ON s.sid = mj.sid	-- get info for all majors
LEFT JOIN minor mi ON s.sid = mi.sid	-- get info for all minors
WHERE s.gender = 'F'					-- filter by gender='F' and degree name being SE
AND (
	mj.name = 'Software Engineering'
    OR mi.name = 'Software Engineering'
);
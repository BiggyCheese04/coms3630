-- use project1;
/*
degree name, degree level, number (COUNT) of students of most populated majors
	(i.e., major with highest(MAX) number(count) of students)
order by degree name if there is a tie
- find count for a particular major name and level
- get major with max count after we have counts for each major
- group our most popular neighbor by name and level
*/
SELECT mj.name, mj.level, COUNT(*) AS student_count		-- project major name, level, and count
FROM major mj
GROUP BY mj.name, mj.level	-- group major by name and level
HAVING COUNT(*) = (			-- filter groups to only most popular major(s) 
	SELECT MAX(cnt)			-- select the highest 'cnt'(s)
	FROM (					
		SELECT COUNT(*) AS cnt	-- project only major counts as 'cnt' for all majors
        FROM major
        GROUP BY name, level
	) AS subcount
)
ORDER BY mj.name;
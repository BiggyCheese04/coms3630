/*
degree name, degree level, number(COUNT) of students of most popular degrees
	(i.e., degree program with highest number(COUNT) of students,
	taking it as a major OR minor)
order by degree name if there's a tie
*/
SELECT dg.dgname, dg.level, COUNT(*) AS student_count
FROM (
	-- find UNION OF ALL and minors to get ALL DEGREES
    -- project: name and level attributes
	SELECT name, level, sid FROM major
    UNION ALL
    SELECT name, level, sid FROM minor
) AS all_degrees
JOIN degrees dg ON all_degrees.name = dg.dgname AND all_degrees.level = dg.level
GROUP BY dg.dgname, dg.level
HAVING COUNT(*) = (
	SELECT MAX(cnt)
	FROM (
		SELECT name, level, COUNT(*) AS cnt
        FROM (
			SELECT name, level, sid FROM major
            UNION ALL
            SELECT name, level, sid FROM minor
		) AS all_degs2
        GROUP BY name, level
	) AS subcount
)
ORDER BY dg.dgname

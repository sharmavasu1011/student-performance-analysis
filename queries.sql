--Does study time affect grades?

SELECT
	'Math' AS subject,
	studytime,
	AVG(g3) AS avg_grade,
	COUNT(*) AS student_count
FROM student_math
	GROUP BY studytime

UNION ALL

SELECT
	'Portuegese' AS subject,
	studytime,
	AVG(g3) AS avg_grade,
	COUNT(*) AS student_count	
FROM student_Portugese
	GROUP BY studytime;



--Do absences affect grades?

SELECT 
	CASE
		WHEN absences = 0 THEN '0'
		WHEN absences BETWEEN 1 AND 5 THEN '1-5'
		WHEN absences BETWEEN 6 AND 10 THEN '6-10'
		ELSE '10+'
	END AS absences_group,
	AVG(g3) AS avg_g3,
	COUNT(*) AS student_count
FROM student_math
	GROUP BY absences_group
	ORDER BY avg_g3 DESC;



--Do past failures affect performance?

SELECT 
	failures,
	AVG(g3) AS avg_g3,
	COUNT(*) AS student_count
FROM student_math
	GROUP BY failures
	ORDER BY failures;



--Does school support help?

SELECT 
	schoolsup,
	AVG(g3) AS avg_g3,
	COUNT(g3)
FROM student_math
	GROUP BY schoolsup;



--Does male vs female perform differently?

SELECT 
	sex,
	AVG(g3) AS avg_g3,
	COUNT(*) AS student_count
FROM student_math
	GROUP BY sex
	ORDER BY avg_g3;





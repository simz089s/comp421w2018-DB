SELECT
	C.dept, COUNT(DISTINCT C.ccode) AS numcourses
FROM
	course C
GROUP BY
	C.dept
ORDER BY
	numcourses DESC,
	C.dept ASC
;

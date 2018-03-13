SELECT
	C.dept
FROM
	course C INNER JOIN enroll E ON C.ccode = E.ccode AND E.term = 'winter 2018'
GROUP BY
	C.dept
HAVING
	count(DISTINCT E.sid) = (SELECT count(DISTINCT sid) FROM enroll WHERE term = 'winter 2018')
ORDER BY
	C.dept
;

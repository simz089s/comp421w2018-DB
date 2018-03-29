SELECT
	C.ccode, C.credits
FROM
	course C JOIN enroll E ON C.ccode = E.ccode
WHERE
	E.term = 'winter 2018' AND C.dept = 'computer science'
GROUP BY
	C.ccode
HAVING
	count(*) >= 5
;

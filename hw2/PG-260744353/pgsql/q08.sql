SELECT
	DISTINCT C.ccode, C.credits
FROM
	course C,
	enroll E1 INNER JOIN enroll E2 ON
		E1.term = 'winter 2018'
		AND E2.term = 'winter 2018'
		AND E1.sid = 12345678
		AND E2.sid = 12345679
		AND E1.ccode = E2.ccode
WHERE
	C.ccode = E1.ccode--OR C.ccode = E2.ccode
ORDER BY
	C.ccode
;

SELECT
	DISTINCT C.ccode, C.credits
FROM
	course C, enroll E
WHERE
	C.ccode = E.ccode AND E.sid = 12345678 AND E.term = 'winter 2018'
ORDER BY
	C.ccode
;

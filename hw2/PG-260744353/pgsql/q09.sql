SELECT
	DISTINCT C.ccode, C.credits
FROM
	course C, enroll E
WHERE
	C.ccode = E.ccode AND E.term = 'winter 2018' AND E.sid = 12345678
	EXCEPT(
		SELECT E.ccode, C.credits FROM course C, enroll E WHERE C.ccode = E.ccode AND sid = 12345679 AND E.term = 'winter 2018' )
ORDER BY
	1
;

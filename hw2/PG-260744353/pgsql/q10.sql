SELECT
	E.ccode, E.term, E.grade
FROM
	enroll E
WHERE
	E.sid = 12345678 AND EXISTS(
		SELECT C.ccode FROM course C WHERE C.dept = 'computer science' AND E.ccode = C.ccode )
ORDER BY
	E.ccode, E.term
;

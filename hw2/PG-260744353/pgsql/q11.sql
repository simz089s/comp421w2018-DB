SELECT
	DISTINCT S.sid, S.sname
FROM
	student S, enroll E1
WHERE
	S.sid = E1.sid
	AND S.sid != 12345678
	AND EXISTS(
		SELECT *
		FROM enroll E2
		WHERE E2.sid = 12345678
			AND E1.term = E2.term AND E1.ccode = E2.ccode)
ORDER BY
	S.sid
;

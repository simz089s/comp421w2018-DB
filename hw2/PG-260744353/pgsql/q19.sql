SELECT
	avg("count") AS avgenrollment
FROM
	(
		SELECT count (DISTINCT E.sid)
		FROM enroll E
		WHERE E.term = 'winter 2018'
		GROUP BY E.ccode
	) AS cnt
;

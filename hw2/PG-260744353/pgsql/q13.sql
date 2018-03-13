SELECT
	COUNT(DISTINCT E.sid) AS numstudents
FROM
	enroll E
WHERE
	E.term = 'winter 2018'
;

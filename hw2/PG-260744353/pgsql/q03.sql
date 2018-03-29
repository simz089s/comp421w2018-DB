SELECT
	DISTINCT C.ccode, C.credits
FROM
	course C JOIN courseoffer CO ON C.ccode = CO.ccode
WHERE
	C.dept = 'computer science'
	AND CO.term = 'winter 2018'
ORDER BY
	C.ccode
;

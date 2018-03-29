SELECT
	C.ccode, C.credits
FROM
	course C
WHERE
	C.dept = 'computer science'
	AND EXISTS(
		SELECT CO.ccode
		FROM courseoffer CO
		WHERE CO.term = 'winter 2018' AND CO.ccode = C.ccode )
ORDER BY
	C.ccode
;

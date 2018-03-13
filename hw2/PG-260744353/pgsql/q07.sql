SELECT
	DISTINCT CO.ccode
FROM
	courseoffer CO
WHERE
	CO.term = 'winter 2017' AND CO.ccode NOT IN(
		SELECT ccode FROM courseoffer WHERE term = 'winter 2018' )
ORDER BY
	CO.ccode
;

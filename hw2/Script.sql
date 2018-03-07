-- 1.
SELECT
	C.ccode, C.credits
FROM
	course C
WHERE
	( C.credits = 3 OR C.credits = 1 )
	AND C.dept = 'computer science'
ORDER BY
	C.credits DESC, C.ccode ASC
;

-- 2.
SELECT
	DISTINCT C.ccode, C.credits
FROM
	course C, courseoffer CO
WHERE
	C.dept = 'computer science'
	AND C.ccode = CO.ccode
	AND CO.term = 'winter 2018'
ORDER BY
	C.ccode
;

-- 3.
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

-- 4.
SELECT
	C.ccode, C.credits
FROM
	course C
WHERE
	C.dept = 'computer science'
	AND C.ccode IN(
		SELECT CO.ccode
		FROM courseoffer CO
		WHERE CO.term = 'winter 2018' )
ORDER BY
	C.ccode
;

-- .
SELECT
	S.rating, AVG( S.age )
FROM
	skaters S
WHERE
	S.age > 0
GROUP BY
	S.rating
ORDER BY
	S.rating DESC
;


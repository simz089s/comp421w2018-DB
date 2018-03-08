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
/*
-- 4.5.
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
;*/

-- 5.
SELECT
	DISTINCT C.ccode, C.credits
FROM
	course C, enroll E
WHERE
	C.ccode = E.ccode AND E.sid = 12345678
ORDER BY
	C.ccode
;

-- 6.
SELECT
	DISTINCT C.ccode, C.credits
FROM
	course C, enroll E
WHERE
	C.ccode = E.ccode AND E.sid = 12345678 AND E.term = 'winter 2018'
ORDER BY
	C.ccode
;

-- 7.
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

-- 8.
SELECT
	/*DISTINCT */C.ccode, C.credits
FROM
	course C,
	enroll E1 INNER JOIN enroll E2 ON
		E1.term = 'winter 2018'
		AND E2.term = 'winter 2018'
		AND E1.sid = 12345678
		AND E2.sid = 12345679
		AND E1.ccode = E2.ccode
WHERE
	C.ccode = E1.ccode--OR C.ccode = E2.ccode
ORDER BY
	C.ccode
;

-- 9.
SELECT
	/*DISTINCT */C.ccode, C.credits
FROM
	course C, enroll E
WHERE
	C.ccode = E.ccode AND E.term = 'winter 2018' AND E.sid = 12345678 AND E.ccode NOT IN(
		SELECT ccode FROM enroll WHERE sid = 12345679 )
ORDER BY
	C.ccode
;

-- 10.
SELECT
	E.ccode, E.term, E.grade
FROM
	enroll E
WHERE
	E.sid = 12345678 AND E.ccode IN(
		SELECT ccode FROM course WHERE dept = 'computer science' )
ORDER BY
	E.ccode, E.term
;

-- 11.
SELECT
	DISTINCT S.sid, S.sname
FROM
--	student S INNER JOIN enroll E ON S.sid = 12345678 AND E.sid = 12345678
	student S,
	enroll E
WHERE
	S.sid != 12345678
	AND E.ccode IN(
		SELECT ccode FROM course WHERE dept = 'computer science' )
	AND E.ccode IN(
		SELECT ccode FROM enroll WHERE sid = 12345678 )
	AND E.term IN(
		SELECT term FROM enroll WHERE term )
ORDER BY
	S.sid
;
/*
-- 12.
SELECT
	
FROM
	
WHERE
	
;

-- 13.
SELECT
	
FROM
	
WHERE
	
;

-- 14.
SELECT
	
FROM
	
WHERE
	
;

-- 15.
SELECT
	
FROM
	
WHERE
	
;

-- 16.
SELECT
	
FROM
	
WHERE
	
;

-- 17.
SELECT
	
FROM
	
WHERE
	
;

-- 18.
SELECT
	
FROM
	
WHERE
	
;

-- 19.
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

-- 20.
SELECT
	
FROM
	
WHERE
	
GROUP BY
	
ORDER BY
	
;

*/
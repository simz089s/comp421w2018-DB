SELECT
	S.rating, AVG(S.age)
FROM
	skaters S
WHERE
	S.age > 0
GROUP BY
	S.rating
ORDER BY
	S.rating
;


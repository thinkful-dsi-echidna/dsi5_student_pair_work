SELECT birthcountry, namefirst
FROM people
WHERE birthcountry != 'USA' AND namefirst LIKE 'Y%';

SELECT namefirst, namelast
FROM people
WHERE bats = 'R' OR throws = 'R' 
	AND birthyear BETWEEN 1980 AND 1985;

SELECT namefirst, namelast
FROM people
WHERE birthcountry IN('Italy', 'Germany', 'France');


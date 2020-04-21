SELECT *
FROM people
WHERE NOT birthcountry = 'USA' AND namefirst LIKE 'Y%';

SELECT *
FROM people
WHERE (bats = 'R' OR throws = 'R') AND birthyear BETWEEN 1980 AND 1985;

SELECT *
FROM people
WHERE birthyear IS NULL;

SELECT *
FROM people
WHERE birthcountry IN ('France', 'Germany', 'Italy');
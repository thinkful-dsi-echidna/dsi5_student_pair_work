SELECT * 
FROM people
WHERE birthcountry !='USA' 
AND namefirst 
LIKE 'Y%';

SELECT * 
FROM people
WHERE (birthyear BETWEEN 1980 AND 1985)
AND (bats = 'R'
OR throws = 'R'); 

SELECT *
FROM people
WHERE birthyear IS null;

SELECT *
FROM people
WHERE birthcountry IN ('France','Germany','Italy');

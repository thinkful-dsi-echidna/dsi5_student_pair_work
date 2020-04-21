--Return all unique combinations of first and last names.
SELECT DISTINCT namefirst, namelast
FROM people;

--Count the number of records of players at least 72 inches tall who were not born in the USA.: 1528
SELECT COUNT(*)
FROM people
WHERE height >= 72 AND NOT birthcountry = 'USA';

--Return the average weight for players grouped by birth year, in descending order of birth year. 
SELECT birthyear, ROUND(AVG(weight), 2) as avg_weight
FROM people
GROUP BY birthyear
ORDER BY birthyear DESC NULLS LAST;


--Next questions from salaries table
--Return the maximum salary paid for each year. Sort the results from high to low
SELECT yearid, MAX(salary)
FROM salaries
GROUP BY yearid
ORDER BY MAX(salary) DESC;

--Return the average salary paid by each team for each season. Sort the results by year, league and team
SELECT yearid, lgid, teamid,  ROUND(AVG(salary), 2) as avg_salary
FROM salaries
GROUP BY yearid, lgid, teamid
ORDER BY yearid, lgid, teamid;

SELECT DISTINCT namefirst, namelast 
FROM people;

SELECT COUNT (*) AS cnt 
FROM people 
WHERE height >=72 AND birthcountry!='USA';

SELECT ROUND(AVG(weight), 0) as avg_weight, birthyear FROM people 
GROUP BY birthyear 
ORDER BY birthyear DESC;


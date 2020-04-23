SELECT MAX(salary) as hi_sal, yearid
FROM salaries 
GROUP BY yearid
ORDER BY 1 DESC;

SELECT ROUND(AVG(salary),0) AS avg_salary,  yearid, teamid
FROM salaries
GROUP BY teamid, yearid, lgid 
ORDER BY lgid,  teamid, yearid; 


SELECT job, deptno, COUNT(*) AS num_employees, 
	COUNT(DISTINCT(mgr)) AS num_managers, 
	MIN(hiredate) AS earliest_hire, 
	AVG(sal),
	ROUND(AVG(sal), 2)::money AS av_salary, 
	ROUND(AVG(comm), 2)::money AS av_commission
FROM emp
-- group by evaluated before select
GROUP BY job, deptno
ORDER BY 1, 2;
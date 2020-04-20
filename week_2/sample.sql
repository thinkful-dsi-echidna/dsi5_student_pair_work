-- Use the LIKE operator in conjunction with the SQL wildcard operator (”%”):

SELECT ename, job
FROM emp
WHERE deptno IN (10,20)
  AND (ename LIKE '%I%' or job LIKE '%ER');

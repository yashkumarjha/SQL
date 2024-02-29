-- https://leetcode.com/problems/managers-with-at-least-5-direct-reports/

SELECT A.NAME
FROM EMPLOYEE A
JOIN EMPLOYEE B
ON A.ID = B.MANAGERID
GROUP BY B.MANAGERID
HAVING COUNT(*)>=5;

-- https://leetcode.com/problems/employee-bonus/

SELECT E.NAME, B.BONUS
FROM EMPLOYEE E
LEFT JOIN BONUS B
ON E.EMPID = B.EMPID
WHERE BONUS < 1000 OR BONUS IS NULL;
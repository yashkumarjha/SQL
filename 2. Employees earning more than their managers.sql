-- https://leetcode.com/problems/employees-earning-more-than-their-managers/

SELECT E1.NAME AS EMPLOYEE 
FROM EMPLOYEE E1 
JOIN EMPLOYEE E2
ON E1.MANAGERID=E2.ID
WHERE E1.SALARY>E2.SALARY;

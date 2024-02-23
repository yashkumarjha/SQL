-- https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/

SELECT EU.UNIQUE_ID, E.NAME
FROM EMPLOYEES E
LEFT JOIN EMPLOYEEUNI EU
ON E.ID = EU.ID;

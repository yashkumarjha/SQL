-- https://leetcode.com/problems/primary-department-for-each-employee/

-- This will give all the employee_id and department_id where flag is Y
-- In our test case it's (2,1) and (4,3)
SELECT employee_id, department_id
FROM EMPLOYEE
WHERE primary_flag = 'Y'

UNION

-- This will give all the employee_id and department_id where count of employee_id is equal to 1
-- In our test case it's (1,1) and (3,3)
SELECT employee_id, department_id
FROM EMPLOYEE
GROUP BY employee_id
HAVING COUNT(employee_id)=1;

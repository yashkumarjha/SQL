-- SQL SCHEMA
-- Create table If Not Exists Employee (id int, name varchar(255), salary int, managerId int);
-- Truncate table Employee;
-- insert into Employee (id, name, salary, managerId) values ('1', 'Joe', '70000', '3');
-- insert into Employee (id, name, salary, managerId) values ('2', 'Henry', '80000', '4');
-- insert into Employee (id, name, salary, managerId) values ('3', 'Sam', '60000', null);
-- insert into Employee (id, name, salary, managerId) values ('4', 'Max', '900000', null);

-- INPUT
-- | id | name  | salary | managerId |
-- | -- | ----- | ------ | --------- |
-- | 1  | Joe   | 70000  | 3         |
-- | 2  | Henry | 80000  | 4         |
-- | 3  | Sam   | 60000  | null      |
-- | 4  | Max   | 90000  | null      |

-- QUERY
SELECT e1.Name AS Employee
FROM Employee e1
JOIN Employee e2 ON e1.ManagerId = e2.Id
WHERE e1.Salary > e2.Salary;

-- OUTPUT
-- | Employee |
-- | -------- |
-- | Joe      |

-- EXPECTED OUTPUT
-- | Employee |
-- | -------- |
-- | Joe      |

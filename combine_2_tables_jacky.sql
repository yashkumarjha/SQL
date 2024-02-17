-- SQL SCHEMA
-- create database leetcode;
-- use leetcode;
-- Create table If Not Exists Person (personId int, firstName varchar(255), lastName varchar(255));
-- Create table If Not Exists Address (addressId int, personId int, city varchar(255), state varchar(255));
-- Truncate table Person;
-- insert into Person (personId, lastName, firstName) values ('1', 'Wang', 'Allen');
-- insert into Person (personId, lastName, firstName) values ('2', 'Alice', 'Bob');
-- Truncate table Address;
-- insert into Address (addressId, personId, city, state) values ('1', '2', 'New York City', 'New York');
-- insert into Address (addressId, personId, city, state) values ('2', '3', 'Leetcode', 'California');

-- INPUT
-- Person =
-- | personId | lastName | firstName |
-- | -------- | -------- | --------- |
-- | 1        | Wang     | Allen     |
-- | 2        | Alice    | Bob       |

-- Address =
-- | addressId | personId | city          | state      |
-- | --------- | -------- | ------------- | ---------- |
-- | 1         | 2        | New York City | New York   |
-- | 2         | 3        | Leetcode      | California |

-- Query
SELECT FirstName, LastName, City, State
FROM Person
LEFT JOIN Address
ON Person.PersonId = Address.PersonId

-- OUTPUT
-- | FirstName | LastName | City          | State    |
-- | --------- | -------- | ------------- | -------- |
-- | Allen     | Wang     | null          | null     |
-- | Bob       | Alice    | New York City | New York |

-- EXPECTED OUTPUT
-- | firstName | lastName | city          | state    |
-- | --------- | -------- | ------------- | -------- |
-- | Allen     | Wang     | null          | null     |
-- | Bob       | Alice    | New York City | New York |

-- https://leetcode.com/problems/delete-duplicate-emails/

DELETE FROM Person
WHERE Id NOT IN (SELECT Id FROM (SELECT MIN(Id) AS 'Id', Email FROM Person GROUP BY 2) t)

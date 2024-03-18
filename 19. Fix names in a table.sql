-- https://leetcode.com/problems/fix-names-in-a-table/description/

SELECT USER_ID,
CONCAT(UPPER(SUBSTRING(NAME,1,1)),LOWER(SUBSTRING(NAME,2,LENGTH(NAME)-1))) AS NAME
FROM USERS
ORDER BY USER_ID;

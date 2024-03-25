-- https://leetcode.com/problems/biggest-single-number/

SELECT MAX(NUM) AS num
FROM MYNUMBERS
WHERE NUM NOT IN 
(SELECT NUM FROM MYNUMBERS GROUP BY NUM HAVING COUNT(NUM)>1);

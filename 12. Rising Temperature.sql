-- https://leetcode.com/problems/rising-temperature/

SELECT A.ID FROM WEATHER A, WEATHER B
WHERE DATEDIFF(A.RECORDDATE, B.RECORDDATE)=1
AND A.TEMPERATURE>B.TEMPERATURE;

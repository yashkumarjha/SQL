-- https://leetcode.com/problems/average-time-of-process-per-machine/description/

SELECT A.MACHINE_ID, 
ROUND(AVG(B.TIMESTAMP-A.TIMESTAMP),3) AS PROCESSING_TIME
FROM ACTIVITY A
JOIN ACTIVITY B
ON A.MACHINE_ID = B.MACHINE_ID AND A.PROCESS_ID = B.PROCESS_ID
AND A.ACTIVITY_TYPE = 'START' AND B.ACTIVITY_TYPE='END'
GROUP BY A.MACHINE_ID;

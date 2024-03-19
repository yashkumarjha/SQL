-- https://leetcode.com/problems/classes-more-than-5-students/


SELECT CLASS
FROM COURSES
GROUP BY CLASS
HAVING COUNT(CLASS)>=5;

-- https://leetcode.com/problems/average-selling-price/

SELECT P.PRODUCT_ID,
COALESCE(ROUND(SUM(UNITS*PRICE)/SUM(UNITS),2),0) AS AVERAGE_PRICE
-- using coalesce in the above line so that if there's any value which is not in second table then that value won't show null instead it'll show 0.
FROM PRICES P
LEFT JOIN UNITSSOLD U
ON P.PRODUCT_ID = U.PRODUCT_ID AND 
U.PURCHASE_DATE BETWEEN P.START_DATE AND P.END_DATE 
-- THIS ABOVE LINE WE NEED TO ADD TO MAKE SURE THAT THE PURCHASE DATE IS BETWEEN THE START AND END DATE.
GROUP BY PRODUCT_ID;

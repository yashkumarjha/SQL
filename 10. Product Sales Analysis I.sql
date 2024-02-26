-- https://leetcode.com/problems/product-sales-analysis-i/

SELECT P.PRODUCT_NAME, S.YEAR, S.PRICE
FROM PRODUCT P
JOIN SALES S
ON P.PRODUCT_ID = S.PRODUCT_ID
GROUP BY S.SALE_ID;

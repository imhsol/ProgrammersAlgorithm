SELECT
    B.CATEGORY,
    B.MAX_PRICE,
    A.PRODUCT_NAME
FROM FOOD_PRODUCT A
JOIN 
(
SELECT
    CATEGORY,
    MAX(PRICE) AS MAX_PRICE
FROM FOOD_PRODUCT
WHERE CATEGORY IN ('과자', '국', '김치', '식용유')
GROUP BY CATEGORY
) B
ON A.PRICE = B.MAX_PRICE
AND A.CATEGORY = B.CATEGORY
ORDER BY B.MAX_PRICE DESC
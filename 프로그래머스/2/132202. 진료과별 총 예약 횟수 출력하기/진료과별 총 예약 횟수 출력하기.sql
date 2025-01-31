SELECT
    MCDP_CD AS "진료과코드",
    COUNT(*) AS "5월예약건수"
FROM APPOINTMENT
WHERE SUBSTR(TO_CHAR(APNT_YMD),4,3) = 'MAY'
GROUP BY MCDP_CD
ORDER BY COUNT(*) ASC, MCDP_CD ASC
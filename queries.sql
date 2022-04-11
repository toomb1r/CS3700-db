-- 3 Table Join: Display the vendor name and phone number that supplies the locations which received negative(<4/10) survey ratings,
-- along with customers' comments on the survey
SELECT vendor.v_name, vendor.v_phone_num, surv_rating AS RATING, surv_customer_comments
FROM vendor
INNER JOIN location ON vendor.v_id = location.vendor_v_id
INNER JOIN survey ON location.loc_id = survey.location_loc_id
WHERE survey.surv_rating < 4;

-- Show the most profitable locations and their cities during the month of July of 2021, sorted from highest to lowest
SELECT location.loc_id AS ID, location.loc_city AS CITY, TO_CHAR(SUM(rec_sales), '$9,999,999') AS "Sales Sum" 
FROM record
INNER JOIN location ON record.location_loc_id = location.loc_id
WHERE record.rec_date BETWEEN TO_DATE('07/01/2021', 'MM/DD/YYYY') AND TO_DATE('07/31/2021', 'MM/DD/YYYY')
GROUP BY location.loc_id, location.loc_city
ORDER BY "Sales Sum" DESC;

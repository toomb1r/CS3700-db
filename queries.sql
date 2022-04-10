-- 3 Table Join: Display the vendor name and phone number that supplies the locations which received negative(<4/10) survey ratings,
-- along with customers' comments on the survey
SELECT vendor.v_name, vendor.v_phone_num, surv_rating AS RATING, surv_customer_comments
FROM vendor
INNER JOIN location ON vendor.v_id = location.vendor_v_id
INNER JOIN survey ON location.loc_id = survey.location_loc_id
WHERE survey.surv_rating < 4;

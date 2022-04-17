SELECT REC_SALES,location_loc_id
FROM RECORD
WHERE REC_SALES > (
	SELECT AVG(REC_SALES)
	FROM RECORD
	WHERE LOCATION_LOC_ID IN (
	SELECT LOC_ID
		FROM LOCATION
		WHERE AREA_AREA_ID = 2)
		);

-- this script is selecting an area with high performing locations with higher than average sales

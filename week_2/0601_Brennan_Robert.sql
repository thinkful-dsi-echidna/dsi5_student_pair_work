SELECT *
FROM houseprices;
-- 1460 entries

SELECT saleprice/lotarea AS price_per_unit
FROM houseprices

SELECT CONCAT('This house was built in: ', yearbuilt) as string_yearbuilt
FROM houseprices;

SELECT COUNT(*) AS number_of_rows, 
MIN(yearbuilt) AS earliest_built,
MAX(yearbuilt) AS latest_built,
ROUND(AVG(lotarea), 2) AS avg_lotarea
FROM houseprices;

SELECT neighborhood, 
CONCAT('This house was built in: ', yearbuilt) as string_yearbuilt, 
saleprice/lotarea AS price_per_unit,
CONCAT('building type: ', bldgtype, ' / housestyle: ', housestyle)
FROM houseprices;
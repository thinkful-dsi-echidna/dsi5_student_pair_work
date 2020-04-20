SELECT neighborhood, CONCAT('This house was built in ', yearbuilt) AS yearbuilt2, saleprice/lotarea AS price_per_unit, CONCAT(bldgtype,'\',housestyle)
FROM houseprices
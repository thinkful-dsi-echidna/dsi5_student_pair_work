SELECT neighborhood, 
	CONCAT('This house was built in ', yearbuilt),
	saleprice/lotarea AS price_per_unit,
	CONCAT(bldgtype, '/', housestyle)
FROM houseprices
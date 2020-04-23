--Retrieve all vehicle makes with average highway mileage better than twice the average of all vehicles.
WITH avg_model_hwy AS 
( 
SELECT DISTINCT make, ROUND(AVG(hwy), 0) AS avg_make_mileage
FROM vehicles 
GROUP BY make
)

SELECT make, avg_make_mileage 
FROM avg_model_hwy 
WHERE avg_make_mileage > 
	(SELECT ROUND(AVG(hwy), 0) FROM vehicles)*2;
	
	


--Calculate the variance in highway mileage for all vehicles in the vehicle table.
--Remember - variance will use a SUM(), a POWER(), a COUNT(),
--and you’ll have to find a way to get the average of all vehicles in there, too.
WITH avg_hwy AS
(SELECT ROUND(AVG(hwy), 2) as mean_hwy
FROM vehicles)

SELECT ROUND(SUM(POWER((hwy-(SELECT mean_hwy FROM avg_hwy)), 2))/COUNT(*), 2)
FROM vehicles
WITH
avg_per_make AS
(
SELECT make, ROUND(AVG(hwy)) as avg_hwy
FROM vehicles
GROUP BY make
)

SELECT vehicles.make, vehicles.model, vehicles.hwy, avg_per_make.avg_hwy
FROM vehicles LEFT OUTER JOIN avg_per_make
	ON vehicles.make = avg_per_make.make
WHERE avg_per_make.avg_hwy > 2*(SELECT AVG(hwy) FROM vehicles)
;
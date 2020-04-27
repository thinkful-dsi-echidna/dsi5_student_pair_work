
SELECT co.country, AVG(r.return_date - r.rental_date) AS avg_rental_time 
FROM country as co 
	INNER JOIN city as ci ON co.country_id = ci.country_id 
	INNER JOIN address as a ON ci.city_id = a.city_id 
	INNER JOIN customer as cu ON a.address_id = cu.address_id 
	INNER JOIN rental as r ON cu.customer_id = r.customer_id 
GROUP BY co.country 
ORDER BY co.country;
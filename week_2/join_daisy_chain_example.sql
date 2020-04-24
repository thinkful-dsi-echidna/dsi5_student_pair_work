SELECT r.rental_date, CONCAT(c.first_name, ' ', c.last_name) AS customer, f.title, ai.address AS inv_store, 
	CONCAT(sf.first_name, ' ', sf.last_name) AS staff, asf.address AS staff_store
FROM rental r
	LEFT JOIN customer c ON r.customer_id = c.customer_id
	LEFT JOIN inventory i ON r.inventory_id = i.inventory_id
	LEFT JOIN film f ON i.film_id = f.film_id
	LEFT JOIN store si ON i.store_id = si.store_id
	LEFT JOIN address ai ON si.address_id = ai.address_id
	LEFT JOIN staff sf ON r.staff_id = sf.staff_id
	LEFT JOIN store ssf ON sf.store_id = ssf.store_id
	LEFT JOIN address asf ON ssf.address_id = asf.address_id
WHERE r.return_date IS NULL
ORDER BY r.rental_date
LIMIT 10;
SELECT c.name, AVG(length)
FROM film AS f INNER JOIN film_category AS fc
	ON f.film_id = fc.film_id
	INNER JOIN category AS c
	ON fc.category_id = c.category_id
WHERE rating != 'G'
GROUP BY c.name
HAVING AVG(length) > 120
ORDER BY name
;

SELECT country, AVG(return_date - rental_date) as avg_rental_time
FROM rental AS r LEFT OUTER JOIN inventory AS i
	ON r.inventory_id = i.inventory_id
	LEFT OUTER JOIN film AS f
	ON i.film_id = f.film_id
	LEFT OUTER JOIN customer AS c
	ON r.customer_id = c.customer_id
	LEFT OUTER JOIN address AS a
	ON c.address_id = a.address_id
	LEFT OUTER JOIN city
	ON a.city_id = city.city_id
	LEFT OUTER JOIN country
	ON city.country_id = country.country_id
GROUP BY country
HAVING AVG(return_date - rental_date) < interval '5' day
ORDER BY country
;

SELECT last_name
FROM actor
WHERE last_name LIKE 'D%'

UNION

SELECT last_name
FROM customer
WHERE last_name LIKE 'D%'

ORDER BY last_name
;
-- using dvdrentals DB:

--Draw a schema of category, film_category and film. (Doesn’t have to be draw.io, sketching is fine).
--What are the relationships?
-- 'category' links to 'film_category' through category_id; 'film' links to 'film_category' via film_id;
-- all three have the category last_update in common


--Return the category name and average length per category for all films, excluding those rated G.
--Return only those categories with an average length of more than 120 minutes. Sort the results alphabetically.
SELECT c.name, ROUND(AVG(f.length), 2)
FROM category as c 
	INNER JOIN film_category as fc ON c.category_id = fc.category_id
	INNER JOIN film as f ON fc.film_id = f.film_id
WHERE NOT f.rating = 'G'
GROUP BY c.name
HAVING AVG(f.length) > 120
ORDER BY c.name;


--Return the country name and average rental time for all rentals,
--grouped and ordered by customer’s country and only for average rental times under 5 days.
SELECT co.country, AVG(r.return_date - r.rental_date) AS avg_rental_time
FROM country as co 
	INNER JOIN city as ci ON co.country_id = ci.country_id
	INNER JOIN address as a ON ci.city_id = a.city_id
	INNER JOIN customer as cu ON a.address_id = cu.address_id
	INNER JOIN rental as r ON cu.customer_id = r.customer_id
GROUP BY co.country
HAVING AVG(r.return_date - r.rental_date) < '5 day'
ORDER BY co.country;


--Return a list of last names of both customers and actors whose last names start with D, sorted alphabetically.
SELECT last_name
FROM actor
WHERE last_name LIKE 'D%'
UNION
SELECT last_name
FROM customer
WHERE last_name LIKE 'D%'
ORDER BY last_name;
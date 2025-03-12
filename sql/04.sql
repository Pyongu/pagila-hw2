/*
 * Select the titles of all films that the customer with customer_id=1 has rented more than 1 time.
 *
 * HINT:
 * It's possible to solve this problem both with and without subqueries.
 */
SELECT title
FROM film
WHERE title in  (
    SELECT title
    from film
    Join inventory USING (film_id)
    JOIN rental USING (inventory_id)
    WHERE customer_id = 1
    GROUP BY customer_id, title
    HAVING count(*) > 1
    ORDER BY customer_id ASC
)
ORDER BY title;

/*
 * Select the title of all 'G' rated movies that have the 'Trailers' special feature.
 * Order the results alphabetically.
 *
 * HINT:
 * Use `unnest(special_features)` in a subquery.
 */
SELECT title
FROM film 
WHERE rating = 'G'AND 'Trailers' in (
    SELECT unnest(special_features)
    FROM film f
    WHERE film.film_id = f.film_id
)
ORDER BY title ASC;


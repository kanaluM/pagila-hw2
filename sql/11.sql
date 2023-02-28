/*
 * List the name of all actors who have appeared in a movie that has the 'Behind the Scenes' special_feature
 */

SELECT DISTINCT (first_name || ' ' || last_name) AS "Actor Name"
FROM (SELECT unnest(special_features), first_name, last_name
      FROM film
      JOIN film_actor USING (film_id)
      JOIN actor USING (actor_id)
     ) AS t
WHERE unnest = 'Behind the Scenes'
ORDER BY (first_name || ' ' || last_name) ASC;

/*
 * List the title of all movies that have both the 'Behind the Scenes' and the 'Trailers' special_feature
 *
 * HINT:
 * Create a select statement that lists the titles of all tables with the 'Behind the Scenes' special_feature.
 * Create a select statement that lists the titles of all tables with the 'Trailers' special_feature.
 * Inner join the queries above.
 */

SELECT DISTINCT title
FROM (SELECT title
      FROM film
      WHERE 'Behind the Scenes' = ANY (special_features)) AS t1
JOIN (SELECT title, unnest(special_features)
      FROM film
      WHERE 'Trailers' = ANY (special_features)) AS t2
USING (title)
ORDER BY title ASC;

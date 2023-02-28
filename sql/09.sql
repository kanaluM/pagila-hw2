/*
 * Count the number of movies that contain each type of special feature.
 * Order the results alphabetically be the special_feature.
 * HINT:
 * Use `unnest(special_features)` in a subquery.
 */

SELECT unnest AS special_features, 
       count(unnest)
FROM (SELECT unnest(special_features)
      FROM film) AS t
GROUP BY unnest
ORDER BY unnest ASC;

-- My answer works too, but seed data is different from example
-- SELECT properties.id, title, cost_per_night, AVG(property_reviews.rating) as average_rating
-- FROM properties
-- JOIN property_reviews ON property_id = properties.id
-- WHERE city IN ('Vancouver')
-- GROUP BY properties.id
-- HAVING AVG(property_reviews.rating) >= 4
-- ORDER BY cost_per_night DESC
-- LIMIT 10;

--Given answer works, seed info different too, and properties explodes from too much info
SELECT properties.*, avg(property_reviews.rating) as average_rating
FROM properties
JOIN property_reviews ON properties.id = property_id
WHERE city LIKE '%ancouv%'
GROUP BY properties.id
HAVING avg(property_reviews.rating) >= 4
ORDER BY cost_per_night
LIMIT 10;

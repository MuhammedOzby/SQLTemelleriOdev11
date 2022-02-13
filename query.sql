-- Example 1st

  (SELECT first_name,
          last_name,
          'actor' AS "type"
   FROM actor)
UNION
  (SELECT first_name,
          last_name,
          'customer' AS "type"
   FROM customer)
ORDER BY first_name ASC;

-- Example 2nd

  (SELECT first_name
   FROM actor) INTERSECT
  (SELECT first_name
   FROM customer)
ORDER BY first_name ASC;

-- Example 3rd

  (SELECT first_name
   FROM actor) INTERSECT
  (SELECT first_name
   FROM customer)
ORDER BY first_name ASC;

--- Retry to all
-- Example 1st

  (SELECT first_name,
          last_name,
          'actor' AS "type"
   FROM actor)
UNION ALL
  (SELECT first_name,
          last_name,
          'customer' AS "type"
   FROM customer)
ORDER BY first_name ASC;

-- Example 2nd

  (SELECT first_name
   FROM actor) INTERSECT ALL
  (SELECT first_name
   FROM customer)
ORDER BY first_name ASC;

-- Example 3rd

  (SELECT first_name
   FROM actor) INTERSECT ALL
  (SELECT first_name
   FROM customer)
ORDER BY first_name ASC;


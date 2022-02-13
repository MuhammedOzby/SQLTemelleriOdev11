# SQL Temeller - Ödev 10

Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

1. *actor* ve *customer* tablolarında bulunan *first_name* sütunları için tüm verileri sıralayalım.
2. *actor* ve *customer* tablolarında bulunan *first_name* sütunları için kesişen verileri sıralayalım.
3. *actor* ve *customer* tablolarında bulunan *first_name* sütunları için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.

*İlk 3 sorguyu tekrar eden veriler için de yapalım.*

***

```SQL
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

```

***

```SQL
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


```

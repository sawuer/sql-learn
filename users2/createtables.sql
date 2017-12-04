DROP TABLE IF EXISTS users2;
DROP TABLE IF EXISTS profiles2;


CREATE TABLE users2 (
  id SERIAL PRIMARY KEY,
  username VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  created_at DATE NOT NULL,
  updated_at DATE NOT NULL
);

CREATE TABLE profiles2 (
  id SERIAL PRIMARY KEY,
  user_id INTEGER NOT NULL,
  name VARCHAR(255),
  last_name VARCHAR(255),
  photo_path VARCHAR(255),
  about TEXT,

  FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TRIGGER new_profile 
	AFTER INSERT ON users2
	FOR EACH ROW 
  DECLARE
	-- EXECUTE PROCEDURE 
	INSERT INTO profiles2(user_id) VALUES (NEW.id);





  SELECT customer_id 
    FROM payment 
ORDER BY amount 
    DESC 
   LIMIT 10;

SELECT title, film_id FROM film ORDER BY film_id LIMIT 5;
SELECT film_id FROM film WHERE film_id NOT BETWEEN 10 AND 100 ORDER BY film_id;
SELECT amount, payment_date 
FROM payment 
WHERE amount 
BETWEEN 2 
AND 4
ORDER BY amount DESC;
SELECT title FROM film WHERE title IN ('Ace Goldfinger', 'African Egg');
SELECT title FROM film WHERE title LIKE 'God%';
SELECT customer_id, first_name, last_name
FROM customer 
WHERE customer_id IN (1,2);
SELECT country 
FROM country 
WHERE country LIKE 'R%';

SELECT first_name 
  FROM customer 
 WHERE first_name LIKE '%R_';
 
 
SELECT COUNT(amount) FROM payment WHERE amount > 5; 

SELECT COUNT(DISTINCT district) FROM address;

SELECT COUNT(*) 
  FROM actor 
 WHERE first_name LIKE 'P%';

SELECT DISTINCT district FROM address;

SELECT COUNT(*) 
  FROM film 
 WHERE rating = 'R' AND replacement_cost BETWEEN 5 AND 15;
 
 
 SELECT COUNT(*) 
   FROM film 
  WHERE title LIKE '%Truman%';
  
SELECT ROUND(AVG(amount), 3) FROM payment;

SELECT MIN(amount) 
FROM payment 
WHERE amount 
BETWEEN 5 AND 10;

SELECT SUM(amount) 
FROM payment;



SELECT ROUND(AVG(DISTINCT customer_id)) 
FROM payment;

SELECT ROUND(AVG(customer_id), 3)
FROM payment
GROUP BY customer_id;



SELECT customer_id, amount
FROM payment
WHERE customer_id = 285;



SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id;

SELECT rating, SUM(replacement_cost)
FROM film
GROUP BY rating
ORDER BY SUM(replacement_cost) DESC;


SELECT staff_id, ROUND(AVG(amount)), COUNT(payment_id)
FROM payment 
GROUP BY staff_id;

SELECT rating, COUNT(*)
FROM film
GROUP BY rating;



SELECT staff_id, COUNT(amount), SUM(amount)
FROM payment 
GROUP BY staff_id;

SELECT rating, ROUND(AVG(replacement_cost), 2)
FROM film
GROUP BY rating;

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id 
ORDER BY SUM(amount) DESC
LIMIT 5;



SELECT rating, MAX(length)
FROM film
GROUP BY rating
HAVING rating = 'NC-17';



SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 200;



SELECT customer_id, COUNT(amount)
FROM payment
GROUP BY customer_id
HAVING COUNT(amount) >= 40;

SELECT rating, AVG(rental_duration)
FROM film
GROUP BY rating
HAVING AVG(rental_duration) > 5;


-- TEST 1

SELECT customer_id, SUM(amount)
FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 110
ORDER BY SUM(amount)
DESC;


SELECT COUNT(*) 
FROM film
WHERE title LIKE 'J%';

-- my solution
SELECT MAX(customer_id)
FROM customer
WHERE first_name LIKE 'E%' AND
    address_id < 500;

-- Jose solution
SELECT customer_id  FROM customer
WHERE first_name LIKE 'E%'
AND address_id <500
ORDER BY customer_id DESC
LIMIT 1;

-- TEST 1 END




SELECT payment_id AS my_payment_col
FROM payment
WHERE payment_id > 10;




SELECT customer_id, SUM(amount) AS total_spent
FROM payment
GROUP BY customer_id;



SELECT 
  customer.customer_id,
    first_name,
    last_name,
    email,
    amount,
    payment_date
FROM customer
INNER JOIN payment 
ON payment.customer_id = customer.customer_id;




SELECT 
  payment.customer_id AS customer_id_from_payment,
    first_name AS first_name_from_customer
FROM customer
INNER JOIN payment
ON payment.customer_id = customer.customer_id;


SELECT payment_id, amount, staff.first_name
FROM payment
INNER JOIN staff
ON payment.staff_id = staff.staff_id;


SELECT title, COUNT(title) AS copies_at_store_1
FROM inventory
INNER JOIN film
ON inventory.film_id = film.film_id
WHERE store_id = 1
GROUP BY title
ORDER BY title;



SELECT language.name, title
FROM film
INNER JOIN language
ON film.language_id = language.language_id;

SELECT * FROM language;



SELECT title, language.name AS movie_lang FROM film
INNER JOIN language 
ON film.language_id = language.language_id;


SELECT film.film_id, film.title, inventory_id
FROM film
LEFT OUTER JOIN inventory ON inventory.film_id = film.film_id
WHERE inventory.film_id IS NULL;


COPY public.film TO '/home/admin/Desktop/onemore.csv' DELIMITER ',' CSV HEADER;

SHOW data_directory

























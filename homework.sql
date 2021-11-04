--1. How many actors are there with the last name Wahlberg?
SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';  --must spell name correctly including capitalization


--2. How many payments were made between 3.99 and 5.99?
SELECT COUNT (*)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

--3. What film does the store have the most of?
SELECT film.title AS title, COUNT (*) as cnt
FROM inventory
GROUP BY DESC; --this question killed me


--4. How many customers have the last name William?
SELECT *
FROM customer
WHERE last_name LIKE 'William%';

--5. What store employess (get the id) sold the most rentals?
SELECT COUNT (*)
FROM payment
GROUP BY staff_id

--6. How many different districts name are there
SELECT DISTINCT district
FROM address
ORDER BY district;

--7 what film has the most actors in it?

SELECT *
FROM film_actor
ORDER BY actor_id DESC;

-- 8 From store_id 1, how many customers have a last name ending with 'es'
--(use customer table)
SELECT last_name
FROM customer
WHERE last_name LIKE '%es';

--9 How many payment amounts (4.99,5.99,etc).had a number of rentals above 250
--for customers with ids between 380 and 430 (use group by and having >250)

SELECT amount, COUNT (amount)
FROM payment
--ORDER BY amount > 2.50
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT (amount) > 250;

--10 Within the film table, how many rating categories are there? and what rating
--has the most movies total?

SELECT  DISTINCT rating, COUNT (rating)
FROM film
GROUP BY rating
ORDER BY COUNT (rating) DESC ;



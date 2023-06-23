
-- question 1
SELECT first_name, last_name, district
FROM customer
INNER JOIN address
ON customer.customer_id = address.address_id
WHERE district = 'Texas';

-- question 2
SELECT first_name, last_name, COUNT(amount)
FROM customer
INNER JOIN payment
ON payment.amount = customer.customer_id
GROUP BY first_name, last_name, amount > 6.99;

-- question 3
SELECT first_name, last_name
FROM customer
WHERE customer_id IN (
	SELECT customer_id
	FROM payment
	WHERE amount > 175	
)
GROUP BY first_name, last_name;

-- question 4
SELECT city_id
FROM city
INNER JOIN country
ON city.city_id = country.country_id
WHERE country = 'Nepal';

-- question 5
SELECT first_name, last_name, payment.payment_id
FROM staff
FULL JOIN payment
ON staff.staff_id = payment.payment_id
WHERE staff.staff_id IS NOT NULL
GROUP BY staff.staff_id, payment.payment_id;

-- question 6
SELECT rating, COUNT(rating) 
FROM film 
GROUP BY rating 
ORDER BY COUNT(rating);

-- question 7
SELECT customer_id, amount
FROM payment
WHERE amount IN (
	SELECT amount
	FROM payment
	WHERE amount > 6.99	
);
-- GROUP BY customer_id, amount;

-- question 8
SELECT COUNT(amount)
FROM payment
WHERE amount = 0.00;





USE sakila;

/************************************************************************
1
What is the highest amount paid by a customer for a rental?
In the table payment from the database sakila there is a column called amount that contains the amount paid by a customer for a rental. Please select the correct amount:
************************************************************************/
SELECT
	MAX(amount)
FROM
	payment;


/************************************************************************
2
How many customers are in the customer table?
Take into consideration that there are no duplicates. Please select the correct option:
************************************************************************/
SELECT
	COUNT(customer_id)
FROM
	customer;

/************************************************************************
When was the first rental done?
************************************************************************/
SELECT
	DISTINCT(rental_date)
FROM
	rental
ORDER BY
	rental_date ASC
LIMIT
	1;

/************************************************************************
4
What was the total investment the business made to buy all the films?
************************************************************************/
SELECT
	SUM(replacement_cost)
FROM
	film;
/************************************************************************
5
What the highest customer id registered on each store?
************************************************************************/
SELECT
	store_id, MAX(customer_id)
FROM
	customer
GROUP BY
	store_id;

/************************************************************************
6
Retrieve the total amount of payments received by each employee
************************************************************************/
SELECT
	SUM(amount), staff_id
FROM
	payment
GROUP BY
	staff_id;

/************************************************************************
7
Retrieve the number of cities available for each country in the 'city' table
************************************************************************/
SELECT
	count(city_id), country_id
FROM
	city
GROUP BY
	country_id
ORDER BY
	country_id ASC
LIMIT 15;

/************************************************************************
8
When was the last rental of customer 350?
************************************************************************/
SELECT
	rental_date
FROM
	rental
WHERE
	customer_id = 350
ORDER BY
	rental_date DESC
LIMIT
	1;

/************************************************************************
9
How many actresses are called MARY?
************************************************************************/
SELECT
	COUNT(first_name)
FROM
	actor
WHERE
	first_name = 'Mary';
/************************************************************************
10
Basic Aggregations(Use WHERE, GROUP BY, ORDER BY)
************************************************************************/
SELECT
	COUNT(*), rating
FROM
	film
WHERE
	rental_rate > 3
GROUP BY
	rating
ORDER BY
	rating ASC;

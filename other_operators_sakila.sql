USE sakila;

/************************************************************************
1
Checking for null values.
Write a SQL query that selects the columns payment_id and customer_idfrom the table payment where the rental_id column is empty.
************************************************************************/
SELECT payment_id, customer_id
FROM payment
WHERE rental_id IS NULL;

/************************************************************************
2
Write a query where actors' first name start with JO
Write a SQL query that selects the columns last_name and actor_idfrom the table actor where the actors' first_name starts with JO.
************************************************************************/
SELECT last_name, actor_id
FROM actor
WHERE first_name LIKE 'JO%';

/************************************************************************
3
Retrieve films whose descriptions include the term 'Saga'
Write a SQL query that selects the column title from the table film_text where the description column includes the term Saga.
************************************************************************/
SELECT title
FROM film_text
WHERE description LIKE '%saga%';

/************************************************************************
4
Retrieve the names of all cities where the second letter is k
Write a SQL query that selects the column city from the table city where the second letter is k.
************************************************************************/
SELECT title
FROM film_text
WHERE description LIKE '%saga%';

/************************************************************************
5
Query first 10 Rentals on the Last 3 Days of May 2005
Write a SQL query that returns the rental_id, customer_id and return_date of the first 10 rentals on the last 3 days of May 2005 (29 May 2005, 30 May 2005 and 31 May 2005).
************************************************************************/
SELECT rental_id, customer_id, return_date
FROM rental
WHERE rental_date BETWEEN '2005-05-29' AND '2005-05-31'
ORDER BY rental_id
LIMIT 10;

/************************************************************************
6
Retrieve the titles and release years of films with IDs in the 90s
Write a SQL query that returns the title and release_year of all the films with film_id between 90 and 99.
************************************************************************/
SELECT title, release_year
FROM film
WHERE film_id BETWEEN 90 AND 99;

/************************************************************************
7
Customer Information Query for Specific Names
Write a SQL query that returns the first_name, last_name and email, ordering the last name alphabetically, of all the customers in which first_name is DORA, JAMES or MARTHA.
************************************************************************/
SELECT first_name, last_name, email
FROM customer
WHERE first_name IN ('DORA', 'JAMES', 'MARTHA')
ORDER BY last_name;
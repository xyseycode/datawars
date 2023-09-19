USE sakila;

/************************************************************************
1
What's the email of customer number 135?
Write a query that returns the email of the customer with customer_id equals to 135 from customer table in the sakila database.
************************************************************************/
SELECT email FROM customer
WHERE customer_id = 135;

/************************************************************************
2
What's the category which id is 8?
Write a query that returns the name of the category with category_id equals to 8 from category table in the sakila database.
************************************************************************/
SELECT name FROM category
WHERE category_id = 8;

/************************************************************************
3
What's the name of the employee number 2?
Write a query that returns the first name of the employee with staff_id equals to 2 from staff table in the sakila database.
************************************************************************/
SELECT first_name FROM staff
WHERE staff_id = 2;
/************************************************************************
4
Is there any other employee appart from Jon? If yes, what's his name?
Write a query that returns the first name of the employee that is not Jon from staff table in the sakila database and then select the correct answer:
************************************************************************/
SELECT first_name FROM staff
WHERE first_name != 'Jon';

/************************************************************************
5
Are there any movies which rental cost is higher than $5?
In the film table of the sakila database, are there any movies which rental cost is higher than $5? Please select the correct answer: NO
************************************************************************/
SELECT COUNT(*) FROM film
WHERE rental_rate > 5;

/************************************************************************
6
Are there any movies which were released before 2006?
In the film table of the sakila database, are there any movies which were released before 2006? Please select the correct answer: NO
************************************************************************/
SELECT COUNT(*) FROM film
WHERE release_year < 2006;

/************************************************************************
7
What is the id of the first rental of year 2006?
Table rental in the sakila database contains all the rentals that have been made in the store. What is the id of the first rental of year 2006? Please select the correct answer:
************************************************************************/
SELECT rental_id FROM rental
WHERE YEAR(rental_date) = 2006
ORDER BY rental_date ASC
LIMIT 1;


/************************************************************************
8
What's the name of the actor which last name is LOLLOBRIGIDA?
In the actor table of the sakila database, what's the name of the actor which last name is LOLLOBRIGIDA? Please select the correct answer:
************************************************************************/
SELECT first_name FROM actor
WHERE last_name = 'Lollobrigida';

/************************************************************************
9
Which is the first movie which replacement cost is equal or higher than $20, when ordered alphabetically?
In the film table of the sakila database, which is the first movie which replacement cost is equal or higher than $20, when ordered alphabetically? Please select the correct answer:
************************************************************************/
SELECT title FROM film
WHERE replacement_cost >= 20
ORDER BY title ASC
LIMIT 1;


/************************************************************************
10
What movie has a rental duration lower than 4 days and the lowest film id?
In the film table of the sakila database, what movie has a rental duration lower than 4 days and the lowest film id? Please select the correct answer:
************************************************************************/
SELECT title FROM film
WHERE rental_duration < 4
ORDER BY film_id ASC
LIMIT 1;

/************************************************************************
11
What's the rental rate of the shortest movie that is longer than 2 hours?
In the film table of the sakila database, what's the rental rate of the shortest movie that is longer than 2 hours? Please select the correct answer:
************************************************************************/
SELECT rental_rate FROM film
WHERE length > 120
ORDER BY length ASC
LIMIT 1;

/************************************************************************
12
Display the title and rental rate of all movies that have a rental rate of less than $1.50
Wite a SQL query that displays the title and rental rate of all movies that have a rental rate of less than $1.50 per day. Your results should look something like:
************************************************************************/
SELECT title, rental_rate FROM film
WHERE rental_rate < 1.5;


/************************************************************************
13
Display the title and length of all movies that have a length of more than 2 hours.
Wite a SQL query that displays the title and length of all movies that have a length of more than 2 hours. Your result should look something like:
************************************************************************/
SELECT title, length FROM film
WHERE length > 120;

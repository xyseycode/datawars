USE sakila;

/************************************************************************
1
What's the id of the actress Sandra Kilmer?
************************************************************************/
SELECT actor_id
FROM actor
WHERE first_name = 'sandra' AND last_name = 'kilmer';

/************************************************************************
2
What's the last name of the customer called Jamie who's registered in store 2?
************************************************************************/
SELECT last_name
FROM customer
WHERE first_name = 'Jamie' AND store_id = 2;

/************************************************************************
3
Are there any customer that don't have their last name filled in?
************************************************************************/
SELECT customer_id
FROM customer
WHERE last_name IS NULL;
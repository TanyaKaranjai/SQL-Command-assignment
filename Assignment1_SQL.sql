--Identify the primary keys and foreign keys in maven movies db. Discuss the differences
select table_name,column_name,constraint_name from information_schema.key_column_usage where 
constraint_name ='PRIMARY' or constraint_name like'fk%' AND table_schema='mavenmovies';
/*Primary Key:Uniqely identifies records in a table. The values in the primary key are unique and Not null Values.
Foreign Key: Establishes relationships between tables by referencing the primary key of another table.It can contain null values*/

--List all details of actors
select * from mavenmovies.actor;

--List all customer information from DB
select * from mavenmovies.customer;

--List different countries
select country from mavenmovies.country;

--Display all active customers
select * from mavenmovies.customer where active=1;

--List of all rental IDs for customer with ID 1
select * from mavenmovies.rental where customer_id=1

--Display all the films whose rental duration is greater than 5
select Title from mavenmovies.film where rental_duration>5;

--List the total number of films whose replacement cost is greater than $15 and less than $20
select count(title) from mavenmovies.film where replacement_cost between '16' and '19';

--Display the count of unique first names of actors
select count(distinct first_name) from mavenmovies.actor;

--Display the first 10 records from the customer table
select * from mavenmovies.customer limit 10;

--Display the first 3 records from the customer table whose first name starts with ‘b
select * from mavenmovies.customer where first_name like 'b%' limit 3;

--Display the names of the first 5 movies which are rated as ‘G’.
select title from mavenmovies.film where rating='G';

--Find all customers whose first name starts with "a"
select * from mavenmovies.customer where first_name like 'a%';

--Find all customers whose first name ends with "a"
select * from mavenmovies.customer where first_name like '%a';

--Display the list of first 4 cities which start and end with ‘a’
select * from mavenmovies.city where city like 'a%a' limit 4 

--Find all customers whose first name have "NI" in any position
select * from mavenmovies.customer where first_name like '%NI%' OR first_name like 'NI%' OR first_name like '%NI';

--Find all customers whose first name have "r" in the second position
select * from mavenmovies.customer where first_name like '_r%';

--Find all customers whose first name starts with "a" and are at least 5 characters in length.
select * from mavenmovies.customer where first_name like 'a%' and length(first_name) >=5;

--Find all customers whose first name starts with "a" and ends with "o".
select * from mavenmovies.customer where first_name like 'a%o';

--Get the films with pg and pg-13 rating using IN operator
select * from mavenmovies.film where rating in ('PG','PG-13')

--Get the films with length between 50 to 100 using between operator
select * from mavenmovies.film where length between '50' and '100';

--Get the top 50 actors using limit operator
select * from mavenmovies.actor limit 50;

--Get the distinct film ids from inventory table
select distinct(film_id) from mavenmovies.inventory


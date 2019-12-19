/*
The film table is a list of all films potentially in stock.

film_id (SMALLINT): A surrogate primary key used to uniquely identify each film in the table.
title (VARCHAR[255]): The title of the film.
release_year(VARCHAR[4]): The year in which the movie was released.
length(SMALLINT): The duration of the film, in minutes.
Give the table film, build the resulting table which has information of all films storing in database. 

Example
For the following table film
film_id	    title	            release_year	length
1	        ACADEMY DINOSAUR	2006	        86
2	        ACE GOLDFINGER	    2006	        48
3	        ADAPTATION HOLES	2006	        50
4	        AFFAIR PREJUDICE	2006	        117
5	        AFRICAN EGG	        2006	        130

the output should be
film_id	    title	            release_year	length
1	        ACADEMY DINOSAUR	2006	        86
2	        ACE GOLDFINGER	    2006	        48
3	        ADAPTATION HOLES	2006	        50
4	        AFFAIR PREJUDICE	2006	        117
5	        AFRICAN EGG	        2006	        130

Input/ Output
[execution time limit] 2 seconds 
[input] Data of the table: film
[output] The table should have 4 columns film_id ,title, release_year, length.
*/

SELECT
film_id ,title, release_year, length 
FROM
film;

/*
A database most often contains one or more tables.
Each table is identified by a name (e.g. "actor" or "film").
Tables contain records (rows) with data.

Below is a selection from the "actor" table:
The table above contains five records (one for each actor) and four columns (actor_id, first_name, last_name, last_update).

actor_id	first_name	last_name	    last_update
1	        PENELOPE	GUINESS	        2006-02-15 04:34:33
2	        NICK	    WAHLBERG	    2006-02-15 04:34:33
3	        ED	        CHASE	        2006-02-15 04:34:33
4	        JENNIFER	DAVIS	        2006-02-15 04:34:33
5	        JOHNNY	    LOLLOBRIGIDA	2006-02-15 04:34:33

Case Insensitivity
SQL is case insensitivity, meaning that it treats upper- and lower-case letters as the same letter.
Name of attributes, relations, aliases and so on are similarly case insensitive.

SQL Statements
Most of the actions you need to perform on a database are done with SQL statements.

The following SQL statement selects all the records in the actor table:

SELECT * FROM actor;
The FROM clause gives the relation or relations to which the query refers.
The SELECT clause tells which attributes of the tuples matching the condition are produced as part of the answer.
The * in this example indicates that the entire tuple is produced.
The result of the query is the relation consisting of all.
*/
/*
Add suitable content into ... to comment the lines of "Select all the columns of all the records in the syllabus table" and "This is a single-line comment" so that you can see all the record of the syllabus table.

Input/ Output
[execution time limit] 2 seconds
[input] Data of the table: syllabus
[output] All the record of table syllabus
*/

SELECT * FROM syllabus;

/*
SQL Comments
Comments are used to explain sections of SQL statements, or to prevent execution of SQL statements.

Single Line Comments
Single line comments start with --.
Any text between -- and the end of the line will be ignored (will not be executed).

The following example uses a single-line comment as an explanation:

--Select all:
SELECT FROM Customers;
The following example uses a single-line comment to ignore the end of a line:
SELECT FROM Customers -- WHERE City='Berlin';

The following example uses a single-line comment to ignore a statement:
--SELECT * FROM Customers;
SELECT FROM Products;

Multi-line Comments
Multi-line comments start with /* and end with */

/*
The table employees has a structrure like below:

emp_id(VARCHAR[7]): the unique id of employee
emp_name(VARCHAR[100]): name of employee
hire_date(VARCHAR[10]): the date that the employee was hired
salary(INT): the salary of employee
com(DECIMAL[7,2]): commission percentage
This month, there are many new employees joining your company, so your job is INSERT there data into the employees table.
The list below is information that HR department give to you:

The new employee's name is Harry, his employee's ID is SE20001.
    He started working for Star company from 2017-01-01.
    HR department offered him 2000$ and for them, his commission percentage is about 0.03.
The new employee's name is Hermione, his employee's ID is SE20002.
    He started working for Star company from 2018-01-01.
    HR department offered him 2000.55$ and for them, his commission percentage is about 0.04.
The new employee's name is Ron, his employee's ID is SE20003.
    He started working for Star company from 2017-02-01.
    HR department offered him 3000$ and for them, his commission percentage is about 0.03.
The new employee's name is Gimmy, his employee's ID is SE20004.
    He started working for Star company from 2019-01-03.
    HR department offered him 3000$ and for them, his commission percentage is about 0.03.

Input/ Output
[Execution time limit] :2s.
[Input] : Data of table employees.
[Output] : Insert the information of new employees to the table employees.
*/

INSERT INTO employees
    (emp_id, emp_name, hire_date, salary, com)
VALUES
    ('SE20001', 'Harry', '2017-01-01', 2000, 0.03);
INSERT INTO employees
    (emp_id, emp_name, hire_date, salary, com)
VALUES
    ('SE20002', 'Hermione', '2018-01-01', 2000.55, 0.04);
INSERT INTO employees
    (emp_id, emp_name, hire_date, salary, com)
VALUES
    ('SE20003', 'Ron', '2017-02-01', 3000.00, 0.03);
INSERT INTO employees
    (emp_id, emp_name, hire_date, salary, com)
VALUES
    ('SE20004', 'Gimmy', '2019-01-03', 3000.00, 0.03);

/*
When you create a new table, it does not have any data.
The first thing you often do is to insert new rows into the table.
PostgreSQL provides the INSERT statement that allows you to insert one or more rows into a table at a time.

PostgreSQL INSERT syntax
The following illustrates the syntax of the INSERT statement:

INSERT INTO table(column1, column2, …)
VALUES
   (value1, value2, …);

First, you specify the name of the table that you want to insert a new row after the INSERT INTO clause, followed by a comma-separated column list.

Second, you list a comma-separated value list after the VALUES clause. The value list must be in the same order as the columns list specified after the table name.

To add multiple rows into a table at a time, you use the following syntax:

INSERT INTO table (column1, column2, …)
VALUES
   (value1, value2, …),
   (value1, value2, …) ,...;

You just need to add additional comma-separated value lists after the first list, each value in the list is separated by a comma (,).

To insert data that comes from another table, you use the INSERT INTO SELECT statement as follows:

INSERT INTO table(column1,column2,...)
SELECT column1,column2,...
FROM another_table
WHERE condition;

The WHERE clause is used to filter rows that allow you to insert partial data from the another_table into the table.

PostgreSQL insert one-row examples
The following statement inserts a new row into the linktable:

INSERT INTO link (id, url, name,description, rel)
VALUES
   ('1','http://www.postgresqltutorial.com','PostgreSQL Tutorial',NULL,NULL);

To insert character data, you must enclose it in single quotes (‘) for example 'PostgreSQL Tutorial'.
For the numeric data type, you don’t need to do so, just use plain numbers such as 1, 2, 3.

If you omit any column that accepts the NULLvalue in the INSERT statement, the column will take its default value.
In case the default value is not set for the column, the column will take the NULL value.

PostgreSQL provides a value for the serial column automatically so you do not and should not insert a value into the serial column.
*/
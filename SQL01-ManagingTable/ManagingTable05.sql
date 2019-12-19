/*
Your task is to create a new table containing these fields with the following conditions:

emp_id can be 4 digits long, with no decimal places. If any decimals are included in an INSERT statement, they will be rounded (up or down) to the nearest integer. 
emp_name can store any characters at all, up to 10 of them.
hire_date will accept any date, optionally with the time, but if a value is not provided, today's date will be entered.
salary intended for the employee's salary, will accept numeric values with up to 7 digits. If any digits over 7 are to the right of the decimal point, the will be rounded off.
comm (for commission percentage) has a default value of 0,03, will which will be entered if the INSERT statement does not include a value for this column.
Which one is the most appropriate answer?
*/

CREATE TABLE EMP
(emp_id INTEGER,
emp_name VARCHAR(10),
hire_date DATE DEFAULT CURRENT_DATE,
salary DECIMAL(7,2),
comm DECIMAL(7,2) DEFAULT 0.03);

/*
PostgreSQL CREATE TABLE syntax
To create a new table in PostgreSQL, you use the CREATE TABLE statement.

Let's examine the syntax of the CREATE TABLE statement in more detail.
First, you specify the name of the new table after the CREATE TABLE clause.
The TEMPORARY keyword is for creating a temporary table.
Next, you list the column name, its data type, and column constraint.
A table may have multiple columns separated by a comma (,).
The column constraint defines rules for the column e.g., NOT NULL.
Then, after the column list, you define a table-level constraint that defines rules for the data in the table.
After that, you specify an existing table from which the new table inherits.
It means the new table contains all columns of the existing table and the columns defined in the CREATE TABLE statement.
This is a PostgreSQL's extension to SQL.

PostgreSQL data types
    Boolean
    Character types such as char, varchar, and text.
    Numeric types such as integer and floating-point number.
    Temporal types such as date, time, timestamp, and interval
    UUID for storing Universally Unique Identifiers
    Array for storing array strings, numbers, etc.
    JSON stores JSON data
    hstore stores key-value pair
    Special types such as network address and geometric data.

PostgreSQL column constraints
The following are the commonly used column constraints in PostgreSQL:
    NOT NULL – the value of the column cannot be NULL.
    UNIQUE – the value of the column must be unique across the whole table.
        However, the column can have many NULL values because PostgreSQL treats each NULL value to be unique.
        Notice that SQL standard only allows one NULL value in the column that has the UNIQUE constraint.
    PRIMARY KEY – this constraint is the combination of NOT NULL and UNIQUE constraints.
        You can define one column as PRIMARY KEY by using column-level constraint.
        In case the primary key contains multiple columns, you must use the table-level constraint.
    CHECK – enables to check a condition when you insert or update data.
        For example, the values in the price column of the product table must be positive values.
    REFERENCES – constrains the value of the column that exists in a column in another table.
        You use REFERENCES to define the foreign key constraint.

PostgreSQL table constraints
The table constraints are similar to column constraints except that they are applied to the entire table rather than to an individual column.

The following are the table constraints:
    UNIQUE (column_list)– to force the value stored in the columns listed inside the parentheses to be unique.
    PRIMARY KEY(column_list) – to define the primary key that consists of multiple columns.
    CHECK (condition) – to check a condition when inserting or updating data.
    REFERENCES– to constrain the value stored in the column that must exist in a column in another table.
*/
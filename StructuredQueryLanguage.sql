--                                        -:Structured Query Language:-
--                                       ===============================

-- SQL is a standard language for accessing and manipulating databases.

-- What is SQL?

-- SQL stands for Structured Query Language
-- SQL lets you access and manipulate databases
-- SQL became a standard of the American National Standards Institute (ANSI) in 1986, and of the International Organization for Standardization (ISO) in 1987

-- What Can SQL do?

-- SQL can execute queries against a database.
-- SQL can retrieve data from a database.
-- SQL can insert records in a database.
-- SQL can update records in a database.
-- SQL can delete records from a database.
-- SQL can create new databases.
-- SQL can create new tables in a database.
-- SQL can create stored procedures in a database.
-- SQL can create views in a database.
-- SQL can set permissions on tables, procedures, and views.

-- Although SQL is an ANSI/ISO standard, there are different versions of the SQL language.
-- However, to be compliant with the ANSI standard, they all support at least the major commands 
-- such as SELECT, UPDATE, DELETE, INSERT, WHERE) in a similar manner.
-- Most of the SQL database programs also have their own proprietary extensions in addition to the SQL standard!

-- To build a web site that shows data from a database, you will need:-

-- An RDBMS database program (i.e. MS Access, SQL Server, MySQL).
-- To use a server-side scripting language, like PHP or ASP.
-- To use SQL to get the data you want.
-- To use HTML / CSS to style the page.

--                                                    -:RDBMS:-
--                                                   ===========

-- RDBMS stands for Relational Database Management System.
-- RDBMS is the basis for SQL, and for all modern database systems such as MS SQL Server, IBM DB2, Oracle, MySQL,
-- and Microsoft Access.
-- The data in RDBMS is stored in database objects called tables. A table is a collection of related data entries 
-- and it consists of columns and rows.

-- SQL keywords are NOT case sensitive: select is the same as SELECT
-- Some database systems require a semicolon at the end of each SQL statement.
-- Semicolon is the standard way to separate each SQL statement in database systems that allow more than one SQL statement to be executed in the same call to the server.
-- In this tutorial, we will use semicolon at the end of each SQL statement.

-- Some of The Most Important SQL Commands:-

-- SELECT - extracts/fetch/getting data from a database
-- UPDATE - updates data in a database
-- DELETE - deletes data from a database
-- INSERT INTO - inserts new data into a database
-- CREATE DATABASE - creates a new database
-- ALTER DATABASE - modifies a database
-- CREATE TABLE - creates a new table
-- ALTER TABLE - modifies a table
-- DROP TABLE - deletes a table
-- CREATE INDEX - creates an index (search key)
-- DROP INDEX - deletes an index

--                                          -:The SQL SELECT Statement:-
--                                          -----------------------------

-- The SELECT statement is used to select data from a database.
-- The data returned is stored in a result table, called the result-set.

-- SELECT Syntax:-
--                 SELECT column1, column2, ...
--                 FROM table_name;
-- Example:-
-- 			SELECT CustomerName, City FROM Customers;

-- Here, column1, column2, ... are the field names of the table you want to select data from. If you want to
-- select all the fields available in the table, use the following syntax:-

--                 SELECT * FROM table_name;
-- Example:-
--      SELECT * FROM Customers;

--                                             -:SQL SELECT Statement:-
--                                             -------------------------

-- The SELECT DISTINCT statement is used to return only distinct (different) values.
-- Inside a table, a column often contains many duplicate values and sometimes you only want to list the 
-- different (distinct) values.

-- SELECT DISTINCT Syntax:-
--                          SELECT DISTINCT column1, column2, ...
--                          FROM table_name;

-- SELECT Example Without DISTINCT:-
-- The following SQL statement selects all (including the duplicates) values from the "Country" column in the 
-- "Customers" table.

-- Example:-
--           SELECT Country FROM Customers;

-- SELECT DISTINCT Examples:-
-- The following SQL statement selects only the DISTINCT values from the "Country" column in the "Customers" table.

-- Example:-
--           SELECT DISTINCT Country FROM Customers;

-- The following SQL statement lists the number of different (distinct) customer countries:-
-- SELECT COUNT(DISTINCT Country) FROM Customers;

-- ***COUNT(DISTINCT column_name) is not supported in Microsoft Access databases.for ex:-firefox etc.

--                                              -:SQL WHERE Clause:-
--                                              ---------------------

-- The WHERE clause is used to filter records.
-- It is used to extract only those records that fulfill a specified condition.

-- WHERE Syntax:-
--                SELECT column1, column2, ...
--                FROM table_name
--                WHERE condition;

-- Note: The WHERE clause is not only used in SELECT statements, it is also used in UPDATE, DELETE, etc.!

-- Example:-
--          SELECT * FROM Customers
--          WHERE Country='Mexico';
-- Example:-
--          SELECT * FROM Customers
--          WHERE CustomerID=1;

--                                         -:Operators in The WHERE Clause;-
--                                         ----------------------------------

-- Operator	                                                  Description	

--  =	                                                         Equal	
--  >	                                                         Greater than	
--  <	                                                         Less than	
--  >=	                                                      Greater than or equal	
--  <=	                                                      Less than or equal	
--  <>	                                                      Not equal. Note: In some versions of SQL this operator 
--                                                             may be written as !=	
--  BETWEEN	                                                   Between a certain range	
--  LIKE	                                                      Search for a pattern	
--  IN	                                                      To specify multiple possible values for a column

--                                           -:SQL AND, OR and NOT Operators:-
--                                           ----------------------------------

-- The AND and OR operators are used to filter records based on more than one condition:

-- The AND operator displays a record if all the conditions separated by AND are TRUE.
-- The OR operator displays a record if any of the conditions separated by OR is TRUE.
-- The NOT operator displays a record if the condition(s) is NOT TRUE.

-- AND Syntax:-
--              SELECT column1, column2, ...
--              FROM table_name
--              WHERE condition1 AND condition2 AND condition3 ...;

-- OR Syntax:-
--             SELECT column1, column2, ...
--             FROM table_name
--             WHERE condition1 OR condition2 OR condition3 ...;

-- NOT Syntax:-
--              SELECT column1, column2, ...
--              FROM table_name
--              WHERE NOT condition;

-- AND Example:-
--              SELECT * FROM Customers
--              WHERE Country='Germany' AND City='Berlin';

-- OR Example:-
--             SELECT * FROM Customers
--             WHERE City='Berlin' OR City='München';

-- NOT Example:-
--              SELECT * FROM Customers
--              WHERE NOT Country='Germany';

-- Combining AND, OR and NOT:-
-- You can also combine the AND, OR and NOT operators.

-- Example:-
--         1. SELECT * FROM Customers
--            WHERE Country='Germany' AND (City='Berlin' OR City='München');
--         2. SELECT * FROM Customers
--            WHERE NOT Country='Germany' AND NOT Country='USA';

--                                             -:SQL ORDER BY Keyword:-
--                                             -------------------------

-- The ORDER BY keyword is used to sort the result-set in ascending or descending order.
-- The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, 
-- use the DESC keyword.

-- ORDER BY Syntax:-
--                  SELECT column1, column2, ...
--                  FROM table_name
--                  ORDER BY column1, column2, ... ASC|DESC;

-- ORDER BY Example:-
--                Ascending Order:   SELECT * FROM Customers
--                                   ORDER BY Country;
--                Descending Order:   SELECT * FROM Customers
--                                   ORDER BY Country DESC;

-- The following SQL statement selects all customers from the "Customers" table, sorted by the "Country" and
-- the "CustomerName" column. This means that it orders by Country, but if some rows have the same Country, 
-- it orders them by CustomerName:

-- Example:-
--          SELECT * FROM Customers
--          ORDER BY Country, CustomerName;

-- The following SQL statement selects all customers from the "Customers" table, sorted ascending by the "Country" 
-- and descending by the "CustomerName" column:

-- Example:-
--          SELECT * FROM Customers
--          ORDER BY Country ASC, CustomerName DESC;

--                                           -:SQL INSERT INTO Statement:-
--                                           ------------------------------

-- The INSERT INTO statement is used to insert new records in a table.

-- INSERT INTO Syntax:-
-- It is possible to write the INSERT INTO statement in two ways:

-- 1. Specify both the column names and the values to be inserted:

-- Syntax:-
--         INSERT INTO table_name (column1, column2, column3, ...)
--         VALUES (value1, value2, value3, ...);
-- Example:-
--          INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
--          VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

-- 2. If you are adding values for all the columns of the table, you do not need to specify the column names in 
-- the SQL query. However, make sure the order of the values is in the same order as the columns in the table. 
-- Here, the INSERT INTO syntax would be as follows:

-- Syntax:-
--         INSERT INTO table_name
--         VALUES (value1, value2, value3, ...);
--  Example:-
--          INSERT INTO Customers
--          VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

--                                               -:SQL NULL Values:-
--                                              ---------------------

-- A field with a NULL value is a field with no value.
-- If a field in a table is optional, it is possible to insert a new record or update a record without adding 
-- a value to this field. Then, the field will be saved with a NULL value.

-- Note: A NULL value is different from a zero value or a field that contains spaces. A field with a NULL value 
-- is one that has been left blank during record creation.

-- It is not possible to test for NULL values with comparison operators, such as =, <, or <>(not equal or !=).

-- We will have to use the IS NULL and IS NOT NULL operators instead:
-- {The IS NULL operator is used to test for empty values (NULL values).
-- The IS NOT NULL operator is used to test for non-empty values (NOT NULL values).}

-- IS NULL Syntax:-
--                 SELECT column_names
--                 FROM table_name
--                 WHERE column_name IS NULL;

-- IS NOT NULL Syntax:-
--                     SELECT column_names
--                     FROM table_name
--                     WHERE column_name IS NOT NULL;

--                                             -:SQL UPDATE Statement:-
--                                            --------------------------

-- The UPDATE statement is used to modify the existing records in a table.

-- UPDATE Syntax:-
--                UPDATE table_name
--                SET column1 = value1, column2 = value2, ...
--                WHERE condition;

-- Note: Be careful when updating records in a table! Notice the WHERE clause in the UPDATE statement. T
-- he WHERE clause specifies which record(s) that should be updated. If you omit the WHERE clause, 
-- all records in the table will be updated!

-- Example:-
-- Single Record:
--          UPDATE Customers
--          SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
--          WHERE CustomerID = 1;
-- Multiple Record:
--          UPDATE Customers
--          SET ContactName='Juan'
--          WHERE Country='Mexico';

-- Be careful when updating records. If you omit the WHERE clause, ALL records will be updated!

-- Example:-
--          UPDATE Customers
--          SET ContactName='Juan';
-- (On this Command ,All contact name will replaced by Jaun).

--                                            -:SQL DELETE Statement:-
--                                            ------------------------

-- The DELETE statement is used to delete existing records in a table.

-- DELETE Syntax:-
--                DELETE FROM table_name WHERE condition;

-- Note: Be careful when deleting records in a table! Notice the WHERE clause in the DELETE statement. 
-- The WHERE clause specifies which record(s) should be deleted. If you omit the WHERE clause, 
-- all records in the table will be deleted!

-- Example:-
--          DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';

-- Delete All Records Syntax:-
--                            DELETE FROM table_name;
-- Example:-
--          DELETE FROM Customers;

--                                -:SQL TOP, LIMIT, FETCH FIRST or ROWNUM Clause:-
--                               --------------------------------------------------

-- The SELECT TOP clause is used to specify the number of records to return.
-- The SELECT TOP clause is useful on large tables with thousands of records. Returning a large number of records 
-- can impact performance.

-- Note: Not all database systems support the SELECT TOP clause. MySQL supports the LIMIT clause to select a 
-- limited number of records, while Oracle uses FETCH FIRST n ROWS ONLY and ROWNUM.

-- SQL Server / MS Access Syntax:
--                             SELECT TOP number|percent column_name(s)
--                             FROM table_name
--                             WHERE condition;

-- MySQL Syntax:
--            SELECT column_name(s)
--            FROM table_name
--            WHERE condition
--            LIMIT number;

-- Oracle 12 Syntax:
--                SELECT column_name(s)
--                FROM table_name
--                ORDER BY column_name(s)
--                FETCH FIRST number ROWS ONLY;

-- Older Oracle Syntax:
--                   SELECT column_name(s)
--                   FROM table_name
--                   WHERE ROWNUM <= number;

-- Older Oracle Syntax (with ORDER BY):
--                                   SELECT *
--                                   FROM (SELECT column_name(s) FROM table_name ORDER BY column_name(s))
--                                   WHERE ROWNUM <= number;

-- SQL TOP, LIMIT and FETCH FIRST Examples:-

-- The following SQL statement selects the first three records from the "Customers" table (for SQL Server/MS Access):
-- Example:-
--         SELECT TOP 3 * FROM Customers;

-- The following SQL statement shows the equivalent example for MySQL:
-- Example:-
--         SELECT * FROM Customers
--         LIMIT 3;

-- The following SQL statement shows the equivalent example for Oracle:
-- Example:-
--         SELECT * FROM Customers
--         FETCH FIRST 3 ROWS ONLY;

-- SELECT TOP 50 PERCENT * FROM Customers;
-- SELECT * FROM Customers
-- FETCH FIRST 50 PERCENT ROWS ONLY;

-- -- SQL Server / MS Access:
-- SELECT TOP 3 * FROM Customers
-- WHERE Country='Germany';

-- -- MYSQL:
-- SELECT * FROM Customers
-- WHERE Country='Germany'
-- LIMIT 3;

-- -- ORACLE:
-- SELECT * FROM Customers
-- WHERE Country='Germany'
-- FETCH FIRST 3 ROWS ONLY;

--                                             -:SQL Math Functions:-
--                                             ----------------------

-- MAX():-
--        The MAX() function returns the largest value of the selected column.
-- MAX() Syntax:-
--               SELECT MAX(column_name)
--               FROM table_name
--               WHERE condition;
-- Example:-
--          SELECT MAX(Price) AS LargestPrice
--          FROM Products;

-- MIN():-
--        The MIN() function returns the smallest value of the selected column.
-- MIN() Syntax:-
--               SELECT MIN(column_name)
--               FROM table_name
--               WHERE condition;
-- Example:-
--           SELECT MIN(Price) AS SmallestPrice
--           FROM Products;

-- COUNT():-
--          The COUNT() function returns the number of rows that matches a specified criterion.
-- Note: NULL values are not counted.
-- COUNT() Syntax:-
--                 SELECT COUNT(column_name)
--                 FROM table_name
--                 WHERE condition;
-- Example:-
--           SELECT COUNT(ProductID)
--           FROM Products;

-- AVG():-
--        The AVG() function returns the average value of a numeric column. 
-- Note: NULL values are ignored.
-- AVG() Syntax:-
--               SELECT AVG(column_name)
--               FROM table_name
--               WHERE condition;
-- Example:-
--           SELECT AVG(Price)
--           FROM Products;

-- SUM():-
--        The SUM() function returns the total sum of a numeric column. 
-- Note: NULL values are ignored.
-- SUM() Syntax:-
--               SELECT SUM(column_name)
--               FROM table_name
--               WHERE condition;
-- Example:-
--          SELECT SUM(Quantity)
--          FROM OrderDetails;

--                                               -:SQL LIKE Operator:-
--                                               ----------------------

-- The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.

-- There are two wildcards often used in conjunction with the LIKE operator:
--  The percent sign (%) represents zero, one, or multiple characters
--  The underscore sign (_) represents one, single character
-- The percent sign and the underscore can also be used in combinations.

-- Note: MS Access uses an asterisk (*) instead of the percent sign (%), and a question mark (?) 
-- instead of the underscore (_).

-- LIKE Syntax:-
--              SELECT column1, column2, ...
--              FROM table_name
--              WHERE columnN LIKE pattern;

-- LIKE Operator	                        Description

-- WHERE CustomerName LIKE 'a%'	        Finds any values that start with "a"
-- WHERE CustomerName LIKE '%a'	        Finds any values that end with "a"
-- WHERE CustomerName LIKE '%or%'	     Finds any values that have "or" in any position
-- WHERE CustomerName LIKE '_r%'	        Finds any values that have "r" in the second position
-- WHERE CustomerName LIKE 'a_%'	        Finds any values that start with "a" and are at least 2 characters in length
-- WHERE CustomerName LIKE 'a__%'	     Finds any values that start with "a" and are at least 3 characters in length
-- WHERE ContactName LIKE 'a%o'	        Finds any values that start with "a" and ends with "o"

-- SQL LIKE Examples:-

-- SELECT * FROM Customers WHERE CustomerName LIKE 'a%';
-- SELECT * FROM Customers WHERE CustomerName LIKE '%a';
-- SELECT * FROM Customers WHERE CustomerName LIKE '%or%';
-- SELECT * FROM Customers WHERE CustomerName LIKE '_r%';
-- SELECT * FROM Customers WHERE CustomerName LIKE 'a_%';
-- SELECT * FROM Customers WHERE CustomerName LIKE 'a__%';
-- SELECT * FROM Customers WHERE ContactName LIKE 'a%o';

-- Symbol	     Description	                                           Example

-- %	         Represents zero or more characters	                    bl% finds bl, black, blue, and blob
-- _	         Represents a single character	                          h_t finds hot, hat, and hit
-- []	         Represents any single character within the brackets	  h[oa]t finds hot and hat, but not hit
-- ^	         Represents any character not in the brackets	           h[^oa]t finds hit, but not hot and hat
-- -	         Represents a range of characters	                       c[a-b]t finds cat and cbt

-- Example:-
--          SELECT * FROM Customers WHERE City LIKE 'ber%';
--          SELECT * FROM Customers WHERE City LIKE '%es%';
-- 			SELECT * FROM Customers WHERE City LIKE '_ondon';
--          SELECT * FROM Customers WHERE City LIKE 'L_n_on';
--          SELECT * FROM Customers WHERE City LIKE '[bsp]%';
-- 			SELECT * FROM Customers WHERE City LIKE '[a-c]%';
-- 			SELECT * FROM Customers WHERE City LIKE '[!bsp]%';
--          SELECT * FROM Customers WHERE City NOT LIKE '[bsp]%';

--                                             -:SQL IN Operator:-
--                                             -------------------

-- The IN operator allows you to specify multiple values in a WHERE clause.
-- The IN operator is a shorthand for multiple OR conditions.

-- IN Syntax:-
--          SELECT column_name(s) 
--          FROM table_name 
--          WHERE column_name IN (value1, value2, ...);
-- or:-
--    SELECT column_name(s) 
--    FROM table_name 
--    WHERE column_name IN (SELECT STATEMENT);

-- Example:-
--          SELECT * FROM Customers WHERE Country IN ('Germany', 'France', 'UK');
--          SELECT * FROM Customers WHERE Country IN (SELECT Country FROM Suppliers);

--                                             -:SQL NOT IN Operator:-
--                                             -----------------------
-- It is just opposite of in operator.

-- NOT IN Syntax:-
--          SELECT column_name(s) 
--          FROM table_name 
--          WHERE column_name NOT IN (value1, value2, ...);
-- Example:- 
--             SELECT * FROM Customers WHERE Country NOT IN ('Germany', 'France', 'UK');

--                                            -:SQL BETWEEN Operator:-
--                                            -------------------------

-- The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.
-- The BETWEEN operator is inclusive: begin and end values are included. 

-- BETWEEN Syntax:-
--                 SELECT column_name(s)
--                 FROM table_name
--                 WHERE column_name BETWEEN value1 AND value2;
-- Example:-
--          SELECT * FROM Products
--          WHERE Price BETWEEN 10 AND 20;


--                                           -:SQL NOT BETWEEN Operator:-
--                                           ----------------------------

-- It is just opposite of in operator.
-- To display the products outside the range.

-- NOT BETWEEN Syntax:-
--                     SELECT column_name(s)
--                     FROM table_name
--                     WHERE column_name NOT BETWEEN value1 AND value2;
-- Example:-
--          SELECT * FROM Products
--          WHERE Price NOT BETWEEN 10 AND 20;

-- BETWEEN with IN Example:-
--                          SELECT * FROM Products
--                          WHERE Price BETWEEN 10 AND 20
--                          AND CategoryID NOT IN (1,2,3);
-- 
-- Examples:-  
--           SELECT * FROM Products
--           WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
--           ORDER BY ProductName;
      
--           SELECT * FROM Products
--           WHERE ProductName BETWEEN "Carnarvon Tigers" AND "Chef Anton's Cajun Seasoning"
--           ORDER BY ProductName;
      
--           SELECT * FROM Products
--           WHERE ProductName NOT BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
--           ORDER BY ProductName;

-- BETWEEN Dates Example:-
--                        SELECT * FROM Orders
--                        WHERE OrderDate BETWEEN #07/01/1996# AND #07/31/1996#;
--                    or:-
--                        SELECT * FROM Orders
--                        WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';

--                                               -:SQL Aliases:-
--                                               ---------------

-- SQL aliases are used to give a temporary name to a table, or a column in a table.
-- Aliases are often used to make column names more readable.
-- An alias only exists for the duration of that query.
-- An alias is created with the AS keyword.

-- Aliases can be useful when:-

--    There are more than one table involved in a query.
--    Functions are used in the query.
--    Column names are big or not very readable.
--    Two or more columns are combined together.

-- Alias Table Syntax:-
--                     SELECT column_name(s)
--                     FROM table_name AS alias_name;
-- Alias Column Syntax:-
--                      SELECT column_name AS alias_name
--                      FROM table_name;

-- Alias for Columns Examples:-
--                            SELECT CustomerID AS ID, CustomerName AS Customer
--                            FROM Customers;

-- Note: It requires double quotation marks or square brackets if the alias name contains spaces.

-- Example:-
--          SELECT CustomerName AS Customer, ContactName AS [Contact Person]
--          FROM Customers;

-- The following SQL statement creates an alias named "Address" that combine four columns 
-- (Address, PostalCode, City and Country):-

--   SELECT CustomerName, Address + ', ' + PostalCode + ', ' + City + ', ' + Country AS Address
--   FROM Customers;

-- Alias for Tables Example:-
--                        SELECT o.OrderID, o.OrderDate, c.CustomerName
--                        FROM Customers AS c, Orders AS o
--                        WHERE c.CustomerName='Around the Horn' AND c.CustomerID=o.CustomerID;

-- Same as above, but without aliases:-
--                       SELECT Orders.OrderID, Orders.OrderDate, Customers.CustomerName
--                       FROM Customers, Orders
--                       WHERE Customers.CustomerName='Around the Horn' AND Customers.CustomerID=Orders.CustomerID;

--                                               -:SQL Joins:-
--                                               -------------

-- A JOIN clause is used to combine rows from two or more tables, based on a related column between them.

-- Different Types of SQL JOINs:-
-- (INNER) JOIN:     Returns records that have matching values in both tables.
-- LEFT (OUTER) JOIN:     Returns all records from the left table, and the matched records from the right table.
-- RIGHT (OUTER) JOIN:     Returns all records from the right table, and the matched records from the left table.
-- FULL (OUTER) JOIN:     Returns all records when there is a match in either left or right table.

--                                         -:SQL INNER JOIN Keyword:-
--                                         --------------------------

-- The INNER JOIN keyword selects records that have matching values in both tables.

-- Note:-    The INNER JOIN keyword selects all rows from both tables as long as there is a match between the columns. 
-- If there are records in the "Orders" table that do not have matches in "Customers", these orders will not be shown.

-- INNER JOIN Syntax:-
--                   SELECT column_name(s)
--                   FROM table1
--                   INNER JOIN table2
--                   ON table1.column_name = table2.column_name;
-- Example:-
--         SELECT Orders.OrderID, Customers.CustomerName
--         FROM Orders
--         INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

--  JOIN Three Tables:-
--                    SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
--                    FROM ((Orders INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
--                    INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID);

--                                         -:SQL LEFT JOIN Keyword:-
--                                         -------------------------

-- The LEFT JOIN keyword returns all records from the left table (table1), and the matching records from the right 
-- table (table2). 
-- The result is 0 records from the right side, if there is no match.

-- LEFT JOIN Syntax:-
--                   SELECT column_name(s)
--                   FROM table1
--                   LEFT JOIN table2
--                   ON table1.column_name = table2.column_name;

-- Example:-
--         SELECT Customers.CustomerName, Orders.OrderID
--         FROM Customers
--         LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
--         ORDER BY Customers.CustomerName;

-- Note: The LEFT JOIN keyword returns all records from the left table (Customers), even if there are no matches 
-- in the right table (Orders).

--                                         -:SQL RIGHT JOIN Keyword:-
--                                         --------------------------

-- The RIGHT JOIN keyword returns all records from the right table (table2), and the matching records from the left 
-- table (table1). 
-- The result is 0 records from the left side, if there is no match.

-- RIGHT JOIN Syntax:-
--                    SELECT column_name(s)
--                    FROM table1
--                    RIGHT JOIN table2
--                    ON table1.column_name = table2.column_name;

-- Note: In some databases RIGHT JOIN is called RIGHT OUTER JOIN.

-- Example:-
--          SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
--          FROM Orders
--          RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
--          ORDER BY Orders.OrderID;

-- Note: The RIGHT JOIN keyword returns all records from the right table (Employees), even if there are no matches 
-- in the left table (Orders).

--                                        -:SQL FULL OUTER JOIN Keyword:-
--                                        -------------------------------

-- The FULL OUTER JOIN keyword returns all records when there is a match in left (table1) or right (table2) table 
-- records.
-- Tip: FULL OUTER JOIN and FULL JOIN are the same.

-- FULL OUTER JOIN Syntax:-
--                        SELECT column_name(s)
--                        FROM table1
--                        FULL OUTER JOIN table2
--                        ON table1.column_name = table2.column_name
--                        WHERE condition;

-- Note: FULL OUTER JOIN can potentially return very large result-sets!

-- Example:-
--          SELECT Customers.CustomerName, Orders.OrderID
--          FROM Customers
--          FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
--          ORDER BY Customers.CustomerName;

-- Note:-   The FULL OUTER JOIN keyword returns all matching records from both tables whether the other table matches
--  or not. So, if there are rows in "Customers" that do not have matches in "Orders", or if there are rows in 
-- "Orders" that do not have matches in "Customers", those rows will be listed as well.

--                                         -:SQL SELF JOIN Keyword:-
--                                         -------------------------

-- A self join is a regular join, but the table is joined with itself.

-- Self Join Syntax:-
--                 SELECT column_name(s)
--                 FROM table1 T1, table1 T2
--                 WHERE condition;

-- T1 and T2 are different table aliases for the same table.

-- Example:-
--          SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
--          FROM Customers A, Customers B
--          WHERE A.CustomerID <> B.CustomerID
--          AND A.City = B.City
--          ORDER BY A.City;

--                                           -:SQL UNION Operator:-
--                                           ----------------------

-- The UNION operator is used to combine the result-set of two or more SELECT statements.
--   Every SELECT statement within UNION must have the same number of columns.
--   The columns must also have similar data types.
--   The columns in every SELECT statement must also be in the same order.

-- UNION Syntax:-
--              SELECT column_name(s) FROM table1
--              UNION
--              SELECT column_name(s) FROM table2;
-- Example:-
--          SELECT City FROM Customers
--          UNION
--          SELECT City FROM Suppliers
--          ORDER BY City;

-- The UNION operator selects only distinct values by default. To allow duplicate values, use UNION ALL:

-- UNION ALL Syntax:-
--                  SELECT column_name(s) FROM table1
--                  UNION ALL
--                  SELECT column_name(s) FROM table2;

-- Example:-
--          SELECT City FROM Customers
--          UNION ALL
--          SELECT City FROM Suppliers
--          ORDER BY City;

-- Note: The column names in the result-set are usually equal to the column names in the first SELECT statement.

-- SQL UNION With WHERE:-
-- Example:-
--          SELECT City, Country FROM Customers
--          WHERE Country='Germany'
--          UNION
--          SELECT City, Country FROM Suppliers
--          WHERE Country='Germany'
--          ORDER BY City;

-- SQL UNION All With WHERE:-
-- Example:-
--          SELECT City, Country FROM Customers
--          WHERE Country='Germany'
--          UNION ALL
--          SELECT City, Country FROM Suppliers
--          WHERE Country='Germany'
--          ORDER BY City;

-- Another UNION Example:-

-- SELECT 'Customer' AS Type, ContactName, City, Country
-- FROM Customers
-- UNION
-- SELECT 'Supplier', ContactName, City, Country
-- FROM Suppliers;

--                                             -:SQL GROUP BY Statement:-
--                                             --------------------------

-- The GROUP BY statement groups rows that have the same values into summary rows, like "find the number of 
-- customers in each country".

-- The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group 
-- the result-set by one or more columns.

-- GROUP BY Syntax:-
--                 SELECT column_name(s)
--                 FROM table_name
--                 WHERE condition
--                 GROUP BY column_name(s)
--                 ORDER BY column_name(s);
-- Example:-
--          SELECT COUNT(CustomerID), Country
--          FROM Customers
--          GROUP BY Country;

--          SELECT COUNT(CustomerID), Country
--          FROM Customers
--          GROUP BY Country
--          ORDER BY COUNT(CustomerID) DESC;

-- GROUP BY With JOIN Example:-

-- lists the number of orders sent by each shipper:-

--    SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders
--    LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
--    GROUP BY ShipperName;

--                                              -:SQL HAVING Clause:-
--                                              ----------------------

-- The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.
-- HAVING Syntax:-
--                SELECT column_name(s)
--                FROM table_name
--                WHERE condition
--                GROUP BY column_name(s)
--                HAVING condition
--                ORDER BY column_name(s);
-- Examples:-
--          SELECT COUNT(CustomerID), Country
--          FROM Customers
--          GROUP BY Country
--          HAVING COUNT(CustomerID) > 5

--          SELECT COUNT(CustomerID), Country
--          FROM Customers
--          GROUP BY Country
--          HAVING COUNT(CustomerID) > 5
--          ORDER BY COUNT(CustomerID) DESC;

--          SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
--          FROM (Orders
--          INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID)
--          GROUP BY LastName
--          HAVING COUNT(Orders.OrderID) > 10;

--          SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
--          FROM Orders
--          INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
--          WHERE LastName = 'Davolio' OR LastName = 'Fuller'
--          GROUP BY LastName
--          HAVING COUNT(Orders.OrderID) > 25;

--                                              -:SQL EXISTS Operator:-
--                                              -----------------------

-- The EXISTS operator is used to test for the existence of any record in a subquery.
-- The EXISTS operator returns TRUE if the subquery returns one or more records.

-- EXISTS Syntax:-
--                SELECT column_name(s)
--                FROM table_name
--                WHERE EXISTS
--                (SELECT column_name FROM table_name WHERE condition);
-- Example:-
--    SELECT SupplierName
--    FROM Suppliers
--    WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.supplierID AND Price < 20);

--    SELECT SupplierName
--    FROM Suppliers
--    WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.supplierID AND Price = 22);

--                                        -:SQL ANY and ALL Operators:-
--                                        -----------------------------

-- The ANY and ALL operators allow you to perform a comparison between a single column value and a range of 
-- other values.

-- The ANY operator:

-- returns a boolean value as a result
-- returns TRUE if ANY of the subquery values meet the condition
-- ANY means that the condition will be true if the operation is true for any of the values in the range.

-- ANY Syntax:-
--           SELECT column_name(s)
--           FROM table_name
--           WHERE column_name operator ANY
--             (SELECT column_name
--             FROM table_name
--             WHERE condition);

-- Note: The operator must be a standard comparison operator (=, <>, !=, >, >=, <, or <=).

-- The ALL operator:

-- returns a boolean value as a result
-- returns TRUE if ALL of the subquery values meet the condition
-- is used with SELECT, WHERE and HAVING statements
-- ALL means that the condition will be true only if the operation is true for all values in the range. 

-- SQL ANY Examples:-
--                   SELECT ProductName
--                   FROM Products
--                   WHERE ProductID = ANY
--                     (SELECT ProductID
--                     FROM OrderDetails
--                     WHERE Quantity = 10);

--                   SELECT ProductName
--                   FROM Products
--                   WHERE ProductID = ANY
--                     (SELECT ProductID
--                     FROM OrderDetails
--                     WHERE Quantity > 99);

--                   SELECT ProductName
--                   FROM Products
--                   WHERE ProductID = ANY
--                     (SELECT ProductID
--                     FROM OrderDetails
--                     WHERE Quantity > 1000);

-- SQL ALL Examples:-
--                   SELECT ALL ProductName
--                   FROM Products
--                   WHERE TRUE;

--                   SELECT ProductName
--                   FROM Products
--                   WHERE ProductID = ALL
--                     (SELECT ProductID
--                     FROM OrderDetails
--                     WHERE Quantity = 10);

--                                         -:SQL SELECT INTO Statement:-
--                                         -----------------------------

-- The SELECT INTO statement copies data from one table into a new table.

-- SELECT INTO Syntax:-

-- Copy all columns into a new table:

--    SELECT *
--    INTO newtable [IN externaldb]
--    FROM oldtable
--    WHERE condition;

-- Copy only some columns into a new table:

--    SELECT column1, column2, column3, ...
--    INTO newtable [IN externaldb]
--    FROM oldtable
--    WHERE condition;

-- The new table will be created with the column-names and types as defined in the old table. You can create new 
-- column names using the AS clause.

-- SQL SELECT INTO Examples:-

-- SELECT * INTO CustomersBackup2017
-- FROM Customers;

-- The following SQL statement uses the IN clause to copy the table into a new table in another database:-
-- SELECT * INTO CustomersBackup2017 IN 'Backup.mdb'
-- FROM Customers;

-- SELECT CustomerName, ContactName INTO CustomersBackup2017
-- FROM Customers;

-- SELECT * INTO CustomersGermany
-- FROM Customers
-- WHERE Country = 'Germany';

-- SELECT Customers.CustomerName, Orders.OrderID
-- INTO CustomersOrderBackup2017
-- FROM Customers
-- LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- Tip: SELECT INTO can also be used to create a new, empty table using the schema of another. Just add a WHERE
-- clause that causes the query to return no data:

-- SELECT * INTO newtable
-- FROM oldtable
-- WHERE 1 = 0;

--                                      -:SQL INSERT INTO SELECT Statement:-
--                                      ------------------------------------

-- The INSERT INTO SELECT statement copies data from one table and inserts it into another table.
-- The INSERT INTO SELECT statement requires that the data types in source and target tables matches.

-- Note: The existing records in the target table are unaffected.

-- INSERT INTO SELECT Syntax:-

-- Copy all columns from one table to another table:

--    INSERT INTO table2
--    SELECT * FROM table1
--    WHERE condition;

-- Copy only some columns from one table into another table:

--    INSERT INTO table2 (column1, column2, column3, ...)
--    SELECT column1, column2, column3, ...
--    FROM table1
--    WHERE condition;

-- SQL INSERT INTO SELECT Examples:-

-- INSERT INTO Customers (CustomerName, City, Country)
-- SELECT SupplierName, City, Country FROM Suppliers;

-- INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
-- SELECT SupplierName, ContactName, Address, City, PostalCode, Country FROM Suppliers;

-- INSERT INTO Customers (CustomerName, City, Country)
-- SELECT SupplierName, City, Country FROM Suppliers
-- WHERE Country='Germany';

--                                           -:SQL CASE Statement:-
--                                           ----------------------

-- The CASE statement goes through conditions and returns a value when the first condition is met (like an 
-- if-then-else statement). So, once a condition is true, it will stop reading and return the result. 
-- If no conditions are true, it returns the value in the ELSE clause.
-- If there is no ELSE part and no conditions are true, it returns NULL.

-- CASE Syntax
-- CASE
--     WHEN condition1 THEN result1
--     WHEN condition2 THEN result2
--     WHEN conditionN THEN resultN
--     ELSE result
-- END;

-- SQL CASE Examples:-

--    SELECT OrderID, Quantity,
--    CASE
--        WHEN Quantity > 30 THEN 'The quantity is greater than 30'
--        WHEN Quantity = 30 THEN 'The quantity is 30'
--        ELSE 'The quantity is under 30'
--    END AS QuantityText
--    FROM OrderDetails;
   
--    SELECT CustomerName, City, Country
--    FROM Customers
--    ORDER BY
--    (CASE
--        WHEN City IS NULL THEN Country
--        ELSE City
--    END);

--                                               -:SQL Operators:-
--                                               -----------------


-- SQL Arithmetic Operators:-

-- Operator  Description	
--  +	       Add	
--  -	       Subtract	
--  *	       Multiply	
--  /	       Divide	
--  %	       Modulo	

-- SQL Bitwise Operators:-

-- Operator	 Description
--  &	       Bitwise AND
--  |	       Bitwise OR
--  ^	       Bitwise exclusive OR

-- SQL Comparison Operators:-

-- Operator	 Description	
--  =	       Equal to	
--  >	       Greater than	
--  <	       Less than	
--  >=	    Greater than or equal to	
--  <=	    Less than or equal to	
--  <>	    Not equal to	

-- SQL Compound Operators:-

-- Operator	 Description
--  +=	    Add equals
--  -=	    Subtract equals
--  *=	    Multiply equals
--  /=	    Divide equals
--  %=	    Modulo equals
--  &=	    Bitwise AND equals
--  ^-=	    Bitwise exclusive equals
--  |*=	    Bitwise OR equals

-- SQL Logical Operators:-

-- Operator	     Description
--  ALL	        TRUE if all of the subquery values meet the condition	
--  AND	        TRUE if all the conditions separated by AND is TRUE	
--  ANY	        TRUE if any of the subquery values meet the condition	
--  BETWEEN	     TRUE if the operand is within the range of comparisons	
--  EXISTS	     TRUE if the subquery returns one or more records	
--  IN	        TRUE if the operand is equal to one of a list of expressions	
--  LIKE	        TRUE if the operand matches a pattern	
--  NOT	        Displays a record if the condition(s) is NOT TRUE	
--  OR	        TRUE if any of the conditions separated by OR is TRUE	
--  SOME	        TRUE if any of the subquery values meet the condition


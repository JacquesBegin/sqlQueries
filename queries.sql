/* Used https://www.w3schools.com/sql as a reference for these queries */

/* A query to select data from a table */
SELECT column_names FROM table_name;

/* Select all data from a table */
SELECT * FROM table_name;

/* Select only different/distinct data from table */
SELECT DISTINCT column_names FROM table_name;

/* List the number of distinct entries in return-set */
SELECT COUNT(DISTINCT column_name) FROM table_name;
/* or */
/* SELECT COUNT(*) AS temp_name FROM (SELECT DISTINCT column_name FROM table_name); */

/* Filter selections using where clause with conditional (=, <, >, <=, >=, <>, BETWEEN, LIKE, IN) */
SELECT column_names FROM table_name WHERE column_name='string'; /* text value */
SELECT column_names FROM table_name WHERE column_name=1; /* numeric value */

/* SELECT WHERE using OPERATORS: AND, OR, NOT */
SELECT column_name FROM table_name WHERE column_name='string' AND column_name=1;
SELECT column_name FROM table_name WHERE column_name='string' OR column_name=1;
SELECT column_name FROM table_name WHERE NOT column_name='string';

/* Combine OPERATORS */
SELECT column_name FROM table_name WHERE column_name='string' AND (column_name=1 OR column_name='string');
SELECT column_name FROM table_name WHERE NOT column_name='string' AND NOT column_name=1;

/* Sort result-set by ascending(ASC)/descending(DESC) order. Default sort is ascending */
SELECT column_name FROM table_name ORDER BY column_name;
SELECT column_name FROM table_name ORDER BY column_name ASC;
SELECT column_name FROM table_name ORDER BY column_name DESC;

/* Sort by multiple columns, if there are matching values in the first sort then the second (or subsequent) field are sorted */
SELECT column_name FROM table_name ORDER BY column_name1, column_name2;

/* Insert data into database */
INSERT INTO table_name (column_name1, column_name2) VALUES (value1, value2);
INSERT INTO table_name VALUES (value1, value2, value3);

/* Working with NULL values */
SELECT column_names FROM table_name WHERE column_name IS NULL;
SELECT column_names FROM table_name WHERE column_name IS NOT NULL;

/* Update data in the database */
/* *** Omitting the WHERE clause will cause all records to be updated!!*** */
UPDATE table_name SET column_name1 = value1, column_name2 = value2 WHERE condition="something";

/* Update multiple records using WHERE clause */
UPDATE table_name SET column_name = "value" WHERE column_name="value";

/* Delete data from the database */
/* *** Omitting the WHERE clause will cause all records to be deleted!!*** */
DELETE FROM table_name WHERE condition="something";

/* Delete all records from a database table */
DELETE FROM table_name;

/* Specify number of records in return-set */
/* For SQL Serve / MS Access Syntax */
/* SELECT TOP number|percent column_name FROM table_name WHERE condition="something"; */
SELECT TOP 10 column_name FROM table_name;
SELECT TOP 50 PERCENT column_name FROM table_name; 
SELECT TOP 10 column_name FROM table_name WHERE condition="something";
/* For MySQL Syntax */
/* SELECT column_name FROM table_name; */
/* SELECT column_name FROM table_name WHERE condition="something" LIMIT number; */
/* For Oracle Syntax */
SELECT column_name FROM table_name;
SELECT column_name FROM table_name WHERE ROWNUM <= number;


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

/* Filter selections using where clause with a conditional (=, <, >, <>) */
SELECT column_names FROM table_name WHERE something='something';
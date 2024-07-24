-- STRING FUNCTION

SELECT LENGTH('skyfall');

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
;

SELECT first_name, LENGTH(first_name) 
FROM employee_demographics 
ORDER BY 2 -- order by length from the shortest name to the longest name
;

SELECT UPPER('sky');
SELECT LOWER('SKY');

SELECT first_name, UPPER(first_name)
FROM employee_demographics
;

SELECT last_name, LOWER(last_name)
FROM employee_demographics
;

SELECT TRIM('          Sky                   ');
SELECT RTRIM('             Sky                  ');
SELECT LTRIM('                    SKY                              ');

SELECT first_name, 
LEFT(first_name, 4) -- how many characters from the left handside do we want to select? We are selecting the first_name and we are going from the left 4 characters
FROM employee_demographics
;

SELECT first_name,
RIGHT(first_name, 4) 
FROM employee_demographics
;

SELECT first_name, 
SUBSTR(first_name, 3, 2) -- start from and end to the right
FROM employee_demographics
;

SELECT birth_date, 
SUBSTR(birth_date, 6, 2) AS birth_month
FROM employee_demographics
;

SELECT first_name, 
REPLACE(first_name, 'a', 'z') -- replace a secific character with a different character that you want
FROM employee_demographics
;

SELECT LOCATE('f', 'Kofi');

SELECT first_name, 
LOCATE('An', first_name) 
FROM employee_demographics
;

SELECT first_name, last_name,
CONCAT(first_name, ' ', last_name) full_name
FROM employee_demographics
;

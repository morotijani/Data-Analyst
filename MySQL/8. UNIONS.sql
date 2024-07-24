-- UNIONS (allows you to combine rows together from the same table or saperate tables)

SELECT first_name, last_name
FROM employee_demographics 
UNION -- BY default UNION is UNION DISTINCT (unique values)
SELECT first_name, last_name  
FROM employee_salary
;

SELECT first_name, last_name 
FROM employee_demographics 
UNION ALL
SELECT first_name, last_name 
FROM employee_salary
;

SELECT first_name, last_name, 'old Man' AS Label
FROM employee_demographics 
WHERE age > 50  AND gender = 'Male'
UNION 
SELECT first_name, last_name, 'old Lady' AS Label
FROM employee_demographics 
WHERE age > 40 AND gender = 'Female' 
UNION 
SELECT first_name, last_name, 'Highly Paid Employee' AS Label
FROM employee_salary
WHERE salary > 70000 
ORDER BY first_name, last_name
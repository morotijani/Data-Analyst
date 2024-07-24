-- LIMIT & ALIASING

SELECT * 
FROM parks_and_recreation.employee_demographics 
LIMIT 3 
;

SELECT * 
FROM parks_and_recreation.employee_demographics 
ORDER BY age DESC 
LIMIT 3
;

SELECT * 
FROM parks_and_recreation.employee_demographics 
ORDER BY age DESC 
LIMIT 2, 1 -- start at position 2 and take next row
;

-- ALIASING -- is a way to change the name of a column and can also be used in JOINS
SELECT gender , AVG(age) AS avg_age
FROM parks_and_recreation.employee_demographics 
GROUP BY gender 
HAVING avg_age > 40
;

SELECT gender, AVG(age) avg_age  -- you bring the AS or not will still run the same
FROM parks_and_recreation.employee_demographics 
GROUP BY gender 
HAVING avg_age > 40
;




-- GROUP BY --

SELECT * 
FROM parks_and_recreation.employee_demographics
;

SELECT gender
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;

SELECT gender, AVG(age) 
FROM parks_and_recreation.employee_demographics 
GROUP BY gender
;

SELECT occupation 
FROM parks_and_recreation.employee_salary 
GROUP BY occupation
;

SELECT occupation, salary 
FROM parks_and_recreation.employee_salary 
GROUP BY occupation, salary
;

SELECT gender, AVG(age), MAX(age), MIN(age) -- max shows the highest value with in each of the grouping
FROM parks_and_recreation.employee_demographics 
GROUP BY gender
;

SELECT gender, AVG(age), MAX(age), MIN(age) -- min shows the lowest value with in each of the grouping
FROM parks_and_recreation.employee_demographics 
GROUP BY gender
;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age) -- count, is going to count the actual rows within the age column 
FROM parks_and_recreation.employee_demographics 
GROUP BY gender
;

-- ORDER BY --
SELECT * 
FROM parks_and_recreation.employee_demographics
ORDER BY first_name -- by default it is in ascending order
;

SELECT * 
FROM parks_and_recreation.employee_demographics 
ORDER BY first_name ASC -- fetch result in ascending order
;

SELECT * 
FROM parks_and_recreation.employee_demographics 
ORDER BY first_name DESC -- fetch result in descending order
;

SELECT * 
FROM parks_and_recreation.employee_demographics 
ORDER BY gender
;

SELECT * 
FROM parks_and_recreation.employee_demographics 
ORDER BY gender, age -- order by age after ordering by gender
;

SELECT * 
FROM parks_and_recreation.employee_demographics 
ORDER BY gender, age DESC -- gender will be in ascending order and age will be in descending order
;

SELECT * 
FROM parks_and_recreation.employee_demographics 
ORDER BY 5, 4 DESC -- using column positionns, not recomemded
;

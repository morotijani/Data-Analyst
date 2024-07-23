-- WHERE Clause

SELECT * 
FROM parks_and_recreation.employee_salary 
WHERE first_name = 'Leslie'
;

SELECT * 
FROM parks_and_recreation.employee_salary 
WHERE salary <= 50000
;

SELECT * 
FROM parks_and_recreation.employee_demographics 
WHERE gender != 'Female'
;

SELECT * 
FROM parks_and_recreation.employee_demographics 
WHERE birth_date > '1985-01-01'
;

-- Logical Operators
-- AND OR NOT
SELECT * 
FROM parks_and_recreation.employee_demographics 
WHERE birth_date > '1985-01-01' 
AND gender = 'male'
;

SELECT * 
FROM parks_and_recreation.employee_demographics 
WHERE birth_date = '1985-01-01' 
OR gender = 'male'
;

SELECT * 
FROM parks_and_recreation.employee_demographics 
WHERE birth_date = '1985-01-01' 
OR NOT gender = 'male'
;

SELECT * 
FROM parks_and_recreation.employee_demographics 
WHERE  (first_name = 'Leslie' AND age = 44) OR age > 55
;

-- LIKE Statement
-- % (means anything) and _ (means a specific value)
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a%' -- anything that comes after the value "a"
;

SELECT * 
FROM parks_and_recreation.employee_demographics 
WHERE first_name LIKE '%a' -- anything that come before value "a"
;

SELECT * 
FROM parks_and_recreation.employee_demographics 
WHERE first_name LIKE '%a%' -- anything that come after and before value "a"
;

SELECT * 
FROM parks_and_recreation.employee_demographics 
WHERE first_name LIKE 'a__' -- start with value "a" and has two characters after no more no less
;

SELECT * 
FROM parks_and_recreation.employee_demographics 
WHERE first_name LIKE 'a___%' -- start with value "a" and has 3 characters and has anything after that
;

SELECT * 
FROM parks_and_recreation.employee_demographics 
WHERE birth_date lIKE '1989%'
;


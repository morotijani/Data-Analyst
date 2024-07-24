-- JOINS

SELECT * 
FROM employee_demographics
;

SELECT * 
FROM employee_salary
;

SELECT * 
FROM employee_demographics
INNER JOIN employee_salary -- by default JOIN represent INNER JOIN by to be specific we can use INNER JOIN 
	ON employee_demographics.employee_id = employee_salary.employee_id
;

SELECT * 
FROM employee_demographics AS dem 
JOIN employee_salary sal 
	ON dem.employee_id = sal.employee_id
;

SELECT dem.employee_id, age, occupation 
FROM employee_demographics AS dem 
INNER JOIN employee_salary AS sal 
	ON dem.employee_id = sal.employee_id
;

-- OUTER JOINS --
-- LEFT JOIN is going to take everything from the left table even if there is no matching to join and then it will only return the matches from the right table, 
SELECT * 
FROM employee_demographics dem 
LEFT JOIN employee_salary sal 
	ON dem.employee_id = sal.employee_id
;
-- RIGHT JOIN is going to take everything from the right table but only matches from the left table
SELECT * 
FROM employee_demographics dem 
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

-- SELF JOIN (is a join when you tag a table to itself)
SELECT * 
FROM employee_salary emp1 
JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id -- assigning to next id
;

SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS employee_name,
emp2.first_name AS first_name_emp,
emp2.last_name AS last_name_emp
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id
;

-- JOININING MULTIPLE TABLES TOGER
SELECT * 
FROM employee_demographics AS dem 
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments dep
	ON dep.department_id = sal.dept_id
;

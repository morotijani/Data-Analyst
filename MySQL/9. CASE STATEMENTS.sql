-- CASE STATEMENTS (allows you to add a logic in your select statement, sort of like "if, ifelse statements" )

SELECT first_name,
last_name,
age,
CASE 
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 AND 50 THEN 'Old'
    WHEN age >= 50 THEN "On Death's Door"
END AS Age_Bracket 
FROM employee_demographics
;

-- Practical example
-- Pay Increase and Bonus
-- < 5000 = 5%
-- > 5000 = 7%
-- Finace = 10% Bonus
SELECT first_name,
last_name,
salary,
CASE 
	WHEN salary < 50000 THEN salary + (salary * 0.05)
    WHEN salary > 50000 THEN salary + (salary * 0.07)
END 'New_Salary',
CASE
	WHEN dept_id = 6 THEN salary * 0.10
END AS 'Bonus'
FROM employee_salary
;
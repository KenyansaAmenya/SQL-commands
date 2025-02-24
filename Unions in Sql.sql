-- Unions (This allows you to combine rows of data from diffrent tables together)

SELECT first_name, last_name
FROM employee_demographics
UNION DISTINCT
SELECT first_name, last_name
FROM employee_demographics;

-- use case

SELECT first_name, last_name, 'Old' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION

SELECT first_name, last_name, 'Old' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION

SELECT first_name, last_name, 'Highly Paid Employee' AS Label
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name
;
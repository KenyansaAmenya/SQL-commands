-- Group By

SELECT *
FROM employee_demographics; 

SELECT gender, avg(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;

-- Order By (sort the result by either ascending or decending order)

SELECT *
FROM employee_demographics
ORDER BY gender, age
;

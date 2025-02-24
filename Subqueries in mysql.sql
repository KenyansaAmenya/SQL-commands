-- Subqueries (a querry whithin a querry)

SELECT * 
FROM employee_demographics
WHERE employee_id IN 
               ( SELECT employee_id
                       FROM employee_salary
                       WHERE dept_id = 1)

;

Select first_name, salary,
(SELECT AVG(salary)
FROM  employee_salary)
FROM employee_salary
;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age) 
FROM employee_demographics
GROUP BY gender;

SELECT gender, AVG(`MAX(age)`)
FROM 
(SELECT gender, 
AVG(age), 
MAX(age), 
MIN(age), 
COUNT(age) 
FROM employee_demographics
GROUP BY gender) AS Agg_table
GROUP BY gender;

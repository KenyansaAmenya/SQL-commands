-- WHERE Clause

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
;

-- AND OR NOT -- Logical Operators

SELECT *
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age  > 55 
;

-- Like Statement
-- % and _  (percent sign mean anything after or before, _ means a specific value)
SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1989%'
;
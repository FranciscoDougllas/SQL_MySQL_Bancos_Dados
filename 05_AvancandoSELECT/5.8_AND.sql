USE employees;

SELECT * FROM employees;

SELECT * FROM employees WHERE first_name = "Mary" AND last_name = "Patel";

SELECT * FROM employees 
    WHERE first_name = "Mary" AND last_name = "Patel" AND gender = "F";

SELECT * FROM salaries WHERE salary >= 155000 AND from_date >= "1990-01-01";
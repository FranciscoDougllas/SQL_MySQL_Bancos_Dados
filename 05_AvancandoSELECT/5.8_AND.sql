-- Usando o banco de dados employees
USE employees;

-- Selecionando todos os funcionários
SELECT * FROM employees;

-- Buscando funcionário específico: Mary Patel
SELECT * FROM employees WHERE first_name = "Mary" AND last_name = "Patel";

-- Buscando funcionária específica: Mary Patel do sexo feminino
SELECT * FROM employees 
    WHERE first_name = "Mary" AND last_name = "Patel" AND gender = "F";

-- Buscando salários altos (>= 155000) a partir de 1990
SELECT * FROM salaries WHERE salary >= 155000 AND from_date >= "1990-01-01";
-- Seleciona o banco de dados 'employees' para garantir que as consultas sejam feitas nele
USE employees;

-- Seleciona todos os funcionários da tabela employees
SELECT * FROM employees;

-- Seleciona todos os títulos (titles) dos funcionários cujo número de empregado (emp_no) é maior ou igual a 11500
SELECT * FROM titles WHERE emp_no >= 11500;

-- Seleciona todos os títulos (titles) dos funcionários cujo número de empregado (emp_no) é menor ou igual a 11450
SELECT * FROM titles WHERE emp_no <= 11450;
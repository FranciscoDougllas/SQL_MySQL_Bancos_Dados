-- ========================================
-- FUNÇÃO COUNT() - CONTAGEM DE REGISTROS
-- ========================================

-- Seleciona o banco de dados employees
USE employees;

-- Visualiza todos os registros da tabela employees
SELECT * FROM employees;

-- Conta o total de registros na tabela employees
SELECT COUNT(*) FROM employees;

-- Conta registros não nulos da coluna first_name
SELECT COUNT(first_name) FROM employees;

-- Conta registros únicos da coluna first_name (sem duplicatas)
SELECT COUNT(DISTINCT first_name) FROM employees;

-- Conta funcionários com salário maior que 50000
SELECT COUNT(*) FROM salaries WHERE salary > 50000;

-- Conta quantos títulos diferentes existem
SELECT COUNT(DISTINCT title) FROM titles;

-- ========================================
-- FUNÇÃO SUM() - SOMA DE VALORES
-- ========================================

-- A função SUM() soma todos os valores em uma coluna
-- Exemplo: se temos salários 1000, 2000, 3000, a soma é 6000

-- Seleciona o banco de dados employees
USE employees;

-- Visualiza todos os registros da tabela salaries
SELECT * FROM salaries;

-- Soma todos os salários da tabela salaries
SELECT SUM(salary) FROM salaries;

-- Soma dos salários com nome mais claro
SELECT SUM(salary) AS total_salarios FROM salaries;

-- Soma apenas dos salários altos (> 50000)
SELECT SUM(salary) AS total_salarios_altos FROM salaries WHERE salary > 50000;


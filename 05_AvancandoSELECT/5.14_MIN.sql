-- ========================================
-- FUNÇÃO MIN() - VALOR MÍNIMO
-- ========================================

-- Seleciona o banco de dados employees
USE employees;

-- Visualiza todos os registros da tabela salaries
SELECT * FROM salaries;

-- Encontra o menor salário da tabela salaries
SELECT MIN(salary) FROM salaries;

-- Visualiza todos os registros da tabela titles
SELECT * FROM titles;

-- Encontra a data mais antiga (mínima) da coluna from_date na tabela titles
SELECT MIN(from_date) FROM titles;
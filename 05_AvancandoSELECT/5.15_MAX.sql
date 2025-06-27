-- ========================================
-- FUNÇÃO MAX() - VALOR MÁXIMO
-- ========================================

-- Seleciona o banco de dados employees
USE employees;

-- Visualiza todos os registros da tabela salaries
SELECT * FROM salaries;

-- Encontra o maior salário da tabela salaries
SELECT MAX(salary) FROM salaries;

-- Visualiza todos os registros da tabela titles
SELECT * FROM titles;

-- Encontra a data mais recente (máxima) da coluna from_date na tabela titles
SELECT MAX(from_date) FROM titles;
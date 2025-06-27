-- ========================================
-- OPERADOR IN - BUSCA COM MÚLTIPLOS VALORES
-- ========================================

-- O operador IN permite buscar registros que correspondem a qualquer valor de uma lista
-- É uma forma mais eficiente de escrever múltiplas condições OR

-- Seleciona o banco de dados employees
USE employees;

-- Visualiza todos os registros da tabela departments
SELECT * FROM departments;

-- Visualiza todos os registros da tabela employees
SELECT * FROM employees;

-- Busca funcionários com nomes específicos usando IN
SELECT * FROM employees WHERE first_name IN ('John', 'Mary', 'David');

-- Visualiza todos os registros da tabela titles
SELECT * FROM titles;

-- Busca títulos específicos usando IN
SELECT * FROM titles WHERE title IN('Engineer', 'Staff')

-- Visualiza todos os registros da tabela employees
SELECT * FROM employees;

-- Busca funcionários de departamentos específicos usando IN
SELECT * FROM dept_emp WHERE dept_no IN ('d001', 'd002', 'd003');

-- Visualiza todos os registros da tabela salaries
SELECT * FROM salaries;

-- Busca salários em faixas específicas usando IN
SELECT * FROM salaries WHERE salary IN (50000, 60000, 70000);


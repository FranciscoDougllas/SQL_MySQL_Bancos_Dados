-- ========================================
-- OPERADOR BETWEEN - BUSCA EM INTERVALOS
-- ========================================

-- O operador BETWEEN permite buscar registros dentro de um intervalo de valores
-- É uma forma mais clara de escrever condições como "valor >= minimo AND valor <= maximo"

-- Seleciona o banco de dados employees
USE employees;

-- Visualiza todos os registros da tabela dept_emp
SELECT * FROM dept_emp;

-- Busca funcionários de departamentos específicos usando BETWEEN
SELECT * FROM dept_emp WHERE dept_no BETWEEN 'd001' AND 'd003';

-- Busca funcionários de departamentos específicos usando NOT BETWEEN
SELECT * FROM dept_emp WHERE dept_no NOT BETWEEN 'd001' AND 'd003';


SELECT * FROM salaries WHERE salary BETWEEN 50000 AND 60000;
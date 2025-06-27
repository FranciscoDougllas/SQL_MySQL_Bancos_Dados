-- ========================================
-- FUNÇÃO AVG() - MÉDIA ARITMÉTICA
-- ========================================

-- A função AVG() calcula a média dos valores em uma coluna
-- Exemplo: se temos salários 1000, 2000, 3000, a média é 2000

-- Seleciona o banco de dados employees
USE employees;

-- Visualiza todos os registros da tabela salaries
SELECT * FROM salaries;

-- Calcula a média dos salários de todos os funcionários
SELECT AVG(salary) FROM salaries;

-- Calcula a média dos salários com nome mais claro
SELECT AVG(salary) AS media_salarios FROM salaries;

-- Calcula a média apenas dos salários altos (> 50000)
SELECT AVG(salary) AS media_salarios_altos FROM salaries WHERE salary > 50000;

-- Calcula a média dos salários por departamento
SELECT 
    d.dept_name,
    AVG(s.salary) AS media_salario_departamento
    FROM salaries s
    JOIN dept_emp de ON s.emp_no = de.emp_no
    JOIN departments d ON de.dept_no = d.dept_no
    GROUP BY d.dept_name;

-- Calcula a média dos salários por ano
SELECT 
    YEAR(from_date) AS ano,
        AVG(salary) AS media_salario_ano
    FROM salaries
    GROUP BY YEAR(from_date)
    ORDER BY ano;

-- Compara salário individual com a média geral
SELECT 
    emp_no,
    salary,
    (SELECT AVG(salary) FROM salaries) AS media_geral,
    salary - (SELECT AVG(salary) FROM salaries) AS diferenca_media
FROM salaries
LIMIT 10;

-- ========================================
-- DICAS IMPORTANTES
-- ========================================

-- Arredonda a média para 2 casas decimais
SELECT ROUND(AVG(salary), 2) AS media_salarios_arredondada FROM salaries;

-- Mostra apenas departamentos com média de salário > 50000
SELECT 
    dept_no,
    AVG(salary) AS media_salario
FROM salaries s
JOIN dept_emp de ON s.emp_no = de.emp_no
GROUP BY dept_no
HAVING AVG(salary) > 50000;

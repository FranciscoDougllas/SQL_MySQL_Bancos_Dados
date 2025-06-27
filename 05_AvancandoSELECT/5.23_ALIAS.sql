-- ========================================
-- ALIAS (AS) - Documentação e Explicação
-- ========================================
-- 
-- O ALIAS (AS) é usado para dar um nome temporário 
-- a uma coluna ou tabela em uma consulta SQL.
-- 
-- Sintaxe: SELECT coluna AS nome_alias FROM tabela
-- 
-- Benefícios:
-- 1. Melhora a legibilidade do resultado
-- 2. Permite nomes mais descritivos
-- 3. Evita conflitos de nomes
-- 4. Facilita a manutenção do código

use employees;

-- Exemplo 1: Consulta sem ALIAS
SELECT * FROM salaries;

-- Exemplo 2: Consulta com ALIAS para função agregada
-- SUM(salary) é renomeado para 'Total_Salario' no resultado
SELECT SUM(salary) AS Total_Salario FROM salaries;

-- Exemplo 3: ALIAS para colunas individuais
SELECT 
    emp_no AS 'Número_do_Empregado',
    salary AS 'Salário',
    from_date AS 'Data_Início'
FROM salaries 
LIMIT 5;

-- Exemplo 4: ALIAS para tabela
SELECT 
    s.emp_no,
    s.salary
FROM salaries AS s
LIMIT 3;
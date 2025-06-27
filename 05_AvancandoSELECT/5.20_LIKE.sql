-- ========================================
-- OPERADOR LIKE - BUSCA COM PADRÕES
-- ========================================

-- O operador LIKE permite buscar registros que correspondem a um padrão específico
-- Usa caracteres especiais como % (qualquer quantidade de caracteres) e _ (um caractere)
-- Usa-se em WHERE para filtrar registros

-- Seleciona o banco de dados employees
USE employees;

-- Visualiza todos os registros da tabela employees
SELECT * FROM employees;

-- Busca funcionários cujo nome começa com 'M'
-- % significa "qualquer quantidade de caracteres após"
SELECT * FROM employees WHERE first_name LIKE 'M%';

-- Busca funcionários cujo nome contém a letra 'a' em qualquer posição
-- % antes e depois significa "qualquer quantidade de caracteres antes e depois"
SELECT * FROM employees WHERE first_name LIKE '%a%';

-- Busca funcionários cujo nome tem 'a' na segunda posição
-- _ significa "exatamente um caractere"
SELECT * FROM employees WHERE first_name LIKE '_a%';

-- Busca funcionários cujo nome começa com 'M' ou 'A' e termina com 'a'
SELECT * FROM employees WHERE first_name LIKE 'M%a' OR first_name LIKE 'A%a';

-- Busca títulos que contêm 'Engineer' em qualquer posição
SELECT * FROM titles WHERE title LIKE '%Engineer%';

-- Busca títulos que começam com 'Senior' e terminam com 'Engineer'
SELECT * FROM titles WHERE title LIKE 'Senior%Engineer';


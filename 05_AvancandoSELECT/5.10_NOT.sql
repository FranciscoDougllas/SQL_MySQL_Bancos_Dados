-- Usando o banco de dados employees
USE employees;

-- Selecionando todos os funcionários
SELECT * FROM employees;

-- Buscando funcionários que NÃO são do sexo masculino (apenas femininos)
SELECT * FROM employees WHERE NOT gender = "M";

-- Buscando funcionários que NÃO são masculinos E NÃO são femininos
-- (excluindo ambos os gêneros principais)
SELECT * FROM employees WHERE NOT gender = "M" AND NOT gender = "F";

-- Buscando funcionários que NÃO são M, F ou N
-- (excluindo três tipos de gênero)
SELECT * FROM employees WHERE NOT gender = "M" AND NOT gender = "F" AND NOT gender = "N";

-- Buscando funcionários que NÃO são M, F, N ou O
-- (excluindo quatro tipos de gênero - provavelmente retornará 0 resultados)
SELECT * FROM employees 
    WHERE NOT gender = "M" 
    AND NOT gender = "F" 
    AND NOT gender = "N" AND NOT gender = "O";
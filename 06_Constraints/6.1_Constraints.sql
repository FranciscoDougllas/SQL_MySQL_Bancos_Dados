-- ========================================
-- CONSTRAINTS - Documentação e Explicação
-- ========================================
-- 
-- Constraints são regras aplicadas às colunas de uma tabela
-- para garantir a integridade e consistência dos dados.
-- 
-- Tipos principais de Constraints:
-- 1. NOT NULL - Não permite valores nulos
-- 2. UNIQUE - Garante valores únicos
-- 3. PRIMARY KEY - Chave primária (NOT NULL + UNIQUE)
-- 4. FOREIGN KEY - Chave estrangeira
-- 5. CHECK - Validação personalizada
-- 6. DEFAULT - Valor padrão
-- 7. INDEX - Melhora performance de consultas

use employees;

-- Exemplo 1: Verificando constraints existentes
-- Mostra todas as constraints da tabela employees
SELECT 
    CONSTRAINT_NAME,
    CONSTRAINT_TYPE,
    COLUMN_NAME
FROM information_schema.TABLE_CONSTRAINTS 
WHERE TABLE_SCHEMA = 'employees' 
AND TABLE_NAME = 'employees';

-- Exemplo 2: Verificando chaves primárias
-- Lista todas as chaves primárias do banco
SELECT 
    TABLE_NAME,
    COLUMN_NAME
FROM information_schema.KEY_COLUMN_USAGE 
WHERE CONSTRAINT_NAME = 'PRIMARY' 
AND TABLE_SCHEMA = 'employees';

-- Exemplo 3: Verificando chaves estrangeiras
-- Mostra relacionamentos entre tabelas
SELECT 
    TABLE_NAME,
    COLUMN_NAME,
    REFERENCED_TABLE_NAME,
    REFERENCED_COLUMN_NAME
FROM information_schema.KEY_COLUMN_USAGE 
WHERE REFERENCED_TABLE_NAME IS NOT NULL 
AND TABLE_SCHEMA = 'employees';

-- Exemplo 4: Verificando constraints NOT NULL
-- Lista colunas que não permitem valores nulos
SELECT 
    TABLE_NAME,
    COLUMN_NAME,
    IS_NULLABLE
FROM information_schema.COLUMNS 
WHERE IS_NULLABLE = 'NO' 
AND TABLE_SCHEMA = 'employees';

-- Exemplo 5: Verificando constraints UNIQUE
-- Mostra colunas com valores únicos
SELECT 
    TABLE_NAME,
    COLUMN_NAME,
    CONSTRAINT_NAME
FROM information_schema.KEY_COLUMN_USAGE 
WHERE CONSTRAINT_NAME LIKE '%UNIQUE%' 
AND TABLE_SCHEMA = 'employees';

-- Exemplo 6: Testando constraint NOT NULL
-- Tentativa de inserir valor nulo em coluna NOT NULL
-- (Este comando irá falhar se a constraint estiver ativa)
-- INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) 
-- VALUES (999999, NULL, 'João', 'Silva', 'M', '2023-01-01');

-- Exemplo 7: Testando constraint UNIQUE
-- Tentativa de inserir emp_no duplicado
-- (Este comando irá falhar se a constraint estiver ativa)
-- INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) 
-- VALUES (10001, '1990-01-01', 'João', 'Silva', 'M', '2023-01-01');

-- Exemplo 8: Verificando integridade referencial
-- Testa se existe empregado sem salário
SELECT 
    e.emp_no,
    e.first_name,
    e.last_name
FROM employees e
LEFT JOIN salaries s ON e.emp_no = s.emp_no
WHERE s.emp_no IS NULL;

-- Exemplo 9: Verificando constraints de domínio
-- Mostra tipos de dados e suas restrições
SELECT 
    TABLE_NAME,
    COLUMN_NAME,
    DATA_TYPE,
    IS_NULLABLE,
    COLUMN_DEFAULT
FROM information_schema.COLUMNS 
WHERE TABLE_SCHEMA = 'employees' 
AND TABLE_NAME = 'employees';

-- Exemplo 10: Criando tabela com constraints (demonstração)
-- CREATE TABLE exemplo_constraints (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     nome VARCHAR(50) NOT NULL,
--     email VARCHAR(100) UNIQUE NOT NULL,
--     idade INT CHECK (idade >= 18),
--     data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     status ENUM('ativo', 'inativo') DEFAULT 'ativo'
-- );


CREATE DATABASE constraints;
use constraints;
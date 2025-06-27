-- ========================================
-- FUNÇÕES EM SQL
-- ========================================

/*
As funções em SQL são operações predefinidas que realizam cálculos específicos
e retornam um valor único. Elas podem ser usadas em consultas SELECT, WHERE,
HAVING e outras cláusulas SQL.
*/

-- ========================================
-- 1. FUNÇÕES DE STRING (TEXTO)
-- ========================================

-- CONCAT: Concatena strings
SELECT CONCAT('Olá', ' ', 'Mundo') AS resultado;

-- UPPER: Converte para maiúsculas
SELECT UPPER('hello world') AS maiusculas;

-- LOWER: Converte para minúsculas
SELECT LOWER('HELLO WORLD') AS minusculas;

-- LENGTH: Retorna o comprimento da string
SELECT LENGTH('SQL é incrível') AS tamanho;

-- SUBSTRING: Extrai parte de uma string
SELECT SUBSTRING('Programação SQL', 1, 11) AS parte;

-- TRIM: Remove espaços em branco
SELECT TRIM('  SQL  ') AS limpo;

-- ========================================
-- 2. FUNÇÕES NUMÉRICAS
-- ========================================

-- ROUND: Arredonda um número
SELECT ROUND(3.14159, 2) AS arredondado;

-- CEIL: Arredonda para cima
SELECT CEIL(3.2) AS teto;

-- FLOOR: Arredonda para baixo
SELECT FLOOR(3.8) AS piso;

-- ABS: Valor absoluto
SELECT ABS(-15) AS absoluto;

-- POWER: Potenciação
SELECT POWER(2, 3) AS potencia;

-- SQRT: Raiz quadrada
SELECT SQRT(16) AS raiz;

-- ========================================
-- 3. FUNÇÕES DE DATA
-- ========================================

-- NOW: Data e hora atual
SELECT NOW() AS agora;

-- CURDATE: Data atual
SELECT CURDATE() AS hoje;

-- CURTIME: Hora atual
SELECT CURTIME() AS hora_atual;

-- YEAR: Extrai o ano
SELECT YEAR('2024-01-15') AS ano;

-- MONTH: Extrai o mês
SELECT MONTH('2024-01-15') AS mes;

-- DAY: Extrai o dia
SELECT DAY('2024-01-15') AS dia;

-- DATE_ADD: Adiciona intervalo à data
SELECT DATE_ADD('2024-01-15', INTERVAL 7 DAY) AS proxima_semana;

-- DATEDIFF: Diferença entre datas
SELECT DATEDIFF('2024-12-31', '2024-01-01') AS dias_restantes;

-- ========================================
-- 4. FUNÇÕES DE AGREGAÇÃO
-- ========================================

-- COUNT: Conta registros
-- SELECT COUNT(*) FROM tabela;

-- SUM: Soma valores
-- SELECT SUM(coluna) FROM tabela;

-- AVG: Média dos valores
-- SELECT AVG(coluna) FROM tabela;

-- MAX: Valor máximo
-- SELECT MAX(coluna) FROM tabela;

-- MIN: Valor mínimo
-- SELECT MIN(coluna) FROM tabela;

-- ========================================
-- 5. FUNÇÕES CONDICIONAIS
-- ========================================

-- IF: Condição simples
SELECT IF(10 > 5, 'Verdadeiro', 'Falso') AS resultado;

-- CASE: Condição múltipla
SELECT 
    CASE 
        WHEN 1 = 1 THEN 'Primeiro'
        WHEN 2 = 2 THEN 'Segundo'
        ELSE 'Padrão'
    END AS caso;

-- COALESCE: Retorna primeiro valor não nulo
SELECT COALESCE(NULL, NULL, 'Valor padrão') AS resultado;

-- NULLIF: Retorna NULL se valores forem iguais
SELECT NULLIF(5, 5) AS resultado;

-- ========================================
-- 6. EXEMPLOS PRÁTICOS
-- ========================================

-- Exemplo: Formatação de dados
SELECT 
    nome,
    UPPER(nome) AS nome_maiusculo,
    LENGTH(nome) AS tamanho_nome,
    CONCAT('Sr. ', nome) AS tratamento
FROM clientes;

-- Exemplo: Cálculos com datas
SELECT 
    data_nascimento,
    YEAR(data_nascimento) AS ano_nascimento,
    YEAR(NOW()) - YEAR(data_nascimento) AS idade_aproximada
FROM pessoas;

-- Exemplo: Formatação de valores monetários
SELECT 
    produto,
    preco,
    ROUND(preco * 1.1, 2) AS preco_com_taxa,
    CONCAT('R$ ', ROUND(preco, 2)) AS preco_formatado
FROM produtos;

-- ========================================
-- 7. DICAS IMPORTANTES
-- ========================================

/*
1. As funções podem ser aninhadas (uma dentro da outra)
2. Diferentes bancos de dados podem ter sintaxes ligeiramente diferentes
3. Sempre teste as funções antes de usar em produção
4. Use aliases (AS) para tornar os resultados mais legíveis
5. Algumas funções são específicas do banco de dados (MySQL, PostgreSQL, etc.)
*/

-- Exemplo de funções aninhadas
SELECT 
    UPPER(CONCAT(SUBSTRING('programação sql', 1, 11), ' é incrível!')) 
    AS resultado_complexo;

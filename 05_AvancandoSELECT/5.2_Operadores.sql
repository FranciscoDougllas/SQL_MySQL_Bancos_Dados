-- Operadores em SQL são utilizados para realizar comparações,
-- filtrar dados e construir condições nas consultas.
-- Alguns dos operadores mais comuns são BETWEEN, LIKE e IN.

-- BETWEEN: utilizado para filtrar valores dentro de um intervalo (inclusive os limites).
-- Exemplo: Selecionar clientes com idades entre 18 e 30 anos
SELECT * FROM clientes
WHERE idade BETWEEN 18 AND 30;

-- LIKE: utilizado para buscar padrões em colunas de texto.
-- O caractere % representa qualquer sequência de caracteres.
-- Exemplo: Selecionar clientes cujo nome começa com 'A'
SELECT * FROM clientes
WHERE nome LIKE 'A%';

-- IN: utilizado para verificar se um valor está presente em uma lista de valores.
-- Exemplo: Selecionar clientes que moram nas cidades 'São Paulo', 'Rio de Janeiro' ou 'Belo Horizonte'
SELECT * FROM clientes
WHERE cidade IN ('São Paulo', 'Rio de Janeiro', 'Belo Horizonte');

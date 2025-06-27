-- O comando UPDATE é usado para modificar dados existentes em uma tabela
-- A sintaxe básica é: UPDATE nome_tabela SET coluna = novo_valor WHERE condição

-- Exemplo 1: Atualizar o limite de uma pessoa específica
UPDATE pessoas SET limite = 7500 WHERE nome = "João Silva";

-- Exemplo 2: Atualizar múltiplas colunas de uma vez
UPDATE pessoas SET limite = 8000, rg = "7654321" WHERE nome = "João Silva";

-- Exemplo 3: Atualizar todos os registros que atendem a uma condição
UPDATE pessoas SET limite = limite + 1000 WHERE limite < 5000;

-- IMPORTANTE: Sempre use WHERE para evitar atualizar todos os registros da tabela
-- Se não usar WHERE, todos os registros serão atualizados!

-- Exemplo 4: Atualizar baseado em múltiplas condições
UPDATE pessoas SET limite = 10000 WHERE nome = "João Silva" AND cpf = "12345678901";

-- Verificar o resultado das atualizações
SELECT * FROM pessoas;

#CRUD - Create, Read, Update, Delete

/*
CRUD é um acrônimo que representa as quatro operações básicas que podem ser 
realizadas em um banco de dados:

1. CREATE (Criar) - Inserir novos registros
   - INSERT INTO tabela (colunas) VALUES (valores)

2. READ (Ler) - Consultar/visualizar dados
   - SELECT * FROM tabela
   - SELECT coluna1, coluna2 FROM tabela WHERE condição

3. UPDATE (Atualizar) - Modificar registros existentes
   - UPDATE tabela SET coluna = valor WHERE condição

4. DELETE (Excluir) - Remover registros
   - DELETE FROM tabela WHERE condição

Estas são as operações fundamentais para gerenciar dados em qualquer sistema 
de banco de dados relacional.
*/

-- Exemplos práticos de CRUD:

-- CREATE - Inserindo dados
INSERT INTO pessoas (nome, rg, cpf, limite) 
VALUES ('João Silva', '1234567', '12345678901', 5000);

-- READ - Consultando dados
SELECT * FROM pessoas;
SELECT nome, cpf FROM pessoas WHERE limite > 3000;

-- UPDATE - Atualizando dados
UPDATE pessoas SET limite = 6000 WHERE nome = 'João Silva';

-- DELETE - Removendo dados
DELETE FROM pessoas WHERE cpf = '12345678901';

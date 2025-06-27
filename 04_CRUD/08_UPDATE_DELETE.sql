-- O comando UPDATE é utilizado para atualizar dados existentes em uma tabela.
-- Por exemplo, para alterar o limite de uma pessoa com nome "João Silva":
-- UPDATE pessoas SET limite = 6000 WHERE nome = "João Silva";

-- O comando DELETE é utilizado para remover registros de uma tabela.
-- Por exemplo, para deletar a pessoa com nome "João Silva":
-- DELETE FROM pessoas WHERE nome = "João Silva";

-- Ambos os comandos podem (e devem) ser usados com a 
--cláusula WHERE para evitar alterações ou exclusões em todos os registros da tabela.

SELECT * FROM pessoas;

DELETE FROM pessoas WHERE nome = "Pedro";

SELECT * FROM pessoas;
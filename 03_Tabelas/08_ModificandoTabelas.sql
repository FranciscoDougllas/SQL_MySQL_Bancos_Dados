#Alterando Tabelas
USE tipo_texto;

-- CREATE TABLE funcionarios (nome VARCHAR(100));
-- ALTER TABLE funcionarios ADD COLUMN profissao VARCHAR(100);
-- INSERT INTO funcionarios(nome, profissao) VALUES("Miguel", "Pedreiro");
-- ALTER TABLE funcionarios ADD COLUMN cpf CHAR(11);
-- ALTER TABLE funcionarios ADD COLUMN ativo BOOL; 

INSERT INTO funcionarios(nome, profissao, cpf, ativo)
						VALUES("Pedro", "Analista", "12345678765", 1);
INSERT INTO funcionarios(nome, profissao, cpf, ativo)
						VALUES("Raul", "Analista", "44345678765", 0);
INSERT INTO funcionarios(nome, profissao, cpf, ativo)
						VALUES("Artu", "Analista", "23345678765", 1);
SELECT * FROM funcionarios;
#Criando um Banco de Dados Cadastro
-- CREATE DATABASE cadastro;
-- USE cadastro;

#Criando as Tabelas
/*CREATE TABLE pessoas(nome VARCHAR(100), rg VARCHAR(7), 
							cpf VARCHAR(11), limite INT(10));*/
							
#Inserindo Dados na Tabela
/*INSERT INTO pessoas(nome, rg ,cpf, limite)
						VALUES("Francisco", "2345675", "12345678651", 2523);*/
INSERT INTO pessoas(nome, rg ,cpf, limite)
						VALUES("Pedro", "2345675", "33345678651", 12523);
INSERT INTO pessoas(nome, rg ,cpf, limite)
						VALUES("Maria", "2345675", "44445678651", 7523);
SELECT * FROM pessoas;
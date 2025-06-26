#Tipos de Dados de Texto
/*CREATE DATABASE tipo_texto;*/
USE tipo_texto;

#VARCHAR, CHAR, MEDIUMTEXT
CREATE TABLE produtos(nome VARCHAR(50),
 					indentificador CHAR(5),
                    informacoes MEDIUMTEXT);
				
#Exercicio
CREATE TABLE pessoas(nome VARCHAR(100),
					sobrenome VARCHAR(100),
                    nomecompleto MEDIUMTEXT);
		
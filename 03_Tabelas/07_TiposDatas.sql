#TIpos de Dados
# Date, dato no Formato YYYY-MM-DD
# DATETIME, YYYY-MM-DD hh:mm:ss
# TIMESTAMP Aceita tudo de Datetime porem apenas de 1970 a 2038
USE tipo_texto;

-- Inserindo Tipos de Datas
/*CREATE TABLE aniversario(nome VARCHAR(100), data_nascimento DATE,
					hora_nascimento DATETIME);*/

INSERT INTO aniversario(nome, data_nascimento, hora_nascimento)
				VALUES("Miguel", "1990-02-11", "1990-02-11 12:30:00");
				
INSERT INTO aniversario(nome, data_nascimento, hora_nascimento)
				VALUES("Amanda", "2010-01-01", "2010-01-01 14:45:00");
SELECT * FROM aniversario;

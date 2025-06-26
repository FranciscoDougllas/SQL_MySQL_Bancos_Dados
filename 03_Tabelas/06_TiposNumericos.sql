# Os tipos Numericos são
# BIT 1 a 64 Caracteres
# TINYNT 1 a 255
# BOOL 0 e Falso e outros sao verdadeiros
# INT -214748 a 214748

/*CREATE TABLE servidores(nome VARCHAR(100),
								espaco_disco INT(100),
								espaco_restante INT(10),
								ligado BOOL);*/
#SELECT * FROM servidores;
# Inserindo dados na Tabela
/*INSERT INTO servidores(nome, espaco_disco, espaco_restante, ligado)
				VALUES("HD", 500, 20, 0);
INSERT INTO servidores(nome, espaco_disco, espaco_restante, ligado)
				VALUES("SDD", 500, 10, 1);
INSERT INTO servidores(nome, espaco_disco, espaco_restante, ligado)
				VALUES("SSDNVM2", 1000, 5, 2);*/

#Selecionando apenas uma tabela da Coluna
SELECT ligado FROM servidores;				

				
				
				
				
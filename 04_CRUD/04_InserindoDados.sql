# Inserindo dados
USE cadastro

INSERT INTO pessoas (nome, rg, cpf, limite) 
    VALUES ('João Silva', '1234567', '12345678901', 5000);

SELECT * FROM pessoas;
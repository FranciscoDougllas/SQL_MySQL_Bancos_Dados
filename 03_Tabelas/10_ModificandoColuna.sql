#Alterando uma Coluna
# ALTER TABLE <tabela> MODIFY COLUMN <coluna> <tipo>

-- ALTER TABLE funcionarios ADD COLUMN data_nascimento VARCHAR(100);
ALTER TABLE funcionarios MODIFY COLUMN data_nascimento DATE;
SELECT * FROM funcionarios;
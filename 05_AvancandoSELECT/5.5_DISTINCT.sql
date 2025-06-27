/*
DISTINCT - Remove Duplicatas

O DISTINCT é uma cláusula SQL que remove linhas duplicadas do resultado de uma consulta.
Ele é usado para obter valores únicos de uma ou mais colunas.

Sintaxe básica:
SELECT DISTINCT coluna1, coluna2, ...
FROM tabela;

Exemplos práticos:

1. Selecionar valores únicos de uma coluna:
SELECT DISTINCT cidade FROM clientes;

2. Selecionar combinações únicas de múltiplas colunas:
SELECT DISTINCT nome, cidade FROM clientes;

3. Combinar com outras cláusulas:
SELECT DISTINCT categoria 
FROM produtos 
WHERE preco > 100 
ORDER BY categoria;

4. Contar valores únicos:
SELECT COUNT(DISTINCT cidade) FROM clientes;

5. Usar com funções agregadas:
SELECT categoria, COUNT(DISTINCT fornecedor) 
FROM produtos 
GROUP BY categoria;

Observações importantes:
- DISTINCT considera NULL como um valor único
- Pode impactar a performance em grandes conjuntos de dados
- Funciona em todas as colunas selecionadas, não apenas na primeira
- Pode ser usado com funções agregadas como COUNT, SUM, AVG, etc.
*/

-- Exemplo prático com dados de exemplo
SELECT DISTINCT departamento FROM funcionarios;

-- Contar departamentos únicos
SELECT COUNT(DISTINCT departamento) as total_departamentos 
FROM funcionarios;

-- Combinação única de departamento e cargo
SELECT DISTINCT departamento, cargo 
FROM funcionarios 
ORDER BY departamento, cargo;

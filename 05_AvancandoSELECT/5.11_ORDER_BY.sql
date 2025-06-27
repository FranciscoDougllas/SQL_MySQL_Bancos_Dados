/*
ORDER BY em SQL

O ORDER BY é uma cláusula SQL utilizada para ordenar os 
resultados de uma consulta em ordem crescente (ASC) ou 
decrescente (DESC) com base em uma ou mais colunas especificadas.
*/
USE employees;

-- Ordenando os salários em ordem decrescente
SELECT * FROM salaries  ORDER BY salary DESC;

-- Ordenando os salários em ordem crescente
SELECT * FROM salaries  ORDER BY salary ASC;

-- Ordenando os títulos em ordem crescente
SELECT * FROM titles ORDER BY title ASC;
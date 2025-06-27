/*
LIMIT em SQL

O LIMIT é uma cláusula SQL utilizada para restringir o número de 
linhas retornadas por uma consulta, permitindo controlar a quantidade 
de resultados exibidos. É muito útil para paginação, visualização 
de amostras de dados ou quando você precisa apenas de um número específico de registros.
*/
USE employees;

SELECT * FROM salaries;

-- Ordenando os salários em ordem decrescente e limitando a 10 resultados
SELECT * FROM salaries  ORDER BY salary DESC LIMIT 10;

-- Ordenando os salários em ordem decrescente e limitando a 5 resultados a 
-- partir do 6º resultado
SELECT * FROM salaries ORDER BY salary DESC LIMIT 5 OFFSET 5;

-- Ordenando os funcionários pela data de nascimento em ordem decrescente 
-- e limitando a 10 resultados
SELECT * FROM employees ORDER BY birth_date DESC LIMIT 10;

-- Ordenando os títulos em ordem crescente e limitando a 5 resultados
SELECT * FROM titles  ORDER BY title ASC LIMIT 5;

-- Ordenando os títulos em ordem crescente e limitando a 5 resultados a 
-- partir do 6º resultado
SELECT * FROM titles  ORDER BY title ASC LIMIT 5 OFFSET 5;

-- Ordenando os títulos em ordem crescente e limitando a 5 resultados a 
-- partir do 6º resultado
SELECT * FROM titles  ORDER BY title ASC LIMIT 5 OFFSET 5;
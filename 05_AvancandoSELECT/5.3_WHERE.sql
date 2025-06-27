-- Seleciona o banco de dados 'employees' para garantir que as consultas sejam feitas nele.
USE employees;

-- Exemplo 1: Selecionando todos os funcionários cujo primeiro nome é "Mary".
-- O WHERE serve para filtrar apenas os registros que atendem à condição especificada.
SELECT * FROM employees WHERE first_name = "Mary";

-- Exemplo 2: Selecionando todos os funcionários cujo sobrenome é "Patel".
-- Assim, apenas os registros com last_name igual a "Patel" serão retornados.
SELECT * FROM employees WHERE last_name = "Patel";

-- Exemplo 3: Selecionando o funcionário com o número de empregado igual a 491008.
-- Útil para buscar informações de um funcionário específico.
SELECT * FROM employees WHERE emp_no = 491008;

-- Exemplo 4: Selecionando todos os salários menores ou iguais a 65.000.
-- O operador <= retorna todos os registros em que o salário é até 65.000.
SELECT * FROM salaries WHERE salary <= 65000;

SELECT * FROM salaries WHERE salary >= 75000;
-- Usando o banco de dados employees
USE employees;

-- Selecionando todos os títulos
SELECT * FROM titles;

-- Buscando títulos específicos usando OR (||)
-- Retorna registros onde o título é "Senior Engineer" OU "Staff"
SELECT * FROM titles 
    WHERE title = "Senior Engineer" || title = "Staff"
    ORDER BY emp_no DESC;
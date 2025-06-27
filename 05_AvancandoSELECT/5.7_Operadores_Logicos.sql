/*
Operadores Lógicos em SQL

Os operadores lógicos são utilizados para combinar condições em instruções SQL,
principalmente na cláusula WHERE. Eles permitem criar filtros mais complexos 
e precisos ao consultar dados em um banco de dados.

Principais operadores lógicos:

1. AND
   - Retorna verdadeiro se todas as condições forem verdadeiras.
   - Exemplo:
     SELECT * FROM funcionarios
     WHERE departamento = 'Vendas' AND salario > 3000;

2. OR
   - Retorna verdadeiro se pelo menos uma das condições for verdadeira.
   - Exemplo:
     SELECT * FROM funcionarios
     WHERE departamento = 'Vendas' OR departamento = 'Marketing';

3. NOT
   - Inverte o resultado de uma condição (verdadeiro para falso e vice-versa).
   - Exemplo:
     SELECT * FROM funcionarios
     WHERE NOT departamento = 'Vendas';

Combinação de operadores:
- É possível combinar AND, OR e NOT para criar condições ainda mais detalhadas.
- Use parênteses para definir a ordem de avaliação das condições.
- Exemplo:
    SELECT * FROM funcionarios
    WHERE (departamento = 'Vendas' OR departamento = 'Marketing')
      AND salario > 3000;

Resumo:
- AND: todas as condições devem ser verdadeiras
- OR: pelo menos uma condição deve ser verdadeira
- NOT: inverte o resultado da condição

Esses operadores são essenciais para filtrar dados de forma eficiente e 
precisa em consultas SQL.
*/

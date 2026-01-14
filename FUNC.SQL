-- Funções de Agregação

SELECT COUNT(*) Total
FROM Autor;

SELECT MAX(PrecoLivro) Total
FROM Livros;

SELECT MIN(NumeroPaginas)
FROM Livros

SELECT AVG(PrecoLivro) 'Preço Médio'
FROM Livros;

SELECT SUM(PrecoLivro) 'SOMA'
FROM Livros;

SELECT SUM(NumeroPaginas) 'SOMA'
FROM Livros

SELECT COUNT(*) Total
FROM Livros
WHERE PrecoLivro > 40.00;

SELECT NomeLivro, PrecoLivro
FROM Livros
WHERE PrecoLivro = (
	  SELECT MAX(PrecoLivro)
      FROM Livros
	  );
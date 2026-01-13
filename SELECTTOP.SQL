-- Restrição de Resultados: SELECT TOP
SELECT TOP (2) NomeLivro
FROM Livros
ORDER BY NomeLivro;

SELECT TOP (15) PERCENT NomeLivro
FROM Livros
ORDER BY NomeLivro;

SELECT TOP (2) NomeLivro
FROM Livros
ORDER BY NomeLivro DESC;

SELECT TOP (2) NomeLivro, PrecoLivro
FROM Livros
ORDER BY PrecoLivro DESC;

SELECT TOP (3) WITH TIES NomeLivro, IdAssunto
FROM Livros
ORDER BY IdAssunto DESC;
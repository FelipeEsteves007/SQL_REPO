-- Ordenação de Resultados em Consultas SQL

SELECT * FROM Livros
ORDER BY NomeLivro;

SELECT NomeLivro, IdEditora
FROM Livros
ORDER BY IdEditora;

SELECT NomeLivro, PrecoLivro
FROM Livros
ORDER BY PrecoLivro DESC;

SELECT NomeLivro, PrecoLivro, IdEditora
FROM Livros
ORDER BY IdEditora ASC, PrecoLivro DESC;


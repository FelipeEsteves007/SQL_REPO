-- Nomes alternativos 

SELECT NomeLivro AS Livro
FROM Livros;

SELECT NomeAutor AS NA, SobrenomeAutor AS SA
FROM Autor AS A;

SELECT TOP (3) NomeLivro AS 'Livros mais caros', PrecoLivro As 'Preço dos Livros'
FROM Livros
ORDER BY Pre
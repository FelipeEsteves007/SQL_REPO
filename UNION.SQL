-- Combinar Consultas 

SELECT NomeAutor Nome, 'Autor' AS Tipo FROM Autor
UNION
SELECT NomeEditora Nome, 'Editora' AS Tipo FROM Editora;

SELECT NomeLivro Nome, 'Livro' AS Tipo FROM Livros
UNION
SELECT NomeAssunto Assunto, 'Assunto' AS Tipo FROM Assunto

SELECT NomeAutor NOME, 'Autor' AS TIPO FROM Autor
UNION
SELECT NomeEditora Nome, 'Editora' AS Tipo FROM Editora
UNION
SELECT NomeAssunto Nome, 'Assunto' AS Tipo FROM Assunto
UNION
SELECT NomeLivro Nome, 'Livro' AS Tipo FROM Livros
ORDER BY Nome;
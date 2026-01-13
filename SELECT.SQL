-- Consultas simples

SELECT NomeLivro FROM Livros;

SELECT SobreNomeAutor FROM Autor;

SELECT * FROM Autor;

SELECT NomeLivro, PrecoLivro, ISBN13
FROM Livros;

-- Registros sem repetição
SELECT DISTINCT IdEditora
FROM Livros;

-- SELECT INTO : criar uma tabela com dados de outra
SELECT NomeLivro, ISBN13
INTO LivroISBN
FROM Livros;

SELECT * FROM LivroISBN;

DROP TABLE LivroISBN;

-- 1
SELECT NomeLivro, PrecoLivro, Datapub
FROM Livros;

-- 2
SELECT SobreNomeAutor 
FROM Autor;

-- 3 
SELECT NomeAssunto
FROM Assunto;

-- 4 
SELECT NomeEditora, IdEditora
FROM Editora;

-- 5
SELECT DISTINCT IdAssunto
FROM Livros;

-- 6
SELECT * 
INTO LivrosFiccao
FROM Livros 
WHERE IdAssunto = 1;

SELECT * FROM LivrosFiccao
DROP TABLE LivrosFiccao;
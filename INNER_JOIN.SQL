-- Joins

SELECT NomeLivro, NomeAssunto
FROM Livros
INNER JOIN Assunto
ON Livros.IdAssunto = Assunto.IdAssunto;

SELECT NomeLivro Livros, NomeEditora Editora
FROM Livros L
INNER JOIN Editora E
ON L.IdEditora = E.IdEditora
WHERE E.NomeEditora LIKE '%l'
ORDER BY L.NomeLivro;

SELECT 
	L.NomeLivro Livro, 
	A.NomeAutor Autor, 
	A.SobrenomeAutor Sobrenome, 
	E.NomeEditora Editora
FROM LivroAutor LA
INNER JOIN Autor A ON LA.IdAutor = A.IdAutor
INNER JOIN Livros L ON L.IdLivro = LA.IdLivro
INNER JOIN Editora E ON L.IdEditora = E.IdEditora
ORDER BY Livro;

-- 1
SELECT 
	L.NomeLivro Livro,
	A.NomeAssunto Assunto
FROM Livros L
INNER JOIN Assunto A ON L.IdAssunto = A.IdAssunto;

-- 2
SELECT
	AU.NomeAutor Autor,
	AU.SobrenomeAutor Sobrenome,
	L.NomeLivro Livro,
	A.NomeAssunto Assunto
FROM Autor AU
INNER JOIN LivroAutor LA ON AU.IdAutor = LA.IdAutor
INNER JOIN Livros L ON LA.IdLivro = L.IdLivro
INNER JOIN Assunto A ON L.IdAssunto = A.IdAssunto;
	
-- 3
SELECT 
	L.NomeLivro Livro,
	L.PrecoLivro Preço,
	E.NomeEditora Editora,
	A.NomeAssunto Assunto
FROM Livros L 
INNER JOIN Editora E ON E.IdEditora = L.IdEditora
INNER JOIN Assunto A ON L.IdAssunto = A.IdAssunto
ORDER BY Livro;

-- 4
SELECT 
	L.NomeLivro Livro,
	L.DataPub 'Data',
	AU.SobrenomeAutor 'Autor k'
FROM Livros L
INNER JOIN LivroAutor LA ON LA.IdLivro = L.IdLivro
INNER JOIN Autor AU ON LA.IdAutor = AU.IdAutor
WHERE AU.SobrenomeAutor LIKE 'k%';

-- 5
SELECT 
	A.NomeAssunto Assunto,
	AU.SobrenomeAutor Sobrenome,
	L.PrecoLivro 'Preço acima de $80.00'
FROM Livros L
INNER JOIN Assunto A ON L.IdAssunto = A.IdAssunto
INNER JOIN LivroAutor LA ON L.IdLivro = LA.IdLivro
INNER JOIN Autor AU ON LA.IdAutor = AU.IdAutor
WHERE L.PrecoLivro > 80.00;

-- 6
SELECT
	L.NomeLivro Livro,
	L.PrecoLivro Preço,
	A.NomeAssunto Assunto
FROM Livros L
INNER JOIN Assunto A ON L.IdAssunto = A.IdAssunto
WHERE L.PrecoLivro BETWEEN 70.00 AND 170.00
ORDER BY L.PrecoLivro DESC;
-- Subconsultas

SELECT NomeLivro, IdEditora
FROM Livros
WHERE IdEditora = (
	SELECT IdEditora
	FROM Editora
	WHERE NomeEditora = 'Arqueiro'
)
ORDER BY NomeLivro; 

SELECT NomeEditora
FROM Editora
WHERE IdEditora IN (
	SELECT IdEditora
	FROM Livros
	WHERE IdAssunto IN (1,2,3)
)
ORDER BY NomeEditora;

SELECT L.NomeLivro, L.PrecoLivro
FROM Livros L,
	(SELECT AVG(PrecoLivro) AS MediaPreco FROM Livros) AS Subconsulta
WHERE L.PrecoLivro > Subconsulta.MediaPreco

-- 1
SELECT L.NomeLivro
FROM Livros L
WHERE IdEditora IN (
	SELECT E.IdEditora
	FROM Editora E
	WHERE E.NomeEditora IN ('NovaTec', 'Prentice Hall')
);	

-- 2
SELECT L.PrecoLivro, L.NomeLivro
FROM Livros L
WHERE L.PrecoLivro < (
	SELECT AVG(PrecoLivro) FROM Livros);

-- 3

SELECT E.NomeEditora
FROM Editora E
WHERE E.IdEditora NOT IN (
	SELECT DISTINCT IdEditora
	FROM Livros
	WHERE IdEditora IS NOT NULL
);

-- 4
SELECT E.NomeEditora
FROM Editora E
WHERE E.IdEditora IN (
	SELECT idEditora
	FROM Livros
	WHERE  IdAssunto = (
		SELECT IdAssunto
		FROM Assunto
		WHERE NomeAssunto = 'Terror'
	)
)
ORDER BY NomeEditora;

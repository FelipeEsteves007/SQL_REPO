-- Filtrar Resultados de Consultas com WHERE

SELECT NomeLivro, DataPub
FROM Livros
WHERE IdEditora = 1;

SELECT idAutor, NomeAutor
FROM Autor
WHERE SobrenomeAutor = 'King'

SELECT NomeLivro, PrecoLivro
FROM Livros
WHERE PrecoLivro > 100.00
ORDER BY PrecoLivro ASC;

-- 1
SELECT NomeLivro, DataPub, IdEditora
FROM Livros
WHERE IdEditora IN (
	SELECT IdEditora
	FROM Editora
	WHERE NomeEditora = 'Prentice Hall'
)
ORDER BY NomeLivro;
-- Views (Exibição)
CREATE OR ALTER VIEW vwLivroPreco AS
	SELECT TOP 5 NomeLivro, PrecoLivro
	FROM Livros
	ORDER BY PrecoLivro;

SELECT * FROM vwLivroPreco

EXEC sp_helptext vwLivroPreco; 
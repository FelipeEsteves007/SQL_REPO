-- Atualizar Registros

SELECT IdLivro,NomeLivro, PrecoLivro, NumeroPaginas
FROM Livros;

UPDATE Livros
SET NomeLivro = 'A arte da guerra'
WHERE IdLivro = 101;

UPDATE Livros
Set PrecoLivro = 190.00
Where IdLivro = 101;

UPDATE Livros
Set PrecoLivro = PrecoLivro * 1.1
Where IdLivro = 104;

UPDATE Livros
Set PrecoLivro = PrecoLivro * 0.8
Where IdLivro = 101;

UPDATE Livros
Set PrecoLivro = 110.00, NumeroPaginas = 1000
WHERE IdLivro = 101;
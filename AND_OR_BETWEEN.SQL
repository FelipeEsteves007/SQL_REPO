-- Filtros combinados 

SELECT * FROM Livros
WHERE IdLivro > 102 AND IdEditora > 2;

SELECT * FROM Livros
WHERE IdLivro > 102 AND IdLivro < 104;

SELECT * FROM Livros
WHERE IdLivro > 100 AND IdEditora < 6;

SELECT * FROM Livros
WHERE IdLivro > 101 OR IdEditora < 3;

SELECT * FROM Livros
WHERE IdLivro > 103 OR NOT IdEditora < 3;

-- Seleção de intervalos

SELECT * FROM Livros
WHERE DataPub BETWEEN '20131015' AND '20140724'

SELECT * FROM Livros 
WHERE PrecoLivro BETWEEN 50.00 AND 100.00;

SELECT NomeLivro, DataPub, PrecoLivro
FROM Livros
WHERE PrecoLivro >= 50.00
AND DataPub BETWEEN '20131015' AND '20140724'
OR DataPub BETWEEN '20141101' AND '20170308'
ORDER BY PrecoLivro DESC;
-- Cláusula LIKE

SELECT * FROM Livros
WHERE NomeLivro LIKE 'F%';

SELECT NomeAutor 
FROM Autor
WHERE NomeAutor NOT LIKE 'S%';

SELECT * FROM Livros
WHERE NomeLivro LIKE '[IF]%';

SELECT * FROM Livros
WHERE NomeLivro LIKE '[^I^F]%';

SELECT * FROM Livros
WHERE NomeLivro LIKE '%[aeiou]';

SELECT NomeLivro FROM Livros
WHERE NomeLivro LIKE 'A%a';

SELECT NomeAutor, SobrenomeAutor FROM Autor
WHERE NomeAutor LIKE 'S%' AND SobrenomeAutor LIKE 'K%';

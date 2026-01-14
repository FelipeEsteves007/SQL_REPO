-- OUTER JOINS

SELECT * 
FROM Editora E
LEFT JOIN Livros L
ON L.IdEditora = E.IdEditora

SELECT * 
FROM Livros L
LEFT JOIN Editora E 
ON L.IdEditora = E.IdEditora

SELECT * 
FROM Editora E
RIGHT JOIN Livros L
ON L.IdEditora = E.IdEditora

SELECT * 
FROM Livros L
RIGHT JOIN Editora E 
ON L.IdEditora = E.IdEditora

SELECT * 
FROM Livros L
FULL JOIN Editora E
ON L.IdEditora = E.IdEditora;

SELECT * 
FROM Editora E
FULL JOIN Livros L
ON L.IdEditora = E.IdEditora;

SELECT *
FROM Livros
CROSS JOIN Assunto;
-- Exclusão de Registros 
SELECT * FROM Assunto;

DELETE FROM Assunto
Where IdAssunto = 2;

INSERT INTO Assunto (NomeAssunto)
VALUES('POLICIAL');
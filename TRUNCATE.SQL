-- TRUNCATE TABLE: Limpar tabela
CREATE TABLE TESTE (
	IdTeste SMALLINT PRIMARY KEY IDENTITY,
	ValorTeste SMALLINT NOT NULL
);

-- Inserir dados na tabela
DECLARE @Contador INT = 1

WHILE @Contador <= 100
BEGIN
	INSERT INTO Teste (ValorTeste)
	VALUES (@Contador * 3)
	SET @Contador = @Contador + 1
END

SELECT * FROM TESTE;

-- Limpar a tabela
TRUNCATE TABLE Teste;
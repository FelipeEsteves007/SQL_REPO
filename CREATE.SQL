CREATE DATABASE teste0;

-- Consultar bancos existentes 
SELECT name
FROM master.sys.databases 
ORDER BY name;

EXEC sp_databases;

-- Selecionar banco
USE teste0;

-- Info do banco
EXEC sp_helpdb teste0;

-- Excluir banco
DROP DATABASE teste0;

-- Excluir banco em uso
USE MASTER
GO
ALTER DATABASE teste0
SET SINGLE_USER WITH ROLLBACK IMMEDIATE
DROP DATABASE teste0;
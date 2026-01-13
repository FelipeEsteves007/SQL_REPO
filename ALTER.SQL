-- Gerenciamento de Tabelas (ALTER, DROP, RENAME)

-- Add nova coluna a tabela existente
ALTER TABLE Livros
ADD Edição SMALLINT;

-- Alterar tipo de dado de uma coluna
ALTER TABLE Livros
ALTER COLUMN Edição TINYINT;

-- Add chave primaria 
ALTER TABLE Livros
ADD PRIMARY KEY (ISBN13);

-- Excluir uma constraint de uma coluna
ALTER TABLE NomeTabela
DROP CONSTRAINT NomeConstraint;

-- Excluir uma coluna
ALTER TABLE Livros
DROP COLUMN Edição;

-- Exclur uma tabela
DROP TABLE NomeTabela;

-- Renomear uma tabela : sp_rename
-- sp_rename 'nome atual', 'novo nome'
sp_rename 'Livros', 'tbl_livros';
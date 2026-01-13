-- Inserir registros 
INSERT INTO Assunto (NomeAssunto)
VALUES
('Ficção Científica'), ('Botânica'),
('Terror'), ('Suspense');

SELECT * FROM Assunto

INSERT INTO Editora (NomeEditora)
VALUES
('Prentice Hall'), ('NovaTec'),
('Companhia das Letras'), 
('Darkside Books'), 
('Arqueiro');

SELECT * FROM Livros;

INSERT INTO Autor (NomeAutor, SobrenomeAutor)
VALUES
('Stephen', 'King'),
('Isaac', 'Asimov'),
('H.P.', 'Lovecraft'),
('Agatha', 'Christie');

INSERT INTO Livros(NomeLivro, ISBN13, DataPub, PrecoLivro, NumeroPaginas, IdAssunto, IdEditora)
VALUES
('Fundação', '9788576571551', '20131015', 89.90, 240, 1, 2),

('It: A Coisa', '9788581050584', '20140724', 95.00, 1104, 3, 4),

('O Assassinato no Expresso Oriente', '9788544101155', '20141101', 45.50, 240, 4, 5),

('Morfologia Vegetal', '9788576702122', '20120520', 120.00, 350, 2, 1);


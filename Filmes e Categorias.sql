DROP TABLE IF EXISTS Categorias;
DROP TABLE IF EXISTS Filmes;

CREATE TABLE Categorias (
    ID_Categoria INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Publico_Alvo VARCHAR(50) NOT NULL
);

CREATE TABLE Filmes (
    ID_Filme INTEGER PRIMARY KEY AUTOINCREMENT,
    Titulo VARCHAR(255) NOT NULL,
    Sinopse TEXT NOT NULL,
    Estudio VARCHAR(100) NOT NULL,
    ID_Categoria INT,
    FOREIGN KEY (ID_Categoria) REFERENCES Categorias(ID_Categoria)
);

INSERT INTO Categorias (Nome, Publico_Alvo) VALUES ('Ação', 'Adolescentes e Adultos');
INSERT INTO Categorias (Nome, Publico_Alvo) VALUES ('Comédia', 'Todas as idades');
INSERT INTO Categorias (Nome, Publico_Alvo) VALUES ('Drama', 'Adultos');

INSERT INTO Filmes (Titulo, Sinopse, Estudio, ID_Categoria) VALUES ('Operação Red Sparrow', 'Uma espiã é treinada para usar sua mente e corpo como armas.', 'Fox', 1);
INSERT INTO Filmes (Titulo, Sinopse, Estudio, ID_Categoria) VALUES ('Risadas em Cancun', 'Um grupo de amigos vive aventuras hilárias em Cancun.', 'Universal', 2);
INSERT INTO Filmes (Titulo, Sinopse, Estudio, ID_Categoria) VALUES ('O Pianista', 'A história de um músico judeu durante a Segunda Guerra Mundial.', 'Focus Features', 3);
INSERT INTO Filmes (Titulo, Sinopse, Estudio, ID_Categoria) VALUES ('Velocidade Máxima', 'Um ônibus armado com uma bomba deve manter sua velocidade acima de 50 mph.', 'Paramount', 1);
INSERT INTO Filmes (Titulo, Sinopse, Estudio, ID_Categoria) VALUES ('A Vida é Bela', 'Um pai usa sua imaginação para proteger seu filho dos horrores de um campo de concentração.', 'Miramax', 3);
INSERT INTO Filmes (Titulo, Sinopse, Estudio, ID_Categoria) VALUES ('Marley & Eu', 'A história de uma família e seu cachorro indisciplinado.', '20th Century Fox', 2);
INSERT INTO Filmes (Titulo, Sinopse, Estudio, ID_Categoria) VALUES ('Missão Impossível', 'Um agente secreto é acusado de traição e deve limpar seu nome.', 'Paramount', 1);
INSERT INTO Filmes (Titulo, Sinopse, Estudio, ID_Categoria) VALUES ('O Mentiroso', 'Um advogado não consegue mentir por 24 horas devido ao desejo de aniversário de seu filho.', 'Universal', 2);

SELECT * FROM Filmes;
DROP TABLE IF EXISTS Animais;
DROP TABLE IF EXISTS Especies;

CREATE TABLE Especies (
    ID_Especie INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome VARCHAR(30),
    Descricao VARCHAR(60)
);

CREATE TABLE Animais (
    Nome VARCHAR(30), 
    Data_Nasc DATETIME,
    Peso DECIMAL(5, 2),
    ID_Especie INT,
    FOREIGN KEY (ID_Especie) REFERENCES Especies(ID_Especie)
);

INSERT INTO Especies (Nome, Descricao) VALUES ('Felis catus', 'Um pequeno mamífero carnívoro doméstico.');
INSERT INTO Especies (Nome, Descricao) VALUES ('Canis lupus familiaris', 'Uma subespécie do lobo, é conhecido como o melhor amigo do homem.');
INSERT INTO Especies (Nome, Descricao) VALUES ('Psittacoidea', 'Superfamília de aves coloridas, conhecidas por sua capacidade de imitar sons.');

INSERT INTO Animais (Nome, Data_Nasc, Peso, ID_Especie) VALUES ('Luna', '2021-05-16', 5.2, 1);
INSERT INTO Animais (Nome, Data_Nasc, Peso, ID_Especie) VALUES ('Thor', '2020-03-23', 7.4, 2);
INSERT INTO Animais (Nome, Data_Nasc, Peso, ID_Especie) VALUES ('Mel', '2022-08-10', 3.1, 3);
INSERT INTO Animais (Nome, Data_Nasc, Peso, ID_Especie) VALUES ('Simba', '2019-01-05', 6.5, 1);
INSERT INTO Animais (Nome, Data_Nasc, Peso, ID_Especie) VALUES ('Bella', '2021-11-21', 4.3, 2);
INSERT INTO Animais (Nome, Data_Nasc, Peso, ID_Especie) VALUES ('Max', '2020-07-30', 8.8, 3);
INSERT INTO Animais (Nome, Data_Nasc, Peso, ID_Especie) VALUES ('Charlie', '2022-02-14', 2.9, 1);
INSERT INTO Animais (Nome, Data_Nasc, Peso, ID_Especie) VALUES ('Côco', '2019-09-17', 5.7, 2);

SELECT * FROM Animais;
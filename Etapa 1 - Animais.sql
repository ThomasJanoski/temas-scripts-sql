CREATE TABLE Animais (
	ID INT,
  	Nome VARCHAR(50),
  	Nasc DATE,
  	Peso DECIMAL(10, 2),
  	Cor VARCHAR(50)
);

INSERT INTO Animais (ID, Nome, Nasc, Peso, Cor) VALUES 
(01, "Ágata",         DATE("2015-04-09"), 13.9, "branco"),
(02, "Félix",         DATE("2016-06-06"), 14.3, "preto"),
(03, "Tom",           DATE("2013-02-08"), 11.2, "azul"),
(04, "Garfield",      DATE("2015-07-06"), 17.1, "laranja"),
(05, "Frajola",       DATE("2013-08-01"), 13.7, "preto"),
(06, "Manda-chuva",   DATE("2012-02-03"), 12.3, "amarelo"),
(07, "Snowball",      DATE("2014-04-06"), 13.2, "preto"),
(10, "Ágata",         DATE("2015-08-03"), 11.9, "azul"),
(11, "Gato de Botas", DATE("2012-12-10"), 11.6, "amarelo"),
(12, "Kitty",         DATE("2020-04-06"), 11.6, "amarelo"),
(13, "Milu",          DATE("2013-02-04"), 17.9, "branco"),
(14, "Pluto",         DATE("2012-01-03"), 12.3, "amarelo"),
(15, "Pateta",        DATE("2015-05-01"), 17.7, "preto"),
(16, "Snoopy",        DATE("2013-07-02"), 18.2, "branco"),
(17, "Rex",           DATE("2019-11-03"), 19.7, "beje"),
(20, "Bidu",          DATE("2012-09-08"), 12.4, "azul"),
(21, "Dum Dum",       DATE("2015-04-06"), 11.2, "laranja"),
(22, "Muttley",       DATE("2011-02-03"), 14.3, "laranja"),
(23, "Scooby",        DATE("2012-01-02"), 19.9, "marrom"),
(24, "Rufus",         DATE("2014-04-05"), 19.7, "branco"),
(25, "Rex",           DATE("2015-08-19"), 19.7, "branco");

SELECT * FROM Animais;
SELECT * FROM Animais WHERE Peso < 13.1;
SELECT * FROM Animais WHERE Nasc BETWEEN DATE("2015-02-01") and DATE("2015-12-01");
SELECT * FROM Animais WHERE Peso < 15 AND cor = "branco";
SELECT * FROM Animais WHERE Nome LIKE "B%";
SELECT * FROM Animais ORDER BY Nasc DESC;
SELECT * FROM Animais WHERE Nome LIKE "C%" AND Cor != "branco";
SELECT * FROM Animais WHERE Nome LIKE "%ba%";
SELECT * FROM Animais WHERE Peso BETWEEN 13 and 15;
SELECT * from Animais WHERE Peso <= 30 AND Cor IN ("amarelo", "roxo") AND Nasc > DATE("2012-01-01");

-- Opção mais "bruta"
SELECT * FROM Animais WHERE (CAST(STRFTIME("%m", Nasc) AS INT) = 12 AND CAST(STRFTIME("%d", Nasc) AS INT) >= 22) 
OR CAST(STRFTIME("%m", Nasc) AS INT) = 1 AND CAST(STRFTIME("%d", Nasc) AS INT) <= 20; 

-- Opção mais complexa
SELECT * FROM Animais WHERE STRFTIME("%s", Nasc) 
BETWEEN 
STRFTIME("%s", DATE(CAST(CAST(STRFTIME("%Y", Nasc) AS INT) - 1 AS TEXT) || "-12-22"))
AND 
STRFTIME("%s", DATE(STRFTIME("%Y", Nasc) || "-01-20"));

SELECT * FROM Animais WHERE Nome LIKE "% %";
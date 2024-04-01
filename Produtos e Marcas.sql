DROP TABLE IF EXISTS Marcas;
DROP TABLE IF EXISTS Produtos;

CREATE TABLE Marcas (
    ID_Marca INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome VARCHAR(60) NOT NULL,
    Site_Oficial VARCHAR(100),
    Telefone VARCHAR(20)
);

CREATE TABLE Produtos (
    ID_Produto INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome VARCHAR(60) NOT NULL,
    Preco_Custo DECIMAL(10, 2) NOT NULL,
    Preco_Venda DECIMAL(10, 2) NOT NULL,
    Data_Validade DATE NOT NULL,
    ID_Marca INT,
    FOREIGN KEY (ID_Marca) REFERENCES Marcas(ID_Marca)
);


INSERT INTO Marcas (Nome, Site_Oficial, Telefone) VALUES ('Eletronica Avançada', 'www.eletronicaavançada.com.br', '11 2345-6789');
INSERT INTO Marcas (Nome, Site_Oficial, Telefone) VALUES ('Casa Conforto', 'www.casaconforto.com.br', '21 3456-7890');
INSERT INTO Marcas (Nome, Site_Oficial, Telefone) VALUES ('Beleza Pura', 'www.belezapura.com.br', '31 4567-8901');

INSERT INTO Produtos (Nome, Preco_Custo, Preco_Venda, Data_Validade, ID_Marca) VALUES ('Televisor 50\"', 2200.00, 3200.00, '2026-12-31', 1);
INSERT INTO Produtos (Nome, Preco_Custo, Preco_Venda, Data_Validade, ID_Marca) VALUES ('Notebook Pro', 2800.00, 4200.00, '2026-11-15', 1);
INSERT INTO Produtos (Nome, Preco_Custo, Preco_Venda, Data_Validade, ID_Marca) VALUES ('Liquidificador Turbo', 150.00, 250.00, '2027-05-20', 2);
INSERT INTO Produtos (Nome, Preco_Custo, Preco_Venda, Data_Validade, ID_Marca) VALUES ('Mixer Power', 90.00, 160.00, '2027-03-30', 2);
INSERT INTO Produtos (Nome, Preco_Custo, Preco_Venda, Data_Validade, ID_Marca) VALUES ('Creme Hidratante', 25.00, 50.00, '2024-08-01', 3);
INSERT INTO Produtos (Nome, Preco_Custo, Preco_Venda, Data_Validade, ID_Marca) VALUES ('Perfume Elegance', 120.00, 210.00, '2024-09-19', 3);
INSERT INTO Produtos (Nome, Preco_Custo, Preco_Venda, Data_Validade, ID_Marca) VALUES ('Smartphone X1', 1500.00, 2700.00, '2026-10-22', 1);
INSERT INTO Produtos (Nome, Preco_Custo, Preco_Venda, Data_Validade, ID_Marca) VALUES ('Fritadeira Elétrica', 230.00, 400.00, '2027-07-15', 2);

SELECT * FROM Produtos;
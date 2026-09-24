CREATE DATABASE IF NOT EXISTS CBF
    DEFAULT CHARACTER SET = 'utf8mb4';

USE CBF;

CREATE TABLE Federacao(
    cod_fed INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(40) NOT NULL,
    uf CHAR(2) NOT NULL,
    telefone VARCHAR(10),

    CONSTRAINT unica_uf_federacao
        UNIQUE(uf)
);

CREATE TABLE Clube(
    cod_clube INT AUTO_INCREMENT PRIMARY KEY,
    cod_fed INT,
    nome VARCHAR(30) NOT NULL,
    telefone VARCHAR(10) NOT NULL,
    data_fundacao DATETIME,

    FOREIGN KEY (cod_fed) REFERENCES Federacao(cod_fed)
);

CREATE TABLE Jogador (
    cod_jog INT AUTO_INCREMENT PRIMARY KEY,
    cod_clube INT,
    cod_fed INT,
    nome VARCHAR(30) NOT NULL,
    data_nasc DATETIME NOT NULL,
    sexo CHAR(1),
    cidade_nasc VARCHAR(40) NOT NULL,
    salario NUMERIC(8,2),

    FOREIGN KEY (cod_clube) REFERENCES Clube(cod_clube),
    FOREIGN KEY (cod_fed) REFERENCES Federacao(cod_fed),

    CONSTRAINT salario_minimo
        CHECK(salario > 5000.00)
);

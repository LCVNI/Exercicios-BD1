CREATE DATABASE IF NOT EXISTS CineBD
    DEFAULT CHARACTER SET = 'utf8mb4';
USE CineBD;

CREATE TABLE Cinemas(
    cod_cinema INTEGER NOT NULL PRIMARY KEY
    nome VARCHAR(30) NOT NULL
    telefone CHAR(10) NOT NULL
    endereco CHAR(10) NOT NULL
    cidade CHAR(10) NOT NULL
    estado CHAR(10) NOT NULL
) 

CREATE TABLE Salas(
    cod_cinema INTEGER NOT NULL
    numero_sala INTEGER NOT NULL PRIMARY KEY
    capacidade INTEGER NOT NULL
)

CREATE TABLE Estudio(
    cod_estudio INTEGER NOT NULL PRIMARY KEY
    nome VARCHAR(30) NOT NULL
    pais VARCHAR(30) NOT NULL
)

CREATE TABLE Horarios(
    cod_horario INTEGER NOT NULL PRIMARY KEY
    inicio NUMERIC(4,0) NOT NULL
    fim NUMERIC(4,0) NOT NULL
)

CREATE TABLE Filmes(
    cod_filme INTEGER NOT NULL PRIMARY KEY
    cod_estudio INTEGER NOT NULL
    nome VARCHAR(40) NOT NULL
    censura INTEGER NOT NULL
    diretor VARCHAR(30) NOT NULL
    sinopse TEXT    
)

CREATE TABLE Atores(
    cod_ator INTEGER NOT NULL PRIMARY KEY
    nome_ator VARCHAR(30) NOT NULL
    pais_ator VARCHAR(20) NOT NULL
)

CREATE TABLE Elenco(
    cod_filme INTEGER NOT NULL
    cod_ator INTEGER NOT NULL
)

CREATE TABLE Sessao(
    cod_cinema INTEGER NOT NULL
    cod_filme INTEGER NOT NULL
    numero_sala INTEGER NOT NULL
    cod_horario INTEGER NOT NULL
    preco DECIMAL(5,2) NOT NULL
    qtd_ingr
)

USE CBF;

-- 1. INSERIR FEDERAÇÕES (Telefones fixos com DDD = 10 caracteres)
INSERT INTO Federacao(uf, descricao, telefone)
VALUES
('BA', 'Federação baiana de futebol', '7132421200'),
('SP', 'Federação paulista de futebol', '1121897000'),
('RJ', 'Federação fluminense de futebol', '2122532145'),
('MG', 'Federação mineira de futebol', '3132715477');

-- 2. INSERIR CLUBES (Telefones fixos com DDD = 10 caracteres e datas em formato AAAA-MM-DD)
INSERT INTO Clube(cod_fed, nome, data_fundacao, telefone)
VALUES
(1, 'Bahia', '1931-01-01', '7135921200'),
(1, 'Vitória', '1899-05-13', '7133392800'),
(2, 'São Paulo', '1930-01-25', '1137498000'),
(2, 'Santos', '1912-04-14', '1332574000'),
(3, 'Flamengo', '1895-11-15', '2121590100'),
(3, 'Fluminense', '1902-07-21', '2131797200'),
(4, 'Cruzeiro', '1921-01-02', '3133491500'),
(4, 'Atletico Mineiro', '1908-03-25', '3134399700');

-- 3. INSERIR JOGADORES (O elenco completo)
INSERT INTO Jogador (cod_clube, cod_fed, nome, data_nasc, sexo, cidade_nasc, salario) VALUES
-- Bahia (cod_clube: 1, cod_fed: 1)
(1, 1, 'Marcos Felipe', '1996-04-17 00:00:00', 'M', 'Serra', 5500.00),
(1, 1, 'Gilberto', '1997-03-07 00:00:00', 'M', 'Campinas', 6200.00),
(1, 1, 'Kanu', '1997-03-07 00:00:00', 'M', 'Rio de Janeiro', 5800.00),
(1, 1, 'Víctor Cuesta', '1988-11-08 00:00:00', 'M', 'Buenos Aires', 7000.00),
(1, 1, 'Luciano Juba', '1999-10-31 00:00:00', 'M', 'Ribeira do Pombal', 6500.00),
(1, 1, 'Caio Alexandre', '1999-02-24 00:00:00', 'M', 'São Paulo', 7500.00),
(1, 1, 'Jean Lucas', '1998-06-22 00:00:00', 'M', 'Rio de Janeiro', 8000.00),
(1, 1, 'Everton Ribeiro', '1989-04-10 00:00:00', 'M', 'Arujá', 12000.00),
(1, 1, 'Cauly', '1995-09-15 00:00:00', 'M', 'Porto Seguro', 9500.00),
(1, 1, 'Thaciano', '1995-05-12 00:00:00', 'M', 'Maravilha', 6000.00),
(1, 1, 'Everaldo', '1991-07-05 00:00:00', 'M', 'Garibaldi', 7200.00),

-- Vitória (cod_clube: 2, cod_fed: 1)
(2, 1, 'Lucas Arcanjo', '1998-07-10 00:00:00', 'M', 'Salvador', 5200.00),
(2, 1, 'Zeca', '1994-05-06 00:00:00', 'M', 'Paranavaí', 6000.00),
(2, 1, 'Camutanga', '1993-10-02 00:00:00', 'M', 'Goiana', 5500.00),
(2, 1, 'Wagner Leonardo', '1999-07-23 00:00:00', 'M', 'Praia Grande', 6800.00),
(2, 1, 'PK', '1999-06-11 00:00:00', 'M', 'Salvador', 5300.00),
(2, 1, 'Rodrigo Andrade', '1997-02-27 00:00:00', 'M', 'Salvador', 5700.00),
(2, 1, 'Dudu', '1999-03-08 00:00:00', 'M', 'Ipatinga', 5400.00),
(2, 1, 'Matheusinho', '1998-03-08 00:00:00', 'M', 'Rio de Janeiro', 6100.00),
(2, 1, 'Osvaldo', '1987-05-27 00:00:00', 'M', 'Fortaleza', 7500.00),
(2, 1, 'Iury Castilho', '1995-09-27 00:00:00', 'M', 'Rio de Janeiro', 5600.00),
(2, 1, 'Léo Gamalho', '1986-01-30 00:00:00', 'M', 'Salvador', 7000.00),

-- São Paulo (cod_clube: 3, cod_fed: 2)
(3, 2, 'Rafael', '1989-06-23 00:00:00', 'M', 'Coroados', 9000.00),
(3, 2, 'Igor Vinícius', '1997-04-04 00:00:00', 'M', 'Sinop', 7000.00),
(3, 2, 'Arboleda', '1991-10-22 00:00:00', 'M', 'Esmeraldas', 11000.00),
(3, 2, 'Alan Franco', '1996-10-11 00:00:00', 'M', 'Jujuy', 8500.00),
(3, 2, 'Welington', '2001-02-19 00:00:00', 'M', 'São Paulo', 6500.00),
(3, 2, 'Pablo Maia', '2002-01-10 00:00:00', 'M', 'Brazópolis', 8000.00),
(3, 2, 'Alisson', '1993-06-25 00:00:00', 'M', 'Rio Pomba', 9200.00),
(3, 2, 'Luciano', '1993-05-18 00:00:00', 'M', 'Anápolis', 13000.00),
(3, 2, 'Lucas Moura', '1992-08-13 00:00:00', 'M', 'São Paulo', 25000.00),
(3, 2, 'Ferreira', '1997-12-31 00:00:00', 'M', 'Dourados', 9500.00),
(3, 2, 'Calleri', '1993-09-23 00:00:00', 'M', 'Buenos Aires', 20000.00),

-- Santos (cod_clube: 4, cod_fed: 2)
(4, 2, 'João Paulo', '1995-06-29 00:00:00', 'M', 'Dourados', 10000.00),
(4, 2, 'Aderlan', '1990-08-18 00:00:00', 'M', 'Campinas', 6500.00),
(4, 2, 'Gil', '1987-06-12 00:00:00', 'M', 'Campos dos Goytacazes', 11000.00),
(4, 2, 'Joaquim', '1998-12-28 00:00:00', 'M', 'Muriaé', 8500.00),
(4, 2, 'Felipe Jonatan', '1998-02-15 00:00:00', 'M', 'Fortaleza', 7000.00),
(4, 2, 'João Schmidt', '1993-05-19 00:00:00', 'M', 'São Paulo', 8000.00),
(4, 2, 'Diego Pituca', '1992-08-15 00:00:00', 'M', 'Mogi Guaçu', 9500.00),
(4, 2, 'Giuliano', '1990-05-31 00:00:00', 'M', 'Curitiba', 12000.00),
(4, 2, 'Otero', '1992-08-19 00:00:00', 'M', 'Caracas', 7500.00),
(4, 2, 'Guilherme', '1995-04-22 00:00:00', 'M', 'São Paulo', 8200.00),
(4, 2, 'Julio Furch', '1989-07-29 00:00:00', 'M', 'Winifreda', 10500.00),

-- Flamengo (cod_clube: 5, cod_fed: 3)
(5, 3, 'Rossi', '1993-08-21 00:00:00', 'M', 'San Martín', 15000.00),
(5, 3, 'Varela', '1993-03-24 00:00:00', 'M', 'Montevidéu', 12000.00),
(5, 3, 'Fabrício Bruno', '1996-02-12 00:00:00', 'M', 'Betim', 14000.00),
(5, 3, 'Léo Pereira', '1996-01-31 00:00:00', 'M', 'Curitiba', 16000.00),
(5, 3, 'Ayrton Lucas', '1997-06-19 00:00:00', 'M', 'Carnaúba dos Dantas', 15500.00),
(5, 3, 'Pulgar', '1994-01-15 00:00:00', 'M', 'Antofagasta', 18000.00),
(5, 3, 'De la Cruz', '1997-06-01 00:00:00', 'M', 'Fray Bentos', 30000.00),
(5, 3, 'Arrascaeta', '1994-06-01 00:00:00', 'M', 'Nuevo Berlin', 35000.00),
(5, 3, 'Everton Cebolinha', '1996-03-22 00:00:00', 'M', 'Maracanaú', 25000.00),
(5, 3, 'Luiz Araújo', '1996-06-02 00:00:00', 'M', 'Taquaritinga', 22000.00),
(5, 3, 'Pedro', '1997-06-20 00:00:00', 'M', 'Rio de Janeiro', 38000.00),

-- Fluminense (cod_clube: 6, cod_fed: 3)
(6, 3, 'Fábio', '1990-09-30 00:00:00', 'M', 'Nobrega', 14000.00),
(6, 3, 'Samuel Xavier', '1990-06-06 00:00:00', 'M', 'São Paulo', 9000.00),
(6, 3, 'Manoel', '1990-02-26 00:00:00', 'M', 'Bacabal', 9500.00),
(6, 3, 'Felipe Melo', '1983-06-26 00:00:00', 'M', 'Volta Redonda', 12000.00),
(6, 3, 'Marcelo', '1988-05-12 00:00:00', 'M', 'Rio de Janeiro', 28000.00),
(6, 3, 'André', '2001-07-16 00:00:00', 'M', 'Aparecida de Goiânia', 18000.00),
(6, 3, 'Martinelli', '2001-10-05 00:00:00', 'M', 'Presidente Prudente', 10000.00),
(6, 3, 'Ganso', '1989-10-12 00:00:00', 'M', 'Ananindeua', 22000.00),
(6, 3, 'Jhon Arias', '1997-09-21 00:00:00', 'M', 'Quibdó', 20000.00),
(6, 3, 'Keno', '1989-09-10 00:00:00', 'M', 'Salvador', 11000.00),
(6, 3, 'Germán Cano', '1988-01-02 00:00:00', 'M', 'Lomas de Zamora', 30000.00),

-- Cruzeiro (cod_clube: 7, cod_fed: 4)
(7, 4, 'Rafael Cabral', '1990-05-20 00:00:00', 'M', 'Sorocaba', 11000.00),
(7, 4, 'William', '1995-04-03 00:00:00', 'M', 'Pelotas', 7500.00),
(7, 4, 'Neris', '1992-06-12 00:00:00', 'M', 'São Borja', 6800.00),
(7, 4, 'João Marcelo', '2000-05-13 00:00:00', 'M', 'Rio de Janeiro', 6000.00),
(7, 4, 'Marlon', '1997-05-07 00:00:00', 'M', 'Criciúma', 8500.00),
(7, 4, 'Lucas Romero', '1994-04-18 00:00:00', 'M', 'Loma Hermosa', 10000.00),
(7, 4, 'Filipe Machado', '1996-01-20 00:00:00', 'M', 'Gravataí', 7200.00),
(7, 4, 'Mateus Vital', '1998-02-12 00:00:00', 'M', 'Rio de Janeiro', 8000.00),
(7, 4, 'Arthur Gomes', '1998-07-03 00:00:00', 'M', 'Uberlândia', 8200.00),
(7, 4, 'Matheus Pereira', '1996-05-05 00:00:00', 'M', 'Belo Horizonte', 24000.00),
(7, 4, 'Juan Dinenno', '1994-08-28 00:00:00', 'M', 'Rosário', 15000.00),

-- Atlético Mineiro (cod_clube: 8, cod_fed: 4)
(8, 4, 'Everson', '1990-07-22 00:00:00', 'M', 'São Paulo', 13000.00),
(8, 4, 'Saravia', '1993-06-24 00:00:00', 'M', 'Córdoba', 9000.00),
(8, 4, 'Bruno Fuchs', '1999-04-01 00:00:00', 'M', 'Caxias do Sul', 8500.00),
(8, 4, 'Jemerson', '1992-08-24 00:00:00', 'M', 'Jeremoabo', 11000.00),
(8, 4, 'Guilherme Arana', '1997-04-01 00:00:00', 'M', 'São Paulo', 20000.00),
(8, 4, 'Otávio', '1994-05-04 00:00:00', 'M', 'Alagoas', 10500.00),
(8, 4, 'Alan Franco', '1998-08-21 00:00:00', 'M', 'Jujuy', 9500.00),
(8, 4, 'Gustavo Scarpa', '1994-01-05 00:00:00', 'M', 'Hortolândia', 25000.00),
(8, 4, 'Paulinho', '2000-07-15 00:00:00', 'M', 'Rio de Janeiro', 22000.00),
(8, 4, 'Hulk', '1986-07-25 00:00:00', 'M', 'Campina Grande', 40000.00),
(8, 4, 'Vargas', '1989-11-20 00:00:00', 'M', 'Santiago', 18000.00);

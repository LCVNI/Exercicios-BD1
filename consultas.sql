USE CBF;
--Questao 3 Liste todos os jogadores da federação cuja UF seja BA, exibindo código do jogador, nome do jogador e nome do clube.
SELECT j.cod_jog, j.nome, c.nome
FROM jogador AS j
INNER JOIN clube AS c ON j.cod_clube = c.cod_clube
INNER JOIN federacao AS f ON c.cod_fed = f.cod_fed
WHERE f.uf = 'BA';

--Questao 4 Recupere todos os clubes e suas respectivas federações.
SELECT c.cod_clube, c.nome, YEAR(c.data_fundacao) AS ano_fundacao, f.descricao
FROM clube AS c
INNER JOIN federacao AS f ON c.cod_fed = f.cod_fed;

--Questao 5 Liste os clubes das federações RJ e SP cujo nome termine com a letra O.
--Exiba código do clube, nome do clube, ano da fundação e nome da federação, usando apelidos.
SELECT c.cod_clube, c.nome, YEAR(c.data_fundacao) AS ano_fundacao, f.descricao
FROM clube AS c
INNER JOIN federacao AS f ON c.cod_fed = f.cod_fed
WHERE (f.uf = 'RJ'OR f.uf = 'SP')
AND c.nome LIKE '%o';

--Questão 6 Recupere a quantidade de times que pagam salário superior a R$ 100.000,00
SELECT COUNT(*) AS total_clubes
FROM jogador AS j
INNER JOIN clube AS c ON j.cod_clube = c.cod_clube
WHERE j.salario > 100000;

--Questao 7 Insira o jogador código 9 em um clube da Federação Carioca
--(O jogador deve nascer em 09 de março de 2007, ser do sexo masculino, ter cidade de nascimento Salvador e salário de R$ 300.000,00)
DELETE FROM jogador WHERE cod_jog = 9;
INSERT INTO jogador (cod_jog, nome, data_nasc, sexo, cidade_nasc, salario, cod_clube, cod_fed)
VALUES (9, 'Joaozinho', '2007-03-09', 'M', 'Salvador', 300000.00, 6, 3);

--Questao 8 Liste os jogadores que recebem menos que o jogador código 9.
 --Exiba código, nome, salário e nome do clube. Ordene o resultado pelo nome do time.
SELECT j.cod_jog, j.nome, j.salario, c.nome
FROM jogador AS j
INNER JOIN clube AS c ON j.cod_clube = c.cod_clube
WHERE j.salario < (
    SELECT salario 
    FROM jogador 
    WHERE cod_jog = 9
)
ORDER BY c.nome ASC;

--Questao 9 Liste o código, o nome e o salário dos jogadores que recebem o maior salário dentro de cada clube
--A consulta deve retornar todos os jogadores empatados no maior salário de seus respectivos clubes.
SELECT j.cod_jog, j.nome AS nome_jogador, j.salario AS maior_salario
FROM jogador AS j
INNER JOIN clube AS c ON j.cod_clube = c.cod_clube
WHERE (j.cod_clube, j.salario) IN (
    -- Esta subquery descobre a combinação exata de (clube e maior salário)
    SELECT cod_clube, MAX(salario) 
    FROM jogador 
    GROUP BY cod_clube
)
ORDER BY maior_salario DESC;

--10 Liste o código do clube, o nome do clube e o nome do jogador que recebe o menor salário de cada time
-- Ordene o resultado pelo salário do jogador.
SELECT j.cod_jog, j.nome AS nome_jogador, j.salario AS menor_salario
FROM jogador AS j
INNER JOIN clube AS c ON j.cod_clube = c.cod_clube
WHERE (j.cod_clube, j.salario) IN (
    SELECT cod_clube, MIN(salario) 
    FROM jogador 
    GROUP BY cod_clube
)
ORDER BY menor_salario DESC;

--11 Exclua o jogador do Time 1 que recebe o menor salário
    --Considere que o código do Time 1 é 1. Em caso de empate, exclua todos os jogadores que recebem o menor salário do clube.
    DELETE j
FROM jogador AS j
INNER JOIN (
    SELECT MIN(salario) AS menor_salario
    FROM jogador
    WHERE cod_clube = 1
) AS temp ON j.salario = temp.menor_salario
WHERE j.cod_clube = 1;

--12 Conceda um aumento salarial de 30% ao jogador código 9
UPDATE jogador
SET salario = salario*1.3
WHERE jogador.cod_jog = 9


--13 Conceda aumento de 10% aos jogadores do clube 2 que recebem menos de R$ 10.000,00.
    --Somente jogadores do clube de código 2 com salário inferior ao limite devem ser atualizados.
UPDATE jogador
SET salario = salario*1.1
WHERE jogador.cod_clube = 2 AND jogador.salario < 10000

--14 Conceda aumento de 15% aos jogadores dos clubes que possuem a maior média salarial.
    --Considere como maior média salarial a maior média entre as médias calculadas para todos os clubes.
UPDATE jogador
SET salario = salario * 1.15
WHERE cod_clube IN (
    SELECT cod_clube FROM (
        SELECT cod_clube 
        FROM jogador 
        GROUP BY cod_clube 
        HAVING AVG(salario) = (
            SELECT AVG(salario) 
            FROM jogador 
            GROUP BY cod_clube 
            ORDER BY AVG(salario) DESC 
            LIMIT 1
        )
    ) AS tabela_temporaria
);

--Liste os dados estatísticos de todos os clubes.
--Exiba código do clube, nome do clube, quantidade de jogadores,
--média salarial, menor salário e maior salário. Ordene alfabeticamente pelo nome do clube.

SELECT 
    c.cod_clube, 
    c.nome AS nome_clube, 
    COUNT(j.cod_jog) AS quantidade_jogadores, 
    AVG(j.salario) AS media_salarial, 
    MIN(j.salario) AS menor_salario, 
    MAX(j.salario) AS maior_salario
FROM clube AS c
INNER JOIN jogador AS j ON c.cod_clube = j.cod_clube
GROUP BY c.cod_clube, c.nome
ORDER BY c.nome ASC;

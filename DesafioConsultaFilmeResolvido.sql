-- Consulta 1: Retorna somente o nome e o ano dos filmes
SELECT Nome, Ano FROM Filmes;

-- Consulta 2: Retorna o nome e o ano, ordenado de forma crescente pelo ano
SELECT Nome, Ano FROM Filmes ORDER BY Ano;

-- Consulta 3: Busca pelo filme "De Volta para o Futuro", trazendo o nome, ano e duração
SELECT * FROM Filmes WHERE Nome = 'De Volta para o Futuro';

-- Consulta 4: Busca os filmes lançados no ano de 1997
SELECT * FROM Filmes WHERE Ano = 1997;

-- Consulta 5: Busca os filmes lançados após o ano 2000
SELECT * FROM Filmes WHERE Ano > 2000;

-- Consulta 6: Busca os filmes com duração entre 100 e 150 minutos, ordenando em ordem crescente pela duração
SELECT * FROM Filmes WHERE 100 < Duracao AND Duracao < 150 ORDER BY Duracao;

-- Consulta 7: Agrupa os filmes por ano e conta a quantidade de lançamentos, ordenando em ordem decrescente
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY MAX(Duracao) DESC;

-- Consulta 8: Busca os atores do gênero masculino, retornando o primeiro e último nome
SELECT * FROM Atores WHERE Genero = 'M';

-- Consulta 9: Busca as atrizes, retornando o primeiro e último nome
SELECT * FROM Atores WHERE Genero = 'F';

-- Consulta 10: Retorna o nome do filme e o seu gênero
SELECT Filmes.Nome AS NomeFilme, Generos.Genero AS Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON Generos.Id = FilmesGenero.IdGenero;

-- Consulta 11: Busca o nome dos filmes que pertencem ao gênero "Mistério"
SELECT Filmes.Nome AS NomeFilme, Generos.Genero AS Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Generos.Genero = 'Mistério';

-- Consulta 12: Retorna o nome do filme e os atores, incluindo o primeiro nome, último nome e o papel desempenhado
SELECT Filmes.Nome AS NomeFilme, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Filmes
JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
JOIN Atores ON Atores.Id = ElencoFilme.IdAtor;

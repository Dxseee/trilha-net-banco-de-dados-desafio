-- Exercício 1: Buscar o nome e ano dos filmes
SELECT Nome, Ano 
FROM Filmes;

-- Exercício 2: Buscar o nome e ano dos filmes, ordenados por ano crescente
SELECT Nome, Ano 
FROM Filmes
ORDER BY Ano ASC;

-- Exercício 3: Buscar o filme "De Volta para o Futuro", trazendo nome, ano e duração
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

-- Exercício 4: Buscar os filmes lançados em 1997
SELECT Nome, Ano 
FROM Filmes
WHERE Ano = 1997;

-- Exercício 5: Buscar os filmes lançados após o ano 2000
SELECT Nome, Ano 
FROM Filmes
WHERE Ano > 2000;

-- Exercício 6: Buscar os filmes com duração > 100 e < 150, ordenados por duração crescente
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

-- Exercício 7: Buscar a quantidade de filmes lançados no ano, agrupando por ano e ordenando em ordem decrescente
SELECT Ano, COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY QuantidadeFilmes DESC;

-- Exercício 8: Buscar os atores do gênero masculino
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M';

-- Exercício 9: Buscar os atores do gênero feminino, ordenados pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;

-- Exercício 10: Buscar o nome do filme e o gênero
SELECT f.Nome AS Filme, g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id;

-- Exercício 11: Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT f.Nome AS Filme, g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';

-- Exercício 12: Buscar o nome do filme e os atores, trazendo PrimeiroNome, UltimoNome e Papel
SELECT f.Nome AS Filme, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filmes f
INNER JOIN ElencoFilme ef ON f.Id = ef.IdFilme
INNER JOIN Atores a ON ef.IdAtor = a.Id;

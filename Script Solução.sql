-- 1 buscar o nome e ano dos filmes 
select nome,ano from filmes;

-- 2 Buscar nome e ano dos filmes, ordenados por ordem crescente pelo ano
select nome,ano,duracao from filmes order by ano;

-- 3 Buscar pelo fime de volta para o futuro, trazendo nome,ano e a duração
select nome,ano,duracao from filmes where nome = "De volta para o futuro";

-- 4 Buscar os filmes lançados em 1997
select nome,ano,duracao from filmes where ano = 1997;

-- 5 Buscar os filmes lançados após o ano 2000
select nome,ano,duracao from filmes where ano > 2000;

-- 6 Buscar filmes com duração maior que 100 e menor que 150 ordenenando pela duracao em ordem crescente
select nome,ano,duracao from filmes where duracao > 100 and duracao < 150 order by duracao;

-- 7 Buscar quantidades de filmes lançados no ano, agrupando por ano, ordenado pela duraçao em ordem decrscente
SELECT ano,count(*) as QuantidadeFilmes FROM Filmes group by ano order by QuantidadeFilmes desc;

-- 8 Buscar Atores do genero masculino, retornando o primeiroNome, Ultimo nome 
select id,PrimeiroNome,UltimoNome,Genero from atores where Genero = "M";

-- 9 Buscar atores do genero feminino, retornando o primeiro nome e ultimo nome ordenado pelo primeiro nome 
select * from atores where Genero = "F" order by PrimeiroNome;

-- 10 Buscar o nome do filme por genero
SELECT Filmes.Nome AS Filme, Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;

-- Buscar o nome do filme e o genero do tipo Misterio
SELECT Filmes.Nome AS Filme, Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = "Misterio";

-- 12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome Ultimo nome e seu papel
SELECT filmes.nome, Atores.PrimeiroNome, Atores.UltimoNome,elencoFilme.papel
FROM filmes
INNER JOIN elencoFilme ON filmes.id = elencoFilme.id 
INNER JOIN atores ON elencoFilme.id = atores.id;

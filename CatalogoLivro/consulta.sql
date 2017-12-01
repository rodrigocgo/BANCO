-- Retorna nome, nacionalidade e email conforme o email informado
select nomea, nacionalidade, email  
from autor 
where email = '%gmail.com%'

-- Retorna nome, sexo e nacionalidade do autor conforme sua nacionalidade 3 PARAM
select nomea, sexo, nacionalidade 
from autor 
where nacionalidade IN ('BR', 'US', 'UK')

-- Retorna nome da editora e inauguração, conforme data de inicio e países e orderna por nome 
select nomee, comeco 
from editora 
where comeco > '01-may-1940' and pais = 'BR' or pais = 'US' 
order by nomee

-- Conta a ocorrencia de publico alvo
select publico_alvo, 
COUNT(publico_alvo) as QTD 
from categoria 
group by PUBLICO_ALVO;

-- Lista autores homens
select distinct(sexo) as gen,  nomea 
from autor 
where sexo = 'M' 
order by nomea

-- Agrupa data de nascimento de autores BR com data superior a 01-may-1950
SELECT nascimento 
FROM autor 
WHERE NACIONALIDADE = 'BR' 
group by nascimento  
having nascimento > '01-may-1950'

-- Autores brasileiros que nasceram apartir de 1980
SELECT NOMEA, nascimento, NACIONALIDADE
FROM autor
WHERE NACIONALIDADE = 'BR' 
group by nomea 
having nascimento > '1980-01-01';


-- Livros com ou mais de 500 exemplares
SELECT Livro, exemplares AS 'Quantidade de Exemplares'
 FROM publicacao
 GROUP BY Livro
 having exemplares >= 500;
 
 -- Maior preco, media preco e max exemplares com id > 10
 SELECT MAX(preco), avg(preco), max(exemplares) FROM publicacao
 group by id_publicacao
 having id_publicacao > 10
 order by id_publicacao; 
 
-- Autores com cpf terminado em 8 que nasceram apartir de 1970
select nomea, nascimento from autor
where cpf LIKE '%8'
group by nomea
having nascimento > '1970-01-01';

-- Categorias de entretenimento com id maior que 320
select id_categoria, descricao from categoria
where area = 'Entretenimento'
group by DESCRICAO
having id_categoria > 320
order by descricao;



-- Retorna Livros da editora 100 com números de páginas menor que todas as consultas da editora 111  
SELECT livro.titulo,livro.TITULO,livro.EDITORA
FROM Livro livro
WHERE livro.editora = 100 AND livro.paginas < ALL
(SELECT livro1.paginas
FROM Livro livro1
WHERE livro1.editora = 111); 

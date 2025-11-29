-- Consulta 1: Listar todos os livros disponíveis com seus autores e categorias (JOIN)
SELECT L.titulo, A.nome AS autor, C.descricao AS categoria, L.ano_publicacao
FROM Livro L
JOIN Autor A ON L.id_autor = A.id_autor
JOIN Categoria C ON L.id_categoria = C.id_categoria;

-- Consulta 2: Listar quais leitores têm empréstimos em andamento (sem data de devolução)
SELECT Le.nome AS leitor, L.titulo, E.data_retirada, E.data_prevista
FROM Emprestimo E
JOIN Leitor Le ON E.id_leitor = Le.id_leitor
JOIN Exemplar Ex ON E.id_exemplar = Ex.id_exemplar
JOIN Livro L ON Ex.isbn = L.isbn
WHERE E.data_devolucao IS NULL
ORDER BY E.data_prevista ASC; -- Ordenado pelo prazo de entrega mais próximo

-- Consulta 3: Contar quantos exemplares cada livro possui no acervo (GROUP BY e COUNT)
SELECT L.titulo, COUNT(Ex.id_exemplar) AS total_copias
FROM Livro L
JOIN Exemplar Ex ON L.isbn = Ex.isbn
GROUP BY L.titulo;
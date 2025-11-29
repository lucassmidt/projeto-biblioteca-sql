-- Inserindo Autores
INSERT INTO Autor (nome) VALUES ('Machado de Assis');
INSERT INTO Autor (nome) VALUES ('J.K. Rowling');
INSERT INTO Autor (nome) VALUES ('George Orwell');

-- Inserindo Categorias
INSERT INTO Categoria (descricao) VALUES ('Romance Brasileiro');
INSERT INTO Categoria (descricao) VALUES ('Fantasia');
INSERT INTO Categoria (descricao) VALUES ('Ficção Distópica');

-- Inserindo Livros (Repare que usamos os IDs dos autores e categorias acima)
INSERT INTO Livro (isbn, titulo, ano_publicacao, id_autor, id_categoria) VALUES 
('9788500001', 'Dom Casmurro', 1899, 1, 1),
('9788500002', 'Harry Potter e a Pedra Filosofal', 1997, 2, 2),
('9788500003', '1984', 1949, 3, 3);

-- Inserindo Exemplares Físicos
INSERT INTO Exemplar (isbn, situacao) VALUES 
('9788500001', 'Disponível'), -- Cópia 1 de Dom Casmurro
('9788500001', 'Emprestado'), -- Cópia 2 de Dom Casmurro
('9788500002', 'Disponível'), -- Cópia 1 de Harry Potter
('9788500003', 'Emprestado'); -- Cópia 1 de 1984

-- Inserindo Leitores
INSERT INTO Leitor (nome, cpf, telefone, email) VALUES 
('João Silva', '11122233344', '11999998888', 'joao@email.com'),
('Maria Oliveira', '55566677788', '11988887777', 'maria@email.com'),
('Carlos Souza', '99988877766', '11977776666', 'carlos@email.com');

-- Inserindo Empréstimos (Vinculando Leitor a Exemplar)
INSERT INTO Emprestimo (data_retirada, data_prevista, id_leitor, id_exemplar) VALUES 
('2023-11-01', '2023-11-15', 1, 2), -- João pegou Dom Casmurro (Exemplar 2)
('2023-11-10', '2023-11-24', 2, 4); -- Maria pegou 1984 (Exemplar 4)
-- Criação do Banco de Dados
CREATE DATABASE biblioteca_leitura_viva;
USE biblioteca_leitura_viva;

-- Tabela Autor
CREATE TABLE Autor (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

-- Tabela Categoria
CREATE TABLE Categoria (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(50) NOT NULL
);

-- Tabela Livro
CREATE TABLE Livro (
    isbn VARCHAR(13) PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    ano_publicacao INT,
    id_autor INT,
    id_categoria INT,
    FOREIGN KEY (id_autor) REFERENCES Autor(id_autor),
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria)
);

-- Tabela Exemplar
CREATE TABLE Exemplar (
    id_exemplar INT AUTO_INCREMENT PRIMARY KEY,
    isbn VARCHAR(13),
    situacao VARCHAR(20) DEFAULT 'Disponível', -- Disponível, Emprestado, Danificado
    FOREIGN KEY (isbn) REFERENCES Livro(isbn)
);

-- Tabela Leitor
CREATE TABLE Leitor (
    id_leitor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(100)
);

-- Tabela Emprestimo
CREATE TABLE Emprestimo (
    id_emprestimo INT AUTO_INCREMENT PRIMARY KEY,
    data_retirada DATE NOT NULL,
    data_prevista DATE NOT NULL,
    data_devolucao DATE,
    id_leitor INT,
    id_exemplar INT,
    FOREIGN KEY (id_leitor) REFERENCES Leitor(id_leitor),
    FOREIGN KEY (id_exemplar) REFERENCES Exemplar(id_exemplar)
);
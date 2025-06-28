
-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS sdb_livraria;
USE sdb_livraria;

-- Tabela Cliente
CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(45),
    Telefone VARCHAR(45),
    Endereco VARCHAR(100)
);

-- Tabela Pessoa Fisica (Especialização de Cliente)
CREATE TABLE Pessoa_fisica (
    idPessoa_fisica INT PRIMARY KEY,
    RG VARCHAR(10),
    CPF VARCHAR(12),
    FOREIGN KEY (idPessoa_fisica) REFERENCES Cliente(idCliente)
);

-- Tabela Pessoa Juridica (Especialização de Cliente)
CREATE TABLE Pessoa_juridica (
    idPessoa_juridica INT PRIMARY KEY,
    CNPJ VARCHAR(45),
    IE VARCHAR(45),
    FOREIGN KEY (idPessoa_juridica) REFERENCES Cliente(idCliente)
);

-- Tabela Editora
CREATE TABLE Editora (
    idEditora INT PRIMARY KEY AUTO_INCREMENT,
    Nome_Editora VARCHAR(100) NOT NULL,
    Telefone VARCHAR(45),
    Endereco VARCHAR(100),
    CNPJ VARCHAR(45),
    Email VARCHAR(45)
);

-- Tabela Livro
CREATE TABLE Livro (
    idLivro INT PRIMARY KEY AUTO_INCREMENT,
    Titulo VARCHAR(200) NOT NULL,
    Ano_publicacao DATE,
    Categoria VARCHAR(45),
    ISBN VARCHAR(10),
    Autor VARCHAR(100),
    Valor DECIMAL(10,2),
    idEditora INT,
    FOREIGN KEY (idEditora) REFERENCES Editora(idEditora)
);

-- Tabela Estoque
CREATE TABLE Estoque (
    idEstoque INT PRIMARY KEY AUTO_INCREMENT,
    idLivro INT NOT NULL,
    Quantidade INT NOT NULL,
    Localizacao VARCHAR(100),
    FOREIGN KEY (idLivro) REFERENCES Livro(idLivro)
);

-- Tabela Pedido
CREATE TABLE Pedido (
    idPedido INT PRIMARY KEY AUTO_INCREMENT,
    idCliente INT NOT NULL,
    Data DATETIME NOT NULL,
    Valor_pedido DECIMAL(10,2),
    Descricao VARCHAR(300),
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);

-- Tabela Associativa Pedido_Livro (Pedido_Livro)
CREATE TABLE Pedido_Livro (
    idPedido INT,
    idLivro INT,
    Quantidade INT NOT NULL,
    PRIMARY KEY (idPedido, idLivro),
    FOREIGN KEY (idPedido) REFERENCES Pedido(idPedido),
    FOREIGN KEY (idLivro) REFERENCES Livro(idLivro)
);

-- Criação de tabelas de vendas
CREATE TABLE produtos (
    id_produto INT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2)
);
CREATE TABLE vendas (
    id_venda INT PRIMARY KEY,
    id_produto INT,
    data_venda DATE,
    quantidade INT,
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

-- Criação de tabelas produtos
--COMANDO AUTO INCREMENT RETIRADO DEVIDO AO MODELO DE INSERCAO CONTER OS ID'S
CREATE TABLE produtos (
    --id_produto INT AUTO_INCREMENT PRIMARY KEY,
    id_produto INT,
    nome VARCHAR(100),
    preco DECIMAL(10,2)
);

-- Criação de tabelas de vendas
--COMANDO AUTO INCREMENT RETIRADO DEVIDO AO MODELO DE INSERCAO CONTER OS ID'S
CREATE TABLE vendas (
    --id_venda INT PRIMARY KEY, 
    id_venda INT,
    id_produto INT,
    data_venda DATE,
    quantidade INT,
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

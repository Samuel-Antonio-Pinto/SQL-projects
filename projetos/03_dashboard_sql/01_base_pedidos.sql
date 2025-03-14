-- Criação de tabelas de pedidos
CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY,
    cliente VARCHAR(100),
    data_pedido DATE,
    valor_total DECIMAL(10,2)
);

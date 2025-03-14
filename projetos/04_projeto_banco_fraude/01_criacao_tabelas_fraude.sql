-- Criação de tabelas para análise de fraude
CREATE TABLE transacoes (
    id_transacao INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente  INT  AUTO_INCREMENT PRIMARY KEY,
    valor DECIMAL(10,2),
    data_transacao DATE,
    tipo_transacao VARCHAR(50)
);

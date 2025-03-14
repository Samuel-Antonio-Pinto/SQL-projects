-- MODELO DE BANCO DE DADOS PARA MONITORAMENTO FINANCEIRO

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    data_cadastro DATE
);

CREATE TABLE contas (
    id_conta INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    tipo_conta VARCHAR(50), -- Corrente, Poupança, etc
    saldo DECIMAL(12,2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE transacoes_pix (
    id_pix INT AUTO_INCREMENT PRIMARY KEY,
    id_conta INT,
    valor DECIMAL(10,2),
    data_transacao DATE,
    tipo_transacao VARCHAR(20), -- Envio ou Recebimento
    FOREIGN KEY (id_conta) REFERENCES contas(id_conta)
);

CREATE TABLE transacoes_cartao_credito (
    id_credito INT AUTO_INCREMENT PRIMARY KEY,
    id_conta INT,
    valor DECIMAL(10,2),
    data_transacao DATE,
    estabelecimento VARCHAR(100),
    FOREIGN KEY (id_conta) REFERENCES contas(id_conta)
);

CREATE TABLE transacoes_cartao_debito (
    id_debito INT AUTO_INCREMENT PRIMARY KEY,
    id_conta INT,
    valor DECIMAL(10,2),
    data_transacao DATE,
    estabelecimento VARCHAR(100),
    FOREIGN KEY (id_conta) REFERENCES contas(id_conta)
);


-- INSERE OS DADOS DE CLIENTE E CONTAS
INSERT INTO clientes (nome, email, data_cadastro) VALUES ('Camila Rocha', 'lnovaes@yahoo.com.br', '2023-06-23');
INSERT INTO contas (id_cliente, tipo_conta, saldo) VALUES (1, 'Corrente', 1225.1);
INSERT INTO clientes (nome, email, data_cadastro) VALUES ('Vitória Lima', 'gsouza@hotmail.com', '2024-10-01');
INSERT INTO contas (id_cliente, tipo_conta, saldo) VALUES (2, 'Poupança', 3204.03);
INSERT INTO clientes (nome, email, data_cadastro) VALUES ('Melissa Gomes', 'mariateixeira@ig.com.br', '2024-07-13');
INSERT INTO contas (id_cliente, tipo_conta, saldo) VALUES (3, 'Corrente', 7628.24);
INSERT INTO clientes (nome, email, data_cadastro) VALUES ('Dra. Ana Luiza Monteiro', 'ana-laura27@uol.com.br', '2024-02-17');
INSERT INTO contas (id_cliente, tipo_conta, saldo) VALUES (4, 'Corrente', 6314.43);
INSERT INTO clientes (nome, email, data_cadastro) VALUES ('Luigi Peixoto', 'ryanrodrigues@uol.com.br', '2024-06-21');
INSERT INTO contas (id_cliente, tipo_conta, saldo) VALUES (5, 'Corrente', 1268.17);
INSERT INTO clientes (nome, email, data_cadastro) VALUES ('Catarina Freitas', 'ana-vitoriajesus@novaes.org', '2024-07-27');
INSERT INTO contas (id_cliente, tipo_conta, saldo) VALUES (6, 'Corrente', 3093.95);
INSERT INTO clientes (nome, email, data_cadastro) VALUES ('Sr. Levi da Conceição', 'joao-guilherme81@uol.com.br', '2024-07-22');
INSERT INTO contas (id_cliente, tipo_conta, saldo) VALUES (7, 'Corrente', 6051.21);
INSERT INTO clientes (nome, email, data_cadastro) VALUES ('Nathan Lopes', 'gustavo-henriqueda-rosa@fogaca.net', '2023-11-25');
INSERT INTO contas (id_cliente, tipo_conta, saldo) VALUES (8, 'Poupança', 2983.97);
INSERT INTO clientes (nome, email, data_cadastro) VALUES ('Bruna Ramos', 'mlopes@caldeira.net', '2023-08-19');
INSERT INTO contas (id_cliente, tipo_conta, saldo) VALUES (9, 'Poupança', 8284.87);
INSERT INTO clientes (nome, email, data_cadastro) VALUES ('Eduarda Monteiro', 'ana-luizaviana@bol.com.br', '2024-05-22');
INSERT INTO contas (id_cliente, tipo_conta, saldo) VALUES (10, 'Corrente', 7829.27);
INSERT INTO clientes (nome, email, data_cadastro) VALUES ('Alícia Barros', 'bianca45@gmail.com', '2024-09-09');
INSERT INTO contas (id_cliente, tipo_conta, saldo) VALUES (11, 'Corrente', 7283.25);
INSERT INTO clientes (nome, email, data_cadastro) VALUES ('Vitória Silveira', 'pda-conceicao@das.com', '2023-05-18');
INSERT INTO contas (id_cliente, tipo_conta, saldo) VALUES (12, 'Poupança', 3500.84);
INSERT INTO clientes (nome, email, data_cadastro) VALUES ('Sra. Milena Vieira', 'joao-vitor89@bol.com.br', '2024-07-22');
INSERT INTO contas (id_cliente, tipo_conta, saldo) VALUES (13, 'Corrente', 9614.92);
INSERT INTO clientes (nome, email, data_cadastro) VALUES ('João Vitor da Paz', 'joao-guilhermenogueira@gmail.com', '2025-01-23');
INSERT INTO contas (id_cliente, tipo_conta, saldo) VALUES (14, 'Poupança', 1919.89);
INSERT INTO clientes (nome, email, data_cadastro) VALUES ('Maria Alice Alves', 'xaraujo@castro.net', '2023-10-20');
INSERT INTO contas (id_cliente, tipo_conta, saldo) VALUES (15, 'Poupança', 1870.45);
INSERT INTO clientes (nome, email, data_cadastro) VALUES ('Vitor Hugo Gonçalves', 'pietrapereira@gmail.com', '2023-08-14');
INSERT INTO contas (id_cliente, tipo_conta, saldo) VALUES (16, 'Poupança', 6433.53);
INSERT INTO clientes (nome, email, data_cadastro) VALUES ('Isadora Cavalcanti', 'valentinarodrigues@hotmail.com', '2024-01-11');
INSERT INTO contas (id_cliente, tipo_conta, saldo) VALUES (17, 'Corrente', 7567.59);
INSERT INTO clientes (nome, email, data_cadastro) VALUES ('Nicole da Rocha', 'cunhaeduarda@moraes.br', '2024-07-11');
INSERT INTO contas (id_cliente, tipo_conta, saldo) VALUES (18, 'Corrente', 9758.04);
INSERT INTO clientes (nome, email, data_cadastro) VALUES ('Dr. Samuel Monteiro', 'juliacardoso@uol.com.br', '2023-09-03');
INSERT INTO contas (id_cliente, tipo_conta, saldo) VALUES (19, 'Poupança', 1709.2);
INSERT INTO clientes (nome, email, data_cadastro) VALUES ('Sra. Ana Júlia da Rosa', 'kazevedo@costa.org', '2023-11-19');
INSERT INTO contas (id_cliente, tipo_conta, saldo) VALUES (20, 'Poupança', 8464.64);

-- Transações PIX
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (20, 2657.5, '2024-11-30', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (19, 584.94, '2024-10-11', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (2, 1987.18, '2024-10-19', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (3, 2567.4, '2024-10-23', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (13, 841.14, '2024-11-03', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (6, 1116.84, '2024-12-29', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (9, 2108.44, '2025-02-17', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (20, 1908.59, '2024-10-26', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (6, 1392.16, '2024-12-18', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (18, 666.65, '2024-12-12', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (2, 694.85, '2025-03-09', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (11, 1209.48, '2024-10-02', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (7, 2740.28, '2024-12-08', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (7, 1969.76, '2024-12-11', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (15, 437.19, '2025-02-27', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (8, 2237.52, '2024-12-20', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (19, 1291.02, '2024-11-10', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (12, 665.77, '2024-10-28', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (17, 1485.61, '2024-10-14', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (4, 467.0, '2024-12-01', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (14, 1793.26, '2024-09-25', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (13, 1791.71, '2024-12-05', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (17, 761.73, '2025-01-02', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (4, 2048.31, '2024-10-14', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (11, 343.54, '2025-02-04', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (6, 1366.63, '2025-01-11', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (17, 2288.27, '2025-01-07', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (10, 2526.59, '2024-12-15', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (5, 1128.0, '2024-11-08', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (18, 2860.96, '2024-10-21', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (20, 979.23, '2024-10-16', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (4, 2788.0, '2024-12-10', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (8, 183.2, '2024-09-24', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (3, 2198.4, '2024-12-28', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (18, 2299.84, '2024-10-17', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (16, 2841.08, '2024-10-24', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (9, 1587.74, '2025-02-07', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (7, 2787.45, '2024-12-20', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (10, 1202.99, '2024-12-16', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (15, 2699.85, '2024-09-23', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (4, 751.24, '2025-02-27', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (11, 72.89, '2024-12-26', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (19, 668.45, '2024-11-06', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (2, 694.54, '2025-02-16', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (11, 221.86, '2025-02-03', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (9, 2010.24, '2024-12-06', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (18, 405.61, '2024-12-01', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (8, 2356.01, '2024-12-24', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (7, 292.03, '2025-03-02', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (12, 1276.5, '2024-10-05', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (2, 2023.36, '2024-10-14', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (2, 1213.84, '2025-03-03', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (4, 753.48, '2025-02-18', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (18, 1351.35, '2024-10-29', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (6, 842.85, '2025-01-25', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (3, 1334.96, '2024-11-17', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (2, 1959.91, '2024-10-21', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (3, 2779.84, '2024-09-17', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (6, 1225.18, '2024-12-09', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (7, 2595.3, '2024-10-03', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (6, 1143.13, '2024-10-15', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (9, 2780.29, '2025-02-28', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (10, 1274.79, '2024-11-27', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (5, 577.79, '2024-11-23', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (2, 1741.75, '2025-02-25', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (11, 180.92, '2024-11-26', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (17, 2758.97, '2024-11-20', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (2, 2882.73, '2024-11-07', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (6, 214.88, '2025-02-28', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (8, 1217.29, '2024-10-26', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (19, 1787.61, '2025-02-22', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (14, 1975.55, '2024-12-29', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (9, 620.74, '2024-11-23', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (8, 804.19, '2024-09-27', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (10, 1377.1, '2024-09-28', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (1, 1380.27, '2024-11-17', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (3, 1617.53, '2024-11-09', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (5, 2800.45, '2025-03-10', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (8, 1114.89, '2024-11-28', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (15, 2502.9, '2024-12-01', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (20, 2951.72, '2024-11-26', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (18, 905.14, '2025-01-01', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (5, 800.75, '2025-02-25', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (18, 474.79, '2024-10-04', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (20, 639.78, '2024-12-03', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (7, 2065.62, '2025-03-03', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (17, 1470.71, '2024-11-24', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (3, 1906.51, '2024-10-17', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (2, 20.6, '2024-12-11', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (9, 493.13, '2024-10-21', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (18, 2119.95, '2024-10-01', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (4, 234.98, '2024-09-26', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (18, 117.72, '2024-09-18', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (19, 1662.05, '2024-11-16', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (5, 135.07, '2024-11-09', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (2, 2697.78, '2024-12-28', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (8, 2004.13, '2024-12-11', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (18, 2653.56, '2024-09-20', 'Recebimento');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (20, 2250.94, '2025-01-06', 'Envio');
INSERT INTO transacoes_pix (id_conta, valor, data_transacao, tipo_transacao) VALUES (6, 2928.86, '2024-10-27', 'Envio');

-- Transações Cartão de Crédito
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (14, 172.69, '2024-11-24', 'da Paz');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (11, 3922.81, '2024-09-29', 'da Luz');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (14, 4021.06, '2025-03-02', 'Aragão - EI');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (8, 1370.69, '2024-09-25', 'da Rosa');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (4, 1943.58, '2024-11-12', 'Vieira Rocha - ME');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (2, 4300.04, '2025-01-30', 'Duarte');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (8, 1037.89, '2024-10-11', 'Novaes');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (15, 1780.81, '2024-09-21', 'Fernandes da Rosa - EI');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (8, 1153.47, '2025-01-19', 'Silva Melo S.A.');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (7, 2022.41, '2025-01-25', 'Dias Moura S.A.');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (9, 4328.55, '2024-10-14', 'Melo S/A');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (9, 1788.17, '2024-10-31', 'Carvalho');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (17, 2028.41, '2025-01-09', 'Fogaça');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (18, 1689.19, '2024-11-16', 'da Conceição');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (1, 620.94, '2024-10-22', 'Gomes S.A.');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (9, 933.91, '2024-12-23', 'Rocha Aragão S.A.');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (9, 239.37, '2024-12-09', 'Melo Ltda.');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (20, 2201.09, '2025-02-27', 'Pires');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (11, 2210.15, '2025-01-09', 'Porto');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (17, 622.45, '2025-02-19', 'Sales Cunha - ME');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (19, 990.89, '2025-03-12', 'Jesus Correia S.A.');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (2, 3558.49, '2025-01-06', 'da Luz Teixeira - EI');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (1, 2623.61, '2025-01-20', 'Pereira');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (18, 3449.94, '2025-02-15', 'Carvalho S/A');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (7, 1852.9, '2025-02-11', 'das Neves');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (3, 4746.93, '2024-11-02', 'da Cruz');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (11, 3134.62, '2024-10-30', 'Ribeiro Peixoto S/A');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (4, 3612.78, '2025-03-03', 'Azevedo');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (10, 2560.26, '2024-10-09', 'Peixoto');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (14, 1664.61, '2024-09-15', 'da Cruz S/A');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (10, 2794.34, '2025-01-23', 'Nascimento');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (7, 2131.21, '2025-01-22', 'Carvalho Araújo Ltda.');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (13, 3402.72, '2024-11-13', 'Ferreira Costela - ME');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (6, 3096.8, '2025-03-04', 'Rocha S/A');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (10, 2060.07, '2024-12-22', 'Porto Melo - ME');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (1, 1554.18, '2024-12-28', 'Oliveira');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (7, 2177.95, '2025-03-03', 'Costela e Filhos');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (19, 3052.97, '2024-09-24', 'Souza Rodrigues S/A');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (11, 2351.69, '2024-09-25', 'Gomes Caldeira - ME');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (15, 3394.35, '2025-02-10', 'Teixeira');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (17, 2392.27, '2024-09-21', 'Caldeira Cardoso e Filhos');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (6, 3311.31, '2025-02-23', 'Lima');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (10, 2601.49, '2025-02-18', 'Caldeira');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (20, 1709.18, '2024-10-19', 'Nunes Teixeira e Filhos');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (8, 3380.34, '2025-01-13', 'Pinto');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (8, 4042.49, '2024-10-09', 'Ferreira');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (5, 170.91, '2025-01-01', 'da Conceição');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (8, 4920.48, '2025-01-13', 'Teixeira');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (20, 4256.2, '2025-03-01', 'Mendes');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (3, 2304.31, '2025-01-23', 'Cunha Nascimento S.A.');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (19, 1012.45, '2024-09-23', 'Santos');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (13, 2497.17, '2025-01-17', 'Ferreira Castro Ltda.');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (8, 780.48, '2025-01-28', 'Rocha Souza e Filhos');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (1, 4468.67, '2024-10-17', 'Gonçalves e Filhos');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (4, 3903.18, '2025-01-05', 'Silveira');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (8, 920.64, '2024-11-18', 'Nunes S/A');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (17, 2349.52, '2024-09-28', 'Cardoso Cardoso - EI');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (18, 1283.53, '2024-12-08', 'da Rosa Cardoso S/A');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (4, 2309.49, '2024-10-16', 'Monteiro');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (15, 3354.51, '2024-09-20', 'Souza');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (18, 2997.49, '2025-01-08', 'da Costa S.A.');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (15, 3082.63, '2024-11-17', 'Vieira Pereira - EI');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (17, 2162.37, '2025-02-18', 'Viana');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (18, 2257.27, '2025-01-11', 'Moreira - ME');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (6, 3731.09, '2025-03-03', 'Duarte Souza - ME');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (16, 2277.85, '2025-01-23', 'Carvalho');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (8, 4207.32, '2025-01-05', 'Oliveira');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (9, 3840.78, '2024-12-16', 'Moraes Ltda.');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (17, 2448.76, '2025-02-13', 'da Mota - EI');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (8, 1409.26, '2025-03-05', 'Moura');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (3, 3582.05, '2024-11-24', 'Gonçalves Dias S/A');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (8, 1394.99, '2024-10-17', 'da Mata');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (11, 4470.48, '2024-12-25', 'da Conceição');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (3, 734.95, '2024-11-28', 'da Mata');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (8, 1946.02, '2025-01-19', 'Silva Novaes Ltda.');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (5, 3546.77, '2024-10-27', 'Ramos');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (3, 2103.6, '2024-10-21', 'Viana');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (11, 2735.93, '2024-11-23', 'Fogaça');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (14, 358.22, '2025-02-17', 'Ribeiro Araújo S.A.');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (14, 1977.91, '2024-12-14', 'Silva');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (19, 4733.01, '2024-09-26', 'da Rosa Martins - ME');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (1, 4290.82, '2024-09-17', 'da Luz Ltda.');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (19, 1932.89, '2024-12-13', 'Pereira - ME');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (1, 4716.57, '2024-11-04', 'Viana');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (10, 3779.7, '2025-03-03', 'Silveira');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (14, 2714.19, '2025-03-05', 'Alves Carvalho - EI');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (18, 4009.35, '2025-01-23', 'Farias Moreira S.A.');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (8, 2466.74, '2024-09-28', 'Almeida');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (9, 2207.39, '2025-01-15', 'Peixoto - EI');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (1, 1974.84, '2024-10-18', 'Rezende');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (13, 3634.7, '2024-09-12', 'da Rosa');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (15, 4601.73, '2024-09-18', 'Pinto');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (20, 2693.91, '2025-02-03', 'Pereira Barros Ltda.');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (13, 2979.87, '2025-02-06', 'Fernandes');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (1, 465.54, '2024-11-26', 'Martins Correia - ME');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (14, 721.71, '2024-11-12', 'Ribeiro S.A.');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (15, 949.56, '2024-10-01', 'Ramos');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (9, 1926.56, '2024-11-29', 'Ribeiro Castro Ltda.');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (7, 2300.76, '2025-01-02', 'Pereira - EI');
INSERT INTO transacoes_cartao_credito (id_conta, valor, data_transacao, estabelecimento) VALUES (11, 3818.09, '2025-02-06', 'Gomes');

-- Transações Cartão de Débito
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (13, 563.73, '2025-03-12', 'Pires');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (14, 512.02, '2024-12-31', 'da Conceição');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (3, 945.91, '2024-10-17', 'Castro');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (18, 113.65, '2024-10-17', 'Monteiro e Filhos');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (12, 456.2, '2025-01-08', 'Campos S/A');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (3, 1564.65, '2025-03-08', 'Correia Farias - ME');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (2, 1510.92, '2025-01-13', 'Gonçalves - EI');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (8, 406.73, '2024-12-17', 'Moreira e Filhos');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (1, 1246.46, '2024-12-29', 'Caldeira Melo - ME');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (8, 261.18, '2024-10-05', 'das Neves - ME');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (4, 1132.3, '2025-01-29', 'Cunha');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (7, 935.42, '2024-11-25', 'Silveira da Costa e Filhos');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (9, 1536.13, '2024-10-26', 'Jesus - EI');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (6, 1215.73, '2024-12-19', 'da Cunha - EI');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (4, 1557.81, '2024-10-08', 'Novaes');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (6, 1929.79, '2025-01-26', 'Santos');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (4, 1161.58, '2025-02-11', 'Fogaça');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (10, 1155.84, '2024-12-31', 'da Luz');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (13, 799.34, '2024-10-13', 'Pereira');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (7, 161.23, '2024-12-23', 'Martins');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (8, 212.78, '2025-01-30', 'Ramos Pereira Ltda.');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (10, 1702.08, '2025-03-13', 'Gonçalves');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (20, 1613.0, '2024-10-28', 'Moraes Oliveira Ltda.');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (19, 1567.44, '2025-02-15', 'Pinto');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (12, 1070.16, '2024-09-15', 'Pereira e Filhos');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (12, 147.22, '2024-12-10', 'da Mota');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (11, 35.18, '2025-03-09', 'Freitas');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (14, 1646.44, '2025-01-07', 'Melo');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (4, 872.71, '2025-01-31', 'Souza S/A');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (12, 1274.81, '2024-12-20', 'Moura');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (15, 1417.54, '2025-01-31', 'Duarte Barros e Filhos');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (14, 360.51, '2024-11-28', 'Gonçalves das Neves - EI');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (17, 1931.29, '2025-03-13', 'Silveira');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (9, 1235.67, '2024-12-02', 'Campos Peixoto - ME');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (18, 1551.54, '2025-01-06', 'Pereira Araújo S/A');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (15, 876.79, '2024-12-23', 'Dias Cunha - ME');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (19, 544.11, '2024-11-28', 'Azevedo Silva Ltda.');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (8, 1663.15, '2024-09-23', 'Rodrigues');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (3, 565.07, '2024-09-30', 'Araújo Viana - ME');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (15, 495.29, '2024-12-24', 'Costa S/A');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (15, 1144.0, '2024-10-02', 'Fernandes');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (13, 679.43, '2025-01-04', 'Caldeira Moraes Ltda.');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (16, 1703.4, '2024-10-11', 'Cavalcanti');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (6, 980.22, '2024-11-05', 'Azevedo - ME');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (12, 1597.69, '2024-10-08', 'Gonçalves Monteiro Ltda.');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (11, 566.52, '2025-03-05', 'Teixeira');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (20, 1405.36, '2024-10-08', 'Rodrigues');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (9, 1116.02, '2025-02-27', 'Fogaça Sales - ME');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (17, 1896.64, '2024-12-18', 'Caldeira');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (3, 490.3, '2024-10-02', 'Fernandes');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (14, 982.27, '2025-03-09', 'Rezende');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (8, 1384.31, '2024-12-20', 'Nascimento Ltda.');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (16, 901.87, '2024-11-19', 'Lima Ferreira - EI');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (1, 195.18, '2024-12-23', 'Silveira Mendes S.A.');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (8, 814.76, '2025-02-13', 'da Cruz Mendes Ltda.');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (8, 619.35, '2024-12-29', 'Gomes');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (19, 744.35, '2024-12-06', 'Cardoso - ME');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (18, 1066.53, '2024-11-06', 'Fogaça');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (14, 1993.3, '2025-02-28', 'da Costa - ME');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (18, 668.27, '2024-10-24', 'Dias S.A.');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (15, 549.12, '2024-10-18', 'Santos Castro Ltda.');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (9, 468.77, '2025-01-31', 'Alves');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (7, 637.94, '2025-02-22', 'Pinto - EI');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (18, 1902.25, '2024-10-19', 'Pinto');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (6, 391.17, '2024-11-30', 'da Conceição S.A.');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (16, 560.23, '2024-10-22', 'Peixoto S.A.');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (19, 1953.45, '2024-10-08', 'Cunha');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (17, 1197.61, '2025-02-16', 'Costela');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (4, 1666.93, '2024-11-16', 'Fogaça');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (10, 462.69, '2024-10-02', 'Dias Oliveira - ME');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (6, 611.51, '2024-11-24', 'Barbosa');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (18, 261.9, '2025-02-15', 'da Luz');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (2, 1948.85, '2025-01-03', 'Barros');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (18, 591.35, '2024-10-18', 'Peixoto S.A.');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (5, 1279.36, '2025-01-20', 'Lopes');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (16, 214.15, '2024-11-29', 'Jesus Aragão - EI');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (1, 1152.39, '2025-01-14', 'Lopes Rocha Ltda.');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (16, 962.64, '2025-02-12', 'Silva Pinto e Filhos');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (11, 376.88, '2024-11-11', 'Alves S/A');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (2, 512.43, '2024-12-29', 'Barbosa Ltda.');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (16, 237.03, '2024-11-23', 'Gomes Silva S/A');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (3, 807.41, '2024-11-20', 'Castro');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (3, 1158.27, '2024-09-25', 'Rocha Mendes e Filhos');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (2, 311.94, '2024-09-24', 'Gonçalves - EI');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (19, 1898.76, '2024-10-17', 'Barbosa');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (3, 1987.9, '2024-10-28', 'Jesus - ME');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (4, 1120.57, '2024-11-26', 'Peixoto');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (14, 1216.57, '2025-03-13', 'Nascimento');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (20, 459.12, '2025-02-21', 'Aragão - ME');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (17, 766.95, '2025-01-22', 'Cavalcanti Jesus S/A');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (15, 601.73, '2024-10-21', 'Ferreira');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (19, 1980.16, '2025-03-08', 'Moraes e Filhos');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (10, 1141.57, '2024-12-25', 'da Conceição');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (2, 1223.17, '2024-09-19', 'Almeida');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (4, 1895.7, '2024-09-29', 'Aragão - EI');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (7, 1254.77, '2024-11-30', 'Carvalho Vieira - EI');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (9, 1324.25, '2024-10-03', 'Ramos');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (6, 487.33, '2025-02-10', 'Araújo da Paz - ME');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (18, 159.38, '2024-11-23', 'Moreira');
INSERT INTO transacoes_cartao_debito (id_conta, valor, data_transacao, estabelecimento) VALUES (1, 822.95, '2025-01-26', 'Barbosa');


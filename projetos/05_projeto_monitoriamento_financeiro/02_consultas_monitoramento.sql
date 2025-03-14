
-- Total de transações por tipo (PIX)
SELECT tipo_transacao, COUNT(*) FROM transacoes_pix GROUP BY tipo_transacao;

-- Valor total movimentado via PIX
SELECT tipo_transacao, SUM(valor) AS total_valor FROM transacoes_pix GROUP BY tipo_transacao;

-- Gasto total por cliente no crédito
SELECT c.id_cliente, cl.nome, SUM(tc.valor) AS total_credito
FROM transacoes_cartao_credito tc
JOIN contas c ON tc.id_conta = c.id_conta
JOIN clientes cl ON cl.id_cliente = c.id_cliente
GROUP BY c.id_cliente, cl.nome
ORDER BY total_credito DESC;

-- Gasto total por cliente no débito
SELECT c.id_cliente, cl.nome, SUM(td.valor) AS total_debito
FROM transacoes_cartao_debito td
JOIN contas c ON td.id_conta = c.id_conta
JOIN clientes cl ON cl.id_cliente = c.id_cliente
GROUP BY c.id_cliente, cl.nome
ORDER BY total_debito DESC;

-- Total gasto por estabelecimento no crédito
SELECT estabelecimento, SUM(valor) AS total_credito
FROM transacoes_cartao_credito
GROUP BY estabelecimento
ORDER BY total_credito DESC
LIMIT 10;

-- Comparativo de volume de crédito e débito por mês
SELECT DATE_FORMAT(data_transacao, '%Y-%m') AS mes, SUM(valor) AS total_valor, 'Crédito' AS tipo
FROM transacoes_cartao_credito
GROUP BY mes
UNION ALL
SELECT DATE_FORMAT(data_transacao, '%Y-%m') AS mes, SUM(valor) AS total_valor, 'Débito' AS tipo
FROM transacoes_cartao_debito
GROUP BY mes;

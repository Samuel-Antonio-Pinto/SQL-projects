-- Consultas para detectar padrões suspeitos para valores acima de R$1.000,00
SELECT * FROM transacoes WHERE valor > 1000;

-- Total de transações por tipo
SELECT tipo_transacao, COUNT(*) AS total_transacoes
FROM transacoes
GROUP BY tipo_transacao
ORDER BY total_transacoes DESC;


-- Valor total por tipo de transação
SELECT tipo_transacao, SUM(valor) AS total_valor
FROM transacoes
GROUP BY tipo_transacao
ORDER BY total_valor DESC;


-- Ticket médio por tipo de transação
SELECT tipo_transacao, AVG(valor) AS ticket_medio
FROM transacoes
GROUP BY tipo_transacao
ORDER BY ticket_medio DESC;


-- Volume financeiro por mês
SELECT DATE_FORMAT(data_transacao, '%Y-%m') AS mes, SUM(valor) AS total_valor
FROM transacoes
GROUP BY mes
ORDER BY mes;


-- Número de transações por mês
SELECT DATE_FORMAT(data_transacao, '%Y-%m') AS mes, COUNT(*) AS total_transacoes
FROM transacoes
GROUP BY mes
ORDER BY mes;


-- Top 10 maiores transações
SELECT * FROM transacoes
ORDER BY valor DESC
LIMIT 10;
-- Consultas para alimentar dashboards
SELECT cliente, SUM(valor_total) AS total_compras
FROM pedidos
GROUP BY cliente;


-- Total de pedidos por cliente

SELECT id_cliente, COUNT(*) AS total_pedidos
FROM pedidos
GROUP BY id_cliente
ORDER BY total_pedidos DESC;


-- Total de valor vendido por cliente

SELECT id_cliente, SUM(valor_total) AS total_vendas
FROM pedidos
GROUP BY id_cliente
ORDER BY total_vendas DESC;


-- Ticket médio por cliente

SELECT id_cliente, AVG(valor_total) AS ticket_medio
FROM pedidos
GROUP BY id_cliente
ORDER BY ticket_medio DESC;


-- Total de pedidos por mês

SELECT DATE_FORMAT(data_pedido, '%Y-%m') AS mes, COUNT(*) AS total_pedidos
FROM pedidos
GROUP BY mes
ORDER BY mes;


-- Valor total vendido por mês

SELECT DATE_FORMAT(data_pedido, '%Y-%m') AS mes, SUM(valor_total) AS total_vendas
FROM pedidos
GROUP BY mes
ORDER BY mes;


-- Top 10 clientes com maior valor total de pedidos

SELECT id_cliente, SUM(valor_total) AS total_compras
FROM pedidos
GROUP BY id_cliente
ORDER BY total_compras DESC
LIMIT 10;
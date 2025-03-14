-- Consultas para alimentar dashboards
SELECT cliente, SUM(valor_total) AS total_compras
FROM pedidos
GROUP BY cliente;

-- Consultas de KPIs
SELECT p.nome, SUM(v.quantidade) AS total_vendido
FROM vendas v
JOIN produtos p ON v.id_produto = p.id_produto
GROUP BY p.nome;

-- Consultas de KPIs Total de vendas por produto
SELECT p.nome, SUM(v.quantidade) AS total_vendido
FROM vendas v
JOIN produtos p ON v.id_produto = p.id_produto
GROUP BY p.nome;

-- Total de vendas por mês
SELECT DATE_FORMAT(data_venda, '%Y-%m') AS mes, SUM(quantidade) AS total_vendido
FROM vendas
GROUP BY mes
ORDER BY mes;

-- Média de vendas por produto
SELECT id_produto, AVG(quantidade) AS media_vendida
FROM vendas
GROUP BY id_produto
ORDER BY media_vendida DESC;

-- Dias com maior volume de vendas
SELECT data_venda, SUM(quantidade) AS total_vendido
FROM vendas
GROUP BY data_venda
ORDER BY total_vendido DESC
LIMIT 10;

-- Ranking dos produtos mais vendidos (com nomes dos produtos)
SELECT p.nome, SUM(v.quantidade) AS total_vendido
FROM vendas v
JOIN produtos p ON v.id_produto = p.id_produto
GROUP BY p.nome
ORDER BY total_vendido DESC;

-- Venda total por produto com valor financeiro
SELECT p.nome, SUM(v.quantidade * p.preco) AS receita_total
FROM vendas v
JOIN produtos p ON v.id_produto = p.id_produto
GROUP BY p.nome
ORDER BY receita_total DESC;

-- Receita mensal total
SELECT DATE_FORMAT(v.data_venda, '%Y-%m') AS mes, SUM(v.quantidade * p.preco) AS receita_mensal
FROM vendas v
JOIN produtos p ON v.id_produto = p.id_produto
GROUP BY mes
ORDER BY mes;

-- Ticket médio por venda (valor médio por venda)
SELECT AVG(v.quantidade * p.preco) AS ticket_medio
FROM vendas v
JOIN produtos p ON v.id_produto = p.id_produto;
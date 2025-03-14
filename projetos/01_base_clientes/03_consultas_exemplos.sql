-- 1. Total de clientes cadastrados
SELECT COUNT(*) AS total_clientes
FROM clientes;

-- 2. Clientes com cadastro apos 01/10/2024
SELECT * FROM clientes;
SELECT nome, email FROM clientes WHERE data_cadastro > '2024-01-10';

-- 3. Clientes cadastrados por mês
SELECT DATE_FORMAT(data_cadastro, '%Y-%m') AS mes, COUNT(*) AS total_clientes
FROM clientes
GROUP BY mes
ORDER BY mes;

-- Clientes mais antigos (primeiros a se cadastrarem)
SELECT * FROM clientes
ORDER BY data_cadastro ASC
LIMIT 10;

-- Clientes mais recentes (últimos cadastrados)
SELECT * FROM clientes
ORDER BY data_cadastro DESC
LIMIT 10;

-- Média de novos clientes por mês
SELECT AVG(qtd_clientes_mes) AS media_clientes_mensal
FROM (
  SELECT COUNT(*) AS qtd_clientes_mes
  FROM clientes
  GROUP BY DATE_FORMAT(data_cadastro, '%Y-%m')
) AS subconsulta;

-- Percentual de crescimento mensal de clientes
SELECT 
  mes,
  total_clientes,
  ROUND(((total_clientes - LAG(total_clientes) OVER (ORDER BY mes)) / LAG(total_clientes) OVER (ORDER BY mes)) * 100, 2) AS crescimento_percentual
FROM (
  SELECT DATE_FORMAT(data_cadastro, '%Y-%m') AS mes, COUNT(*) AS total_clientes
  FROM clientes
  GROUP BY mes
) AS crescimento;

-- Distribuição percentual dos cadastros por mês
SELECT 
  DATE_FORMAT(data_cadastro, '%Y-%m') AS mes,
  COUNT(*) AS total_clientes,
  ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM clientes), 2) AS percentual
FROM clientes
GROUP BY mes
ORDER BY mes;




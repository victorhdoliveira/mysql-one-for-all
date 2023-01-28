SELECT
MIN(p.valor) AS faturamento_minimo,
MAX(p.valor) AS faturamento_maximo,
ROUND(AVG(p.valor), 2) AS faturamento_medio,
ROUND(SUM(p.valor), 2) AS faturamento_total
FROM SpotifyClone.Planos AS p
INNER JOIN SpotifyClone.Usuarios AS u
ON p.plano_id = u.plano_id;
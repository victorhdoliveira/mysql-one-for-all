SELECT 
u.nome AS usuario,
COUNT(h.musica_id) AS qt_de_musicas_ouvidas,
ROUND(SUM(m.duracao/60),2)  AS total_minutos
FROM SpotifyClone.Usuarios AS u
INNER JOIN SpotifyClone.Historico AS h
ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.Musicas AS m
ON m.musica_id = h.musica_id
GROUP BY u.nome
ORDER BY u.nome;
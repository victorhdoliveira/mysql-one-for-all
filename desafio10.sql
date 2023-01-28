SELECT 
m.nome,
COUNT(h.musica_id) AS reproducoes
FROM SpotifyClone.Musicas AS m
INNER JOIN SpotifyClone.Historico AS h
ON m.musica_id = h.musica_id
INNER JOIN SpotifyClone.Usuarios AS u
WHERE u.usuario_id = h.usuario_id AND (plano_id = 1 OR plano_id = 4)
GROUP BY m.nome
ORDER BY m.nome;
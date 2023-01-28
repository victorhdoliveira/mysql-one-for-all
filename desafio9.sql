SELECT 
COUNT(h.musica_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.Historico AS h
INNER JOIN SpotifyClone.Usuarios AS u
ON h.usuario_id = u.usuario_id
WHERE u.nome = "Barbara Liskov";
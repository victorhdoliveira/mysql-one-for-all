SELECT 
ar.nome AS 'artista',
al.nome AS 'album',
COUNT(s.usuario_id) as 'seguidores'
FROM SpotifyClone.Artistas AS ar
INNER JOIN SpotifyClone.Albuns AS al
ON ar.artista_id = al.artista_id
INNER JOIN SpotifyClone.Seguidores AS s
ON s.artista_id = al.artista_id
GROUP BY ar.nome, al.nome
ORDER BY COUNT(s.usuario_id) DESC, ar.nome, al.nome;
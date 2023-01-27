SELECT 
ar.nome AS 'artista',
al.nome AS 'album'
FROM SpotifyClone.Artistas AS ar
INNER JOIN SpotifyClone.Albuns AS al
ON ar.artista_id = al.artista_id
WHERE ar.nome = 'ELis Regina'
ORDER BY al.nome ASC;
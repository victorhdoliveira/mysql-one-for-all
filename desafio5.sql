SELECT 
m.nome AS 'cancao',
COUNT(h.musica_id) AS 'reproducoes'
FROM SpotifyClone.Musicas AS m
INNER JOIN SpotifyClone.Historico AS h
ON h.musica_id = m.musica_id
GROUP BY h.musica_id
ORDER BY COUNT(musica_id) DESC, nome ASC
LIMIT 2;
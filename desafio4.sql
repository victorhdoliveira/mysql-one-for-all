SELECT 
u.nome AS 'usuario',
IF(YEAR(MAX(h.data_reproducao)) < 2021, 'Usuário inativo', 'Usuário ativo') AS 'status_usuario'
FROM SpotifyClone.Usuarios AS u
INNER JOIN SpotifyClone.Historico AS h
ON u.usuario_id = h.usuario_id
GROUP BY u.nome
ORDER BY u.nome;
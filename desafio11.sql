SELECT 
    m.nome AS 'nome_musica',
    CASE
        WHEN m.nome LIKE '%Bard%' THEN replace(m.nome, 'Bard', 'QA')
        WHEN m.nome LIKE '%Amar%' THEN replace(m.nome, 'Amar', 'Code Review')
        WHEN m.nome LIKE '%Pais%' THEN replace(m.nome, 'Pais', 'Pull Requests')
        WHEN m.nome LIKE '%SOUL%' THEN replace(m.nome, 'SOUL', 'CODE')
        WHEN m.nome LIKE '%SUPERSTAR%' THEN replace(m.nome, 'SUPERSTAR', 'SUPERDEV')
        ELSE m.nome
    END AS 'novo_nome' 
FROM SpotifyClone.Musicas AS m
WHERE m.nome IN ('The Bard’s Song', 'O Medo de Amar é o Medo de Ser Livre', 'Como Nossos Pais', 'BREAK MY SOUL', 'ALIEN SUPERSTAR')
ORDER BY m.nome DESC;
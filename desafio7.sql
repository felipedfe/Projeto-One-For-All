SELECT
art.nome AS artista,
alb.nome AS album, 
COUNT(seg.usuario_id) AS seguidores
FROM SpotifyClone.album AS alb
LEFT JOIN SpotifyClone.seguindo_artistas AS seg
ON alb.artista_id = seg.artista_id
LEFT JOIN SpotifyClone.artista AS art
ON alb.artista_id = art.artista_id
GROUP BY alb.nome, art.artista_id
ORDER BY seguidores DESC, artista ASC, album ASC;
SELECT
art.nome AS artista, 
alb.nome AS album
FROM SpotifyClone.album AS alb
INNER JOIN SpotifyClone.artista AS art
ON alb.artista_id = art.artista_id
AND art.nome LIKE "Walter%"
ORDER BY album ASC;
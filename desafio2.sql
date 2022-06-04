SELECT
COUNT(can.cancoes_id) AS cancoes, 
COUNT(art.artista_id) AS artistas,
COUNT(alb.album_id) AS albuns
FROM SpotifyClone.cancoes AS can
LEFT JOIN SpotifyClone.artista AS art
ON can.cancoes_id = art.artista_id
LEFT JOIN SpotifyClone.album AS alb
ON can.cancoes_id = alb.album_id;
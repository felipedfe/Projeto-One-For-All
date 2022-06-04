SELECT
usu.nome AS usuario, 
COUNT(hist.usuario_id) AS qtde_musicas_ouvidas,
ROUND(SUM(can.duracao / 60), 2) AS total_minutos
FROM SpotifyClone.usuario AS usu
INNER JOIN SpotifyClone.historico_de_reproducoes AS hist
ON usu.usuario_id = hist.usuario_id
INNER JOIN SpotifyClone.cancoes AS can
ON hist.cancoes_id = can.cancoes_id
GROUP BY hist.usuario_id
ORDER BY usu.nome ASC;

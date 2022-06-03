SELECT
	can.nome AS cancao, 
	COUNT(*) AS reproducoes
	FROM SpotifyClone.historico_de_reproducoes AS hist
    INNER JOIN SpotifyClone.cancoes AS can
		ON can.cancoes_id = hist.cancoes_id
    GROUP BY hist.cancoes_id
    ORDER BY reproducoes DESC, can.nome ASC
    LIMIT 2;

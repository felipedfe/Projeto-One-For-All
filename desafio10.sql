SELECT can.nome AS nome, COUNT(usu.usuario_id) AS reproducoes
	FROM SpotifyClone.plano AS pla
    INNER JOIN SpotifyClone.usuario AS usu
		ON pla.plano_id = usu.plano
	LEFT JOIN SpotifyClone.historico_de_reproducoes AS hist
		ON usu.usuario_id = hist.usuario_id
	INNER JOIN SpotifyClone.cancoes AS can
		ON hist.cancoes_id = can.cancoes_id
	WHERE pla.tipo = "gratuito" OR pla.tipo = "pessoal"
	GROUP BY can.nome
    ORDER BY nome ASC;
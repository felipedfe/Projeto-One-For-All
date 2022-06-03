SELECT
	MIN(valor) AS faturamento_minimo,
	MAX(valor) AS faturamento_maximo,
	ROUND(AVG(pla.valor), 2) AS faturamento_medio,
    SUM(pla.valor) AS faturamento_total
	FROM SpotifyClone.usuario AS usu
    INNER JOIN SpotifyClone.plano AS pla
		ON usu.plano = pla.plano_id

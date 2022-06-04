SELECT COUNT(cancoes_id) AS quantidade_musicas_no_historico
	FROM SpotifyClone.usuario AS usu
	INNER JOIN SpotifyClone.historico_de_reproducoes AS his
		ON usu.usuario_id = his.usuario_id AND usu.nome = "Bill"
    GROUP BY usu.usuario_id;
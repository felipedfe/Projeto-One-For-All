SELECT
usu.nome AS usuario,
IF (YEAR(MAX(hist.data_reproducao)) > 2020, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
	FROM SpotifyClone.usuario AS usu
    INNER JOIN SpotifyClone.historico_de_reproducoes AS hist
		ON usu.usuario_id = hist.usuario_id
        GROUP BY hist.usuario_id
	ORDER BY usu.nome;
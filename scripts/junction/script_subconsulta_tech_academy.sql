-- Subconsulta
SELECT *
FROM
	(
		SELECT
			ad.ra_aluno,
			a.nome,
			MIN(ad.nota), 
			MAX(ad.nota) 
		FROM 
			aluno_disciplina AS ad
		INNER JOIN
			aluno AS a ON a.ra = ad.ra_aluno
		WHERE 
			ad.codigo_disciplina = 3
		GROUP BY
			ad.ra_aluno, a.nome
		HAVING
			AVG(ad.nota) >= 8 
	) AS agrup
WHERE
	agrup.ra_aluno = 1
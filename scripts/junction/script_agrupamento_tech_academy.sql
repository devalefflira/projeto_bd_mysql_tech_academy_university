-- Agrupamento
SELECT
	ad.ra_aluno,
	MIN(ad.nota), 
    MAX(ad.nota) 
FROM 
	aluno_disciplina AS ad 
WHERE 
	ad.codigo_disciplina = 3
GROUP BY
	ad.ra_aluno
HAVING
	AVG(ad.nota) >= 8
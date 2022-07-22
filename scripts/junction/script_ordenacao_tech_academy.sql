-- Ordenação 
-- ORDER BY ASC / DESC

-- Comando 1 linha
 SELECT * FROM aluno_disciplina AS ad INNER JOIN aluno AS a ON a.ra = ad.ra_aluno ORDER BY a.nome;

-- Comando em cascata:
 SELECT * 
 FROM 
	aluno_disciplina AS ad 
 INNER JOIN 
	aluno AS a ON a.ra = ad.ra_aluno 
 WHERE
	ad.codigo_disciplina = 3
 ORDER BY
	a.nome DESC;

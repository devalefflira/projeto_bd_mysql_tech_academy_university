-- Visões/Views
-- Listar todas as disciplinas que um determinado aluno
-- foi aprovado, de acordo com o curso selecionado
-- Filtros: RA aluno e ID Curso

SELECT * FROM aluno AS a 
INNER JOIN aluno_curso AS ac ON ac.ra = a.ra 
INNER JOIN curso AS c ON c.codigo = ac.codigo_curso
INNER JOIN aluno_disciplina AS ad ON ad.ra_aluno = a.ra
INNER JOIN disciplina AS d ON d.codigo = ad.codigo_disciplina
WHERE 
	a.ra =
    c.codigo = 
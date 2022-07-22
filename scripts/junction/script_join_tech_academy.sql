SELECT * FROM professor AS p INNER JOIN disciplina AS d ON d.cpf_professor = p.cpf;
SELECT * FROM professor AS p LEFT JOIN disciplina AS d ON d.cpf_professor = p.cpf;
SELECT * FROM professor AS p RIGHT JOIN disciplina AS d ON d.cpf_professor = p.cdf;
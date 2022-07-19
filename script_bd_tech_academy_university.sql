-- Consultando Dados na Tabela - SELECT...FROM

SELECT
	ra,
    nome,
    data_nascimento
FROM
	aluno;
    
-- Usando o LIKE

SELECT *
FROM
	aluno
WHERE
	data_nascimento IN ('1994-02-04', '2000-01-01') AND
    nome LIKE '%ALEFF%';

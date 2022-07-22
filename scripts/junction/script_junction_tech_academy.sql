-- Junção de Tabelas
SELECT * FROM disciplina AS d, professor AS p WHERE d.cpf_professor = p.cpf;

-- Usuando o Operador JOIN
SELECT * FROM disciplina AS d JOIN professor AS p ON d.cpf_professor = p.cpf;

-- UNION e UNION ALL
SELECT * FROM aluno AS a WHERE a.data_nascimento BETWEEN '1994-01-01' AND '1995-12-31';
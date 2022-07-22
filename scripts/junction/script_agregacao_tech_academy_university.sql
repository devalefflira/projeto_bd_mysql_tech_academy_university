-- Funções de Agregação
-- COUNT, MAX, MIN, SUM, AVG

SELECT count(*) FROM aluno_disciplina AS ad WHERE ad.codigo_disciplina = 3;
SELECT MAX(ad.nota) FROM aluno_disciplina AS ad WHERE ad.codigo_disciplina = 3;
SELECT MIN(ad.nota) FROM aluno_disciplina AS ad WHERE ad.codigo_disciplina = 3;
SELECT SUM(ad.nota) FROM aluno_disciplina AS ad WHERE ad.codigo_disciplina = 3;
SELECT AVG(ad.nota) FROM aluno_disciplina AS ad WHERE ad.codigo_disciplina = 3;

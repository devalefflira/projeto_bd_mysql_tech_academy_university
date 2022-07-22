-- Atualização de Dados de uma tabela

-- Atualização em modelo cascata
UPDATE
	professor
SET
	nome = 'Prof. Albert Einsten'
WHERE
	cpf LIKE '11111111111';

UPDATE
	professor
SET
	nome = 'Prof. Ted Codd'
WHERE
	cpf LIKE '11111111112';

-- Atualização em Linha
UPDATE professor SET nome = 'Prof. Tim Berners-Lee' WHERE cpf LIKE '11111111113';
UPDATE professor SET nome = 'Prof. Kevin Ashton' WHERE cpf LIKE '11111111114';
UPDATE professor SET nome = 'Prof. Arthur Samuel' WHERE cpf LIKE '11111111115';
UPDATE professor SET nome = 'Prof. Benjamin Franklin' WHERE cpf LIKE '11111111116';
UPDATE professor SET nome = 'Prof. Mark Zuckeberg' WHERE cpf LIKE '11111111117';
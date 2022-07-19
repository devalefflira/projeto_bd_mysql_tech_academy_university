-- mostra os bancos de dados disponíveis
SHOW DATABASES;

-- cria um novo banco de dados
CREATE DATABASE tech_academy_university;

CREATE TABLE aluno (
	ra INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    PRIMARY KEY(ra)
);
-- mostra os bancos de dados disponíveis
SHOW TABLES;

-- cria uma tabela
CREATE TABLE disciplina (
	codigo INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100) UNIQUE NOT NULL,
	qtde_creditos INT DEFAULT 0,
    PRIMARY KEY(codigo)
);

-- cria uma tabela
CREATE TABLE aluno_disciplina (
	ra_aluno INTEGER,
    codigo_disciplina INTEGER,
    ano YEAR CHECK(ano > 2000),
    semestre INT CHECK(semestre IN(1,2)),
    nota DECIMAL(4,2) DEFAULT 0,
    PRIMARY KEY (ra_aluno, codigo_disciplina, ano, semestre),
    FOREIGN KEY (ra_aluno) REFERENCES aluno(ra),
    FOREIGN KEY (codigo_disciplina) REFERENCES disciplina(codigo)
);

-- cria uma tabela
CREATE TABLE professor (
	cpf CHAR(11),
    nome VARCHAR(100) NOT NULL,
    PRIMARY KEY(cpf)
);

-- altera uma tabela
ALTER TABLE disciplina
	ADD cpf_professor CHAR(11);

-- altera uma tabela    
ALTER TABLE disciplina
	ADD FOREIGN KEY (cpf_professor) REFERENCES professor(cpf);

-- altera uma tabela
ALTER TABLE aluno_disciplina
	MODIFY ano YEAR CHECK (ano > 2000);

-- insere dados numa tabela existente
INSERT INTO aluno(ra, nome, data_nascimento)
	VALUES(0001, 'ALEFF JUNIO SILVA LINS LIRA', '1994-02-04');

INSERT INTO professor(cpf, nome)
	VALUES (11111111111, 'Albert Einsten');

INSERT INTO disciplina(nome, qtde_creditos, cpf_professor)
	VALUES('Física', 4, 11111111111);

INSERT INTO aluno_disciplina(ra_aluno, codigo_disciplina, ano, semestre, nota)
	VALUES(0001, 1, 2022, 1, 10);

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

-- Atualizando e Excluindo Tabelas



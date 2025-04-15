use AULA01;

create table TBcurso(
ID_curso INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
nome VARCHAR(80),
periodo VARCHAR(5),
ano INT,
horas INT
);

create table TBalunos(
ID_aluno INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
FK_curso INT NOT NULL,
registro_mat INT,
nome VARCHAR(80),
cpf INT,
email VARCHAR(70),
datacad DATE,
CONSTRAINT FK_aluno_curso FOREIGN KEY(FK_curso) REFERENCES TBcurso(ID_curso)
);

INSERT INTO TBcurso VALUES (
'ADS', 'manha', 2022, 100
), ('Medicina', 'tarde', 2012, 200);

INSERT INTO TBalunos VALUES (1, 20, 'Joao', 5343453, 'faslkfjs@gmail.com', '20-10-2022');

SELECT * FROM TBalunos, TBcurso;

DELETE FROM TBalunos WHERE FK_curso = 1;

-- =====================================================================

create table TbAgenda(
ID_agenda INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
nome VARCHAR (80),
datacad DATE, 
naturalidade VARCHAR (20));

create table TbContato(
ID_contato INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
FK_agenda INT,
tipo_contato VARCHAR (80),
descricao VARCHAR (80),
CONSTRAINT FK_contato_agenda FOREIGN KEY(FK_agenda) REFERENCES TbAgenda(ID_agenda) 
);

INSERT INTO TBalunos VALUES (1, 20, 'Joao', 5343453, 'faslkfjs@gmail.com', '20-10-2022');

INSERT INTO TbAgenda VALUES ('Janaina', '20-10-2022', 'africana');

SELECT * FROM TbAgenda;

INSERT INTO TbContato VALUES (1, 'CELULAR', '119999999');

SELECT * FROM TbContato;

SELECT * FROM TbContato, TbAgenda WHERE TbAgenda.ID_agenda = TbContato.FK_agenda;

INSERT INTO TbAgenda VALUES ('Thiago','23-09-2022', 'alemao'),('Joao','04-04-2022', 'brasileiro'),('Lucas','07-05-2022', 'americano');

SELECT * FROM TbAgenda;

INSERT INTO TbContato VALUES (2, 'CELULAR', '113843864'),(3, 'CELULAR', '117362876'),(4, 'CELULAR', '1198734834');

DELETE TbContato where FK_agenda = 3;

DELETE TbAgenda where ID_agenda = 3;
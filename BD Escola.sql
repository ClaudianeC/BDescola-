CREATE DATABASE bdescola;
use bdescola;

CREATE TABLE alunos(
   id_aluno int not null auto_increment,
   primary key(id_aluno),
   nome varchar(40) not null,
   cep int,
   pai varchar(40) not null,
   mae varchar(40) not null
      
);


create table disciplina(
  id_disci int not null auto_increment,
  PRIMARY KEY(id_disci),
  serie varchar(20) not null,
  classe CHAR not null
);

SELECT * FROM alunos;
SELECT * FROM disciplina;


CREATE TABLE matricula(
   id_matricula int not null auto_increment,
   primary key(id_matricula),
   id_aluno1 int,
   id_disci1 int,
   FOREIGN KEY (id_aluno1) REFERENCES alunos(id_aluno),
   FOREIGN KEY (id_disci1) REFERENCES disciplina(id_disci)
);

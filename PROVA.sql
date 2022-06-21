# Vitória Ferreira Sanches 2º ano

DROP DATABASE IF EXISTS escola;
CREATE DATABASE escola;
USE escola;
CREATE TABLE aluno (
	id MEDIUMINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    numero_matricula CHAR(9) NOT NULL,
    nome VARCHAR(60) NOT NULL,
    cidade VARCHAR(50) NOT NULL, 
    nota_final  DECIMAL(4,2) NOT NULL,
    qtd_faltas TINYINT(120) NOT NULL
);
# 2) Realizar o cadastro de 40 alunos. Fica a critério do aluno utilizar o método de inserts, geração de dados ou ainda via planilha.
INSERT INTO `aluno` (`numero_matricula`,`nome`,`cidade`,`nota_final`,`qtd_faltas`)
VALUES
  ("LW6235512","Timon Moraes","Rio Verde",7,113),
  ("VG2835737","Lisandra Bueno","Vitória da Conquista",1,62),
  ("SC9126030","Kelsie Feitosa","Novo Hamburgo",1,106),
  ("UE5126643","Flavia da Costa","Itajaí",10,16),
  ("KO7405005","Oliver Franco","Feira de Santana",5,103),
  ("GI1752215","Lareina do Nascimento","Timon",3,95),
  ("SV4774571","Mohammad Paulino","Colombo",9,39),
  ("CO8168422","Tobias Batista","Piracicaba",3,7),
  ("WO7948650","Talon Domingos","Curitiba",6,42),
  ("ZL4148581","Ezekiel Vieira","Aparecida de Goiânia",4,66),
  ("WP8867934","Noah Abreu","Belo Horizonte",2,1),
  ("SH5235324","Ezekiel Nogueira","Maringá",3,2),
  ("QU4514924","Camilla Nonato","Cascavel",10,54),
  ("QK8826759","Keely Siqueira","Londrina",2,75),
  ("DQ5224396","Lucius de Assis","São Gonçalo",9,111),
  ("JC9817272","Barbara Guedes","Patos",10,18),
  ("DQ5877105","Beau Dutra","Santa Maria",7,117),
  ("BJ0736570","Bell de Carvalho","Porto Alegre",3,90),
  ("GC2491397","Aquila Paiva","Divinópolis",10,55),
  ("YJ6915635","Fredericka Santana","Piracicaba",5,67);
INSERT INTO `aluno` (`numero_matricula`,`nome`,`cidade`,`nota_final`,`qtd_faltas`)
VALUES
  ("RS3446712","Moses Peixoto","Juazeiro",10,92),
  ("NV8867048","Lael Sántos","Paranaguá",1,61),
  ("QK5523280","Anjolie Batista","Blumenau",9,21),
  ("QR3958954","Linus da Cruz","Mogi das Cruzes",10,113),
  ("UG3266418","Isaac Barboza","Castanhal",10,113),
  ("VL8513458","Claire Custodio","Uberaba",4,16),
  ("ER3367212","Kimberly Batista","Chapadinha",8,29),
  ("QJ1994580","Nola Freire","Carapicuíba",7,8),
  ("FL8225684","Madeson Moraes","Itajaí",3,102),
  ("UC2467605","Amanda Custodio","Codó",4,101),
  ("OE3516653","Ali Franco","Belford Roxo",2,51),
  ("YC2307524","Tucker Guedes","Criciúma",5,109),
  ("KE5075674","Rylee de Almeida","Rio de Janeiro",9,14),
  ("PY6589503","Kareem Diniz","Piracicaba",5,100),
  ("MI4555774","Bell Matias","Guarapuava",3,100),
  ("JV2721273","Bertha Teodoro","Gravataí",8,74),
  ("XC1642763","Hadley de Matos","Rio Verde",4,70),
  ("CV9126464","Madison de Matos","Chapecó",4,42),
  ("TB7574756","Gail Sales","Caxias do Sul",9,117),
  ("NK1734133","Cody de Paula","Foz do Iguaçu",7,38);
SELECT * FROM aluno;

# 3) Apresentar o nome, matricula, nota e faltas dos 10 alunos que obtiveram as melhores notas. Ordenar o resultado da maior nota para a menor nota.
SELECT nome, numero_matricula, nota_final, qtd_faltas
FROM aluno
ORDER BY nota_final DESC
LIMIT 10;

# 4) Apresentar os cinco alunos que obtiverem a menor quantidade de faltas.
SELECT nome, qtd_faltas
FROM aluno
ORDER BY qtd_faltas ASC
LIMIT 5;

# 5) Apresentar os dados dos alunos que obtiveram nota entre 6 e 10.
SELECT id, numero_matricula, nome, cidade, nota_final, qtd_faltas
FROM aluno
WHERE nota_final >= 6 AND nota_final <= 10 
ORDER BY nota_final DESC;

# 6) Apresentar os dados dos alunos que obtiveram nota entre 4 e 6.
SELECT id, numero_matricula, nome, cidade, nota_final, qtd_faltas
FROM aluno
WHERE nota_final >= 4 AND nota_final <= 6
ORDER BY nota_final DESC;

# 7) Apresentar os dados dos alunos que obtiveram nota entre 0 e 4.
SELECT id, numero_matricula, nome, cidade, nota_final, qtd_faltas
FROM aluno
WHERE nota_final >= 0 AND nota_final <= 4
ORDER BY nota_final DESC;

# 8) Apresentar os alunos que possuem no máximo 75% de presença.
select nome, qtd_faltas from aluno where (qtd_faltas >= 80);

# 9) Apresentar os alunos que possuem no mínimo 75% de presença. 
select nome, qtd_faltas from aluno where (qtd_faltas <= 80);

# 10) Apresentar os alunos que possuem no mínimo 75% de presença e nota entre 6 e 10.
select nome, qtd_faltas from aluno where (qtd_faltas <= 80) AND nota_final >= 6 and nota_final <= 10;

# 11) Apresentar a quantidade de cidades diferentes que o curso recebe alunos.
select count(distinct cidade) from aluno;

# 12) Apresentar apenas os nomes destas cidades em ordem alfabética.
select cidade from aluno order by cidade asc;
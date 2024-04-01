/*Criação e Manipulação de Objetos no PostgreSQL /*--- correção manualmete feira para rodar esse codigo no postgresql
/*
CRIAÇÃO E MANIPULAÇÃO DE OBJETOS – MÓDULO 1
 
O especialista criará databases usando os aplicativos psql e PG Admin 4, mostrando 
na tela o resultado nos dois aplicativos. 
*/
/*
INSTALAÇÃO
gunzip postgresql-12.3.tar.gz
-- descompacta o arquivo .gz gerando o arquivo .tar
tar xf postgresql-12.3.tar
-- abre o arquivo .tar criando o diretório postgresql-12.3
cd postgresql-12.3
-- cd (change directory)
./configure
-- script para configurar a árvore de diretórios (cria o diretório /usr/local/psql)
gmake
-- GNU make: inicializa o build, pode levar de 5 a 30 minutos, e termina com a 
mensagem 
– All of PostgreSQL is successfully made. Ready to install.
su
-- muda login de usuário para o superusuário root (pede a senha do root)
gmake install
-- realiza a instalação como root
adduser postgres
-- cria usuário postgres, superusuário do PostgreSQL (seuseradd no Fedora)
mkdir /usr/local/pgsql/data
-- cria o diretório data onde ficarão as bases de dados
chown postgres /usr/local/pgsql/data
-- muda o dono do diretório data para postgres
su - postgres
-- muda login de usuário para postgres 
/usr/local/pgsql/bin/initdb -D /usr/local/pgsql/data
-- cria um grupo de BD no diretório data
/usr/local/pgsql/bin/postmaster -D /usr/local/pgsql/data >logfile 2>&1 &
-- inicializa o servidor em segundo plano
/usr/local/pgsql/bin/createdb test
-- cria um database test
/usr/local/pgsql/bin/psql test
-- inicia uma sessão no PostgreSQL, usando a interface de linha de comandos psql, 
como usuário postgres no database test
*/
CREATE DATABASE BDTESTEPGADMIN;
CREATE DATABASE BDTESTEPSQL;
/*
CRIAÇÃO E MANIPULAÇÃO DE OBJETOS – MÓDULO 2
 
Usando o PG Admin 4, exercitar os comandos de CREATE, ALTER, DROP TABLE, em 
diferentes databases e schemas. Mostrar o efeito dos comandos no sistema de 
arquivos do Windows (diretório ...\data\base
Os scripts do texto não precisam ser extraídos, pois mesmo que o especialista use os 
mesmos exemplos, é necessário que permaneçam no texto para visualização.
*/
CREATE DATABASE BDESTUDO;
DROP DATABASE BDESTUDO; 
CREATE TABLE NIVEL (
 CODIGONIVEL int NOT NULL,
 DESCRICAO char(90) NOT NULL,
 CONSTRAINT CHAVEPNIVEL PRIMARY KEY (CODIGONIVEL));
CREATE TABLE CURSO (
 CODIGOCURSO int NOT NULL,
 NOME char(90) NOT NULL UNIQUE,
 DATACRIACAO date NULL,
 CODIGONIVEL int NULL,
 CONSTRAINT CHAVEPCURSO PRIMARY KEY (CODIGOCURSO),
 FOREIGN KEY (CODIGONIVEL) REFERENCES NIVEL (CODIGONIVEL) 
);
CREATE DATABASE TESTEBANCO
SELECT OID, DATNAME FROM PG_DATABASE;
ALTER TABLE CURSO ADD DTRECONH DATE;
ALTER TABLE CURSO DROP DTRECONH ;
DROP TABLE CURSO;
CREATE TABLE NIVEL (
 CODIGONIVEL int NOT NULL,
 DESCRICAO char(90) NOT NULL,
 CONSTRAINT CHAVEPNIVEL PRIMARY KEY (CODIGONIVEL));
CREATE TABLE CURSO (
 CODIGOCURSO int NOT NULL,
 NOME char(90) NOT NULL UNIQUE,
 DATACRIACAO date NULL,
 CODIGONIVEL int NULL,
 FOREIGN KEY (CODIGONIVEL) REFERENCES NIVEL (CODIGONIVEL) 
);
ALTER TABLE CURSO ADD FOREIGN KEY (CODIGONIVEL) REFERENCES NIVEL;
DROP TABLE NIVEL;
DROP TABLE NIVEL CASCADE;
/*
 CRIAÇÃO E MANIPULAÇÃO DE OBJETOS – MÓDULO 3
 
Resumindo o módulo, o especialista executará comandos INSERT, UPDATE, DELETE em 
tabelas criadas no vídeo anterior, podendo ser as mesmas usadas no texto.
*/
CREATE TABLE CURSO (
 CODIGOCURSO int NOT NULL,
 NOME char(90) NOT NULL UNIQUE,
 DATACRIACAO date NULL,
 CODIGONIVEL int NULL,
 CONSTRAINT CHAVEPCURSO PRIMARY KEY (CODIGOCURSO),
 FOREIGN KEY (CODIGONIVEL) REFERENCES NIVEL (CODIGONIVEL) );
CREATE TABLE DISCIPLINA (
 CODIGODISCIPLINA int NOT NULL,
 NOME char(90) NOT NULL,
 CARGAHORARIA int NOT NULL,
 CONSTRAINT DISCIPLINA_pk PRIMARY KEY (CODIGODISCIPLINA) );
CREATE TABLE CURSODISCIPLINA (
 CODIGOCURSO int NOT NULL,
 CODIGODISCIPLINA int NOT NULL,
 CONSTRAINT CURSODISCIPLINA_pk PRIMARY KEY 
(CODIGOCURSO,CODIGODISCIPLINA));
ALTER TABLE CURSODISCIPLINA ADD CONSTRAINT CURSODISCIPLINA_CURSO
 FOREIGN KEY (CODIGOCURSO) REFERENCES CURSO (CODIGOCURSO) ;
ALTER TABLE CURSODISCIPLINA ADD CONSTRAINT CURSODISCIPLINA_DISCIPLINA
 FOREIGN KEY (CODIGODISCIPLINA) REFERENCES DISCIPLINA (CODIGODISCIPLINA) ; 
INSERT INTO CURSO (CODIGOCURSO,NOME,DATACRIACAO) VALUES (1,'Sistemas de 
Informação','19/06/1999');
INSERT INTO CURSO (CODIGOCURSO,NOME,DATACRIACAO) VALUES 
(2,'Medicina','10/05/1990');
INSERT INTO CURSO (CODIGOCURSO,NOME,DATACRIACAO) VALUES 
(3,'Nutrição','19/02/2012');
INSERT INTO CURSO (CODIGOCURSO,NOME,DATACRIACAO) VALUES 
(4,'Pedagogia','19/06/1999');
INSERT INTO DISCIPLINA (CODIGODISCIPLINA, NOME, CARGAHORARIA) VALUES 
(1,'Leitura e Produção de Textos',60);
INSERT INTO DISCIPLINA (CODIGODISCIPLINA, NOME, CARGAHORARIA) VALUES 
(2,'Redes de Computadores',60);
INSERT INTO DISCIPLINA (CODIGODISCIPLINA, NOME, CARGAHORARIA) VALUES 
(3,'Computação Gráfica',40); 
INSERT INTO DISCIPLINA (CODIGODISCIPLINA, NOME, CARGAHORARIA) VALUES 
(4,'Anatomia',60);
INSERT INTO CURSODISCIPLINA(CODIGOCURSO,CODIGODISCIPLINA) VALUES (1,1);
INSERT INTO CURSODISCIPLINA(CODIGOCURSO,CODIGODISCIPLINA) VALUES (1,2);
INSERT INTO CURSODISCIPLINA(CODIGOCURSO,CODIGODISCIPLINA) VALUES (1,3);
INSERT INTO CURSODISCIPLINA(CODIGOCURSO,CODIGODISCIPLINA) VALUES (2,1);
INSERT INTO CURSODISCIPLINA(CODIGOCURSO,CODIGODISCIPLINA) VALUES (2,3);
INSERT INTO CURSODISCIPLINA(CODIGOCURSO,CODIGODISCIPLINA) VALUES (3,1);
INSERT INTO CURSODISCIPLINA(CODIGOCURSO,CODIGODISCIPLINA) VALUES (3,3);
INSERT INTO CURSODISCIPLINA(CODIGOCURSO,CODIGODISCIPLINA) VALUES (3,30);
INSERT INTO DISCIPLINA (CODIGODISCIPLINA, NOME, CARGAHORARIA)
 VALUES (4,'Anatomia',60);
INSERT INTO DISCIPLINA (CODIGODISCIPLINA, NOME, CARGAHORARIA)
 VALUES (NULL,'Biologia Celular e Molecular',60);
UPDATE DISCIPLINA SET CARGAHORARIA=70 WHERE CODIGODISCIPLINA=2;
UPDATE DISCIPLINA SET CARGAHORARIA=70 WHERE NOME='Redes de Computadores';
UPDATE DISCIPLINA SET CARGAHORARIA=CARGAHORARIA*1.2; 
UPDATE CURSO SET CODIGOCURSO=6 WHERE CODIGOCURSO=4;
UPDATE CURSO SET CODIGOCURSO=10 WHERE CODIGOCURSO=1;
ALTER TABLE CURSODISCIPLINA 
 DROP CONSTRAINT CURSODISCIPLINA_CURSO,
 ADD CONSTRAINT CURSODISCIPLINA_CURSO 
 FOREIGN KEY (CODIGOCURSO) REFERENCES CURSO (CODIGOCURSO) 
ON UPDATE CASCADE ;
UPDATE CURSO SET CODIGOCURSO=10 WHERE CODIGOCURSO=1;
DELETE FROM DISCIPLINA WHERE CODIGODISCIPLINA=4;
DELETE FROM DISCIPLINA WHERE CODIGODISCIPLINA=1;
ALTER TABLE CURSODISCIPLINA 
 DROP CONSTRAINT CURSODISCIPLINA_DISCIPLINA,
 ADD CONSTRAINT CURSODISCIPLINA_DISCIPLINA 
 FOREIGN KEY (CODIGODISCIPLINA) REFERENCES DISCIPLINA (CODIGODISCIPLINA) 
ON DELETE CASCADE ;
DELETE FROM DISCIPLINA WHERE CODIGODISCIPLINA=1;
DELETE FROM CURSODISCIPLINA;
DELETE FROM CURSO;
DELETE FROM DISCIPLINA;
/*
 CRIAÇÃO E MANIPULAÇÃO DE OBJETOS – MÓDULO 4
 
O especialista exercitará comandos de transação usando duas sessões simultâneas 
da Query Tool no PG Admin 4, demonstrando os efeitos da concorrência de 
transações.
*/
-- BEGIN implícito
INSERT INTO CURSO (CODIGOCURSO,NOME,DATACRIACAO) 
VALUES (5,'Engenharia de Computação',NULL);
-- COMMIT implícito
SELECT * FROM CURSO; -- Dados atuais
BEGIN; 
INSERT INTO CURSO (CODIGOCURSO,NOME,DATACRIACAO) VALUES 
(6,'Psicologia',NULL);
SELECT * FROM CURSO; -- Dados após inserção
ROLLBACK;
END;
SELECT * FROM CURSO; -- Dados após desfazer a transação
SELECT * FROM DISCIPLINA;
BEGIN; 
UPDATE DISCIPLINA SET CARGAHORARIA=CARGAHORARIA*1.2 WHERE 
CARGAHORARIA=60; 
SELECT * FROM DISCIPLINA; 
UPDATE DISCIPLINA SET CARGAHORARIA=CARGAHORARIA*1.1 WHERE 
CARGAHORARIA=40; 
SELECT * FROM DISCIPLINA; 
COMMIT;
BEGIN; 
UPDATE DISCIPLINA SET CARGAHORARIA=CARGAHORARIA*1.2 WHERE 
CARGAHORARIA=60; 
SELECT * FROM DISCIPLINA; 
SAVEPOINT CARGA60;
UPDATE DISCIPLINA SET CARGAHORARIA=CARGAHORARIA*1.1 WHERE 
CARGAHORARIA=40; 
ROLLBACK TO CARGA60;
SELECT * FROM DISCIPLINA; 
COMMIT;
BEGIN;
SET TRANSACTION READ ONLY;
SELECT * FROM CURSODISCIPLINA; 
DROP TABLE CURSODISCIPLINA;
ROLLBACK;

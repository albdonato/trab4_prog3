
--Alberto Donato usando sqlite
-- > iniciando o sqlite > sqliteTRÊS secretaria  --criando a database ou CREATE DATABASE secretaria; no postgres
--criando as tabelas 
CREATE TABLE bairros (
    id INTEGER,
    bairro TEXT NOT NULL,
    zona TEXT NOT NULL
    );
CREATE TABLE professores 
   (id INTEGER,
   professor TEXT NOT NULL
   , datanascimento TEXT NOT NULL
   , idade INTEGER
   ,id_bairro INTEGER NOT NULL);
CREATE TABLE disciplinas (
   id INTEGER,
   codigo TEXT NOT NULL,
   disciplina TEXT NOT NULL,
   creditos INTEGER NOT NULL,
   carga INTEGER NOT NULL,
   ementa TEXT);
CREATE TABLE turmas (
   id INTEGER,
   id_prof INTEGER NOT NULL,
   id_disc INTEGER NOT NULL,
   turno TEXT NOT NULL,
   vagas INTEGER NOT NULL,
   salario TEXT);

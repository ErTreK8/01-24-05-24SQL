create database Examen1;
use Examen1;

-- EXERCICI 1 DDL (7 punts)

drop table Alumne;
CREATE TABLE IF NOT EXISTS Alumne(
		DNI char(9),
        nom varchar(30) not null,
        cognom varchar(30) not null,
        Primary key(DNI)
);
drop table uf;
CREATE TABLE IF NOT EXISTS Uf(
        nom varchar(30),
        num INT unique not null,
        hores smallint not null,
        Primary key(nom),
        CONSTRAINT verif_hores check (hores>=20 AND hores<=180)
);
drop table examen;
CREATE TABLE IF NOT EXISTS Examen(
        codi char(5),
        dataE dateTime not null,
        ufNom varchar(30) not null,
		Primary key(codi),
		constraint fk_uf_examen foreign key(ufNom) references Uf(nom)
        on update cascade
        on delete restrict
);
select * From Examen;
drop table Pregunta;
CREATE TABLE IF NOT EXISTS Pregunta(
        codi char(5),
        enunciat varchar(100) not null,
        respostaCorrecte enum ('A','B','C','D') not null,
        examenCodi char(5),
		Primary key(codi),
		constraint fk_examen_pregunta foreign key(examenCodi) references Examen(codi)
        on update restrict
        on delete set null
);
drop table professor;
CREATE TABLE IF NOT EXISTS Professor(
		DNI char(9),
        nom varchar(30) not null,
        cognom varchar(30) not null,
        Primary key(DNI)
);
drop table especialitat;
CREATE TABLE IF NOT EXISTS Especialitat(
        especialitat varchar(30),
		profesorDNI char(9),
        Primary key(especialitat,profesorDNI),
        constraint fk_especialitat_Profesor foreign key(profesorDNI) references Professor(DNI)
        on update cascade
        on delete cascade
);
drop table Cursa;
CREATE TABLE IF NOT EXISTS Cursa(
		profesorDNI char(9),
        alumneDNI char(9),
        ufNom varchar(30),
		Primary key(profesorDNI,alumneDNI,ufNom),
        constraint fk_profesor_Cursa foreign key(profesorDNI) references Professor(DNI)
        on update cascade
        on delete restrict,
        constraint fk_Alumne_Cursa foreign key(alumneDNI) references Alumne(DNI)
        on update cascade
        on delete restrict,
        constraint fk_Uf_Cursa foreign key(ufNom) references Uf(nom)
        on update cascade
        on delete restrict
);
drop table contesta;
create table if not exists Contesta(
		respostaAlumne enum('A','B','C','D'),
        alumneDNI char(9),
        preguntaCodi char(5),
		primary key(alumneDNI,preguntaCodi),
        constraint fk_Alumne_Contesta foreign key(alumneDNI) references Alumne(DNI)
        on update cascade
        on delete restrict,
        constraint fk_Pregunta_contesta foreign key(preguntaCodi) references Pregunta(codi)
        on update restrict
);

-- EXERCICI 2 DDL Modificacions i insercions (3 Punts)

-- 1
alter table Pregunta Modify Column respostaCorrecte enum ('A','B','C','D','E') not null;
alter table Contesta Modify Column respostaAlumne enum ('A','B','C','D','E');

-- 2
alter table Pregunta drop constraint fk_examen_pregunta;
alter table Examen drop primary key;
alter table Examen add primary key(codi,dataE);
alter table Pregunta add column examenDataE dateTime;
alter table Pregunta add constraint fk_examen_pregunta foreign key(examenCodi,examenDataE) references Examen(codi,dataE)
        on update restrict
        on delete set null;

-- 3 :)
INSERT INTO Alumne(nom,cognom,DNI) VALUES('Marc','Perez Garcia','11223344K');
insert into Uf(num,nom,hores) values (2,'Base de Dades',165);
insert into examen(dataE,codi,ufnom) values ('2023-11-23','EX231','Base de Dades');
insert into pregunta(codi,enunciat,examenCodi,examenDataE,respostaCorrecte) values ('BC124','BlaBlaBla','EX231','2023-11-23','D');
insert into contesta(alumneDNI,preguntaCodi, respostaAlumne) values ('11223344K','BC124','C');

-- 4
-- Si porque no le hemos puesto not null al campo respostaAlumne de la tabla Contesta :D

-- 5
create table Procedencia(
	cp char(5),
    ciutat varchar(30),
    provincia varchar(30),
    primary key (cp)
);

alter table alumne add column procedenciaCp char(5);
alter table professor add column procedenciaCp char(5);
alter table alumne add constraint fk_procedencia_alumne foreign key(procedenciaCp) references Procedencia(cp);
alter table professor add constraint fk_procedencia_professor foreign key(procedenciaCp) references Procedencia(cp);



/* Examen acabado de chill :) */
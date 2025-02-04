create database ExamenAñoPasado;
use ExamenAñoPasado;

drop table Artista;
CREATE TABLE IF NOT EXISTS Artista(
		nom varchar(30),
        cognom varchar(30),
        dataneixement date,
        Primary key(nom,cognom)
);
drop table Colabora;
CREATE TABLE IF NOT EXISTS Colabora(
		anyC date,
        artistaNom1 varchar(30),
        artistaCognom1 varchar(30),
        artistaNom2 varchar(30),
        artistaCognom2 varchar(30),
        Primary key(anyC,artistaNom1,artistaCognom1,artistaNom2,artistaCognom2),
        constraint fk_artista_colabora1 foreign key(artistaNom1,artistaCognom1) references Artista(nom,cognom)
        on update restrict
        on delete restrict,
        constraint fk_artista_colabora2 foreign key(artistaNom2,artistaCognom2) references Artista(nom,cognom)
		on update restrict
        on delete restrict
);
drop table Grup;
CREATE TABLE IF NOT EXISTS Grup(
		nom varchar(30),
        dataCreacio date,
        Primary key(nom,dataCreacio),
		constraint verifAny check (dataCreacio>=01/01/1920)
);

CREATE TABLE IF NOT EXISTS Gira(
		nom varchar(30),
        dataInici date,
        dataFi date,
        Primary key(nom,dataInici)
);
drop table Format_Per;
CREATE TABLE IF NOT EXISTS Format_Per(
		instrument varchar(30),
        artistaNom varchar(30),
        artistaCognom varchar(30),
        grupNom varchar(30),
        grupDataCreacio date,
        Primary key(artistaNom,artistaCognom,grupNom,grupDataCreacio),
        constraint fk_artista_Format_Per foreign key(artistaNom,artistaCognom) references Artista(nom,cognom)
        on update cascade
        on delete restrict,
        constraint fk_grup_Format_Per foreign key(grupNom,grupDataCreacio) references Grup(nom,dataCreacio)
        on update restrict
        on delete restrict,
        constraint instrument check (instrument!='Violí' AND instrument!='Saxo')
);

CREATE TABLE IF NOT EXISTS Fan(
		ciutat varchar(30),
        dataE date,
        tipus enum('Grada','Tribuna','Pista'),
        preuEntrada decimal(3,2) default (12.00),
        grupNom varchar(30),
        grupDataCreacio date,
        giraNom varchar(30),
        giraDataInici date,
        Primary key(ciutat,dataE,grupNom,grupDataCreacio,giraNom,giraDataInici),
        constraint fk_grup_Fan foreign key(grupNom,grupDataCreacio) references Grup(nom,dataCreacio)
        on update restrict
        on delete restrict,
        constraint fk_gira_Fan foreign key(giraNom,giraDataInici) references Gira(nom,dataInici)
        on update cascade
        on delete restrict
);
drop table tema;
CREATE TABLE IF NOT EXISTS Tema(
		codi char(10),
        Nom varchar(30),
		duracio time,
        grupNom varchar(30),
        grupDataCreacio date,
        Primary key(codi),
        constraint fk_grup_tema foreign key(grupNom,grupDataCreacio) references grup(nom,dataCreacio)
        on update restrict
        on delete set null
);

CREATE TABLE IF NOT EXISTS Album(
		codi char(10),
        nom varchar(30),
        Primary key(codi)
);
CREATE TABLE IF NOT EXISTS Pertany(
		albumCodi char(10),
        temaCodi char(10),
        Primary key(albumCodi,temaCodi),
        constraint fk_album_pertany foreign key(albumCodi) references Album(codi)
        on update restrict
        on delete restrict,
        constraint fk_tema_pertany foreign key(temaCodi) references Tema(codi)
        on update restrict
        on delete restrict
);

ALTER TABLE Tema MODIFY COLUMN Nom VARCHAR(20) UNIQUE;
ALTER TABLE Tema CHANGE COLUMN Nom Pene VARCHAR(20);
ALTER TABLE Grup ADD COLUMN QttComponents TINYINT;
INSERT INTO Artista(nom,cognom,datanaix) VALUES('Angus','Young',NULL);
INSERT INTO Artista(nom,cognom,datanaix) VALUES('Brian','Jhonson','1050-09-01');
INSERT INTO Grup(Nom,DataCreacio) VALUES('ACDC','1976-12-10');
INSERT INTO FormatPer(GrupNom,GrupDataCreacio,ArtistaNom,ArtistaCognom,Instrument) VALUES('ACDC','1976-12-10','Angus','Young','Guitarra');
INSERT INTO FormatPer(GrupNom,GrupDataCreacio,ArtistaNom,ArtistaCognom,Instrument) VALUES('ACDC','1976-12-10','Brian','Jhonson','Vocalista');
INSERT INTO Album VALUES('ACDC065','Highwaytohell');
INSERT INTO Tema VALUES('AC044','Highwaytohell','00:03:56','ACDC065','ACDC','1976-12-10'); 

ALTER TABLE Tema DROP CONSTRAINT fk_Tema_Album;
ALTER TABLE Tema DROP COLUMN AlbumCodi;
ALTER TABLE Album DROP PRIMARY KEY;
ALTER TABLE Album DROP COLUMN codi;
ALTER TABLE Album ADD PRIMARY KEY(nom);
ALTER TABLE TEMA ADD COLUMN AlbumNom VARCHAR(20);
ALTER TABLE TEMA ADD CONSTRAINT fk_Tema_Album FOREIGN KEY(AlbumNom) REFERENCES Album(nom)
    ON UPDATE CASCADE 
    ON DELETE RESTRICT;
ALTER TABLE Fan DROP CONSTRAINT veriftipus;
ALTER TABLE Fan ADD CONSTRAINT veriftipus CHECK(tipus='Grada' OR 'Tribuna' OR 'pista' OR 'Palco');
ALTER TABLE Colabora ADD CONSTRAINT verifany CHECK(anyC BETWEEN 1980 AND 2050);
ALTER TABLE Colabora DROP PRIMARY KEY;
ALTER TABLE Colabora ADD PRIMARY KEY(anyC,ArtistaNom1,ArtistaCognom1,ArtistaNom2,ArtistaCognom2);
ALTER TABLE FormatPer DROP PRIMARY KEY;
ALTER TABLE FormatPer ADD PRIMARY KEY(GrupNom,GrupDataCreacio,ArtistaNom,ArtistaCognom,Instrument);

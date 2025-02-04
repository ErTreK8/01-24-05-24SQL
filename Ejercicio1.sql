CREATE DATABASE Ejercicio1;
USE Ejercicio1;
DROP TABLE CompteBancaria;
CREATE TABLE if not exists CompteBancaria(
	ID CHAR(8),
    dni CHAR(12) UNIQUE,
    nom VARCHAR(30) NOT NULL,
    cognom1 VARCHAR(20) NOT NULL,
    cognom2 VARCHAR(20) NOT NULL,
    tipus ENUM('Economica','Buissnes','Rich','Poor'),
    diners DECIMAl (8,2), -- CHECK(preu>0) Mejor en el CONSTRAINT
	dataEntrada DATE,
    PRIMARY KEY (ID),
    CONSTRAINT verificarDiners CHECK(diners>-1000)
);
Describe CompteBancaria;
INSERT into CompteBancaria VALUES('1','54251155C','Eric','Garcia','Gispert','Economica',294.34, NOW()); -- EN EL tiempo puedes poner '2023-05-01' NOW ES PARA LA FECHA DE HOY
INSERT into CompteBancaria VALUES('2','23451155C','Alfres','Sanchez','Porti','Buissnes',300000.34, NOW()); -- EN EL tiempo puedes poner '2023-05-01' NOW ES PARA LA FECHA DE HOY
Select * FROM CompteBancaria;
DROP TABLE Avio;
CREATE TABLE if not exists Avio(
	ID CHAR(8),
    marca VARCHAR(30) NOT NULL,
    model VARCHAR(20) NOT NULL,
    pesMaxim DECIMAL(6,2) NOT NULL, -- mesurat en KG
    tipus ENUM('Privat','Public'),
    anyCreacio Year DEFAULT 2000,
    costCreacio DECIMAl (8,2), -- CHECK(preu>0) Mejor en el CONSTRAINT
	dataEntrada DATE,
    PRIMARY KEY (ID),
    CONSTRAINT verificarAny CHECK(AnyCreacio>=2000)
);
INSERT into Avio VALUES('1','Rayanair','V08-x1','5000.00','Privat',2015,535876.34, NOW());
INSERT into Avio VALUES('2','Vueling','x11DNF','5000.00','Public',2020,324466.87, NOW());
Select * FROM Avio;
DROP TABLE Pelicula;
CREATE TABLE if not exists Pelicula(
	ID CHAR(8),
    nom VARCHAR(50) NOT NULL UNIQUE,
    coleccio VARCHAR(50) NOT NULL,
    nomDiretor VARCHAR(20),
    cognomDirector VARCHAR(20),
    duracioMinuts SMALLINT DEFAULT 120,
    preuEntrada DECIMAl (6,2), -- CHECK(preu>0) Mejor en el CONSTRAINT
	dataEntrada DATE,
    PRIMARY KEY (ID),
    CONSTRAINT verificarDuracio CHECK(duracioMinuts>0)
);
INSERT into Pelicula VALUES('1','SpiderMan No Way Home','SpiderMan','Albert','Spilberg','153',12.83, NOW());
INSERT into Pelicula VALUES('2','El Señor de los Anillos La comunidad del Anillo','El Señor de los Anillos','Petter','Jackson','185',20.50, NOW());
Drop Table Videojoc;
CREATE TABLE if not exists Videojoc(
	ID CHAR(8),
    nom VARCHAR(30) NOT NULL UNIQUE,
    coleccio VARCHAR(20) NOT NULL,
    nomDiretor VARCHAR(20),
    cognomDirector VARCHAR(20),
    numeroCompres INT,
    preuJoc DECIMAl (6,2), -- CHECK(preu>0) Mejor en el CONSTRAINT
	dataEntrada DATE,
    PRIMARY KEY (ID),
    CONSTRAINT verificarCompres CHECK(numeroCompres>0)
);
INSERT into Videojoc VALUES('1','SpiderMan 1','SpiderMan','Ronnie','Coleman','100000',12.83, NOW());
INSERT into Videojoc VALUES('2','Destiny 2','Destiny','Bunguie','Activision','1234000',0.00, NOW());
Select * FROM Videojoc;
describe Videojoc;





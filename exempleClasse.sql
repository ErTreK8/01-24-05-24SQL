-- Crear Base de dades
CREATE DATABASE ExempleDB;
-- Usar Base de Dades
USE Exempledb;
-- Borrar Base de dades
-- DROP DATABASE exempledb;
-- Crear Tablas
DROP TABLE Disfressa;
CREATE TABLE if not exists Disfressa(
	codi CHAR(8),
    nom VARCHAR(30) UNIQUE NOT NULL,
    tematica VARCHAR(20) NOT NULL,
    talles ENUM('XS','S','M','L','XL','XXL'),
    dataEntrada DATE,
    estoc SMALLINT DEFAULT 10,
    preu DECIMAl (6,2), -- CHECK(preu>0) Mejor en el CONSTRAINT
	PRIMARY KEY (codi),
    CONSTRAINT verificarPreu CHECK(preu>0),
    CONSTRAINT verificarStock check (estoc>=0 AND estoc<100)
);

Describe disfressa;

-- CREACIO TABLA COTXE
CREATE TABLE IF NOT exists cotxe (
	matricula CHAR(7),
    marca VARCHAR(20) NOT NULL,
    model VARCHAR(20) NOT NULL,
    color VARCHAR(10),
    combustible ENUM('Gasolina', 'Diesel', 'Electric'),
    potencia SMALLINT UNSIGNED default 100,
    dataCompra DATE, 
    preu DECIMAL(8,2),
    PRIMARY KEY (matricula),
    constraint verifPreu CHECK (preu>0) -- 999999.99
);
-- SELECT
Select	* FROM cotxe;
SELECT cotxe.model, cotxe.matricula, cotxe.marca, cotxe.preu FROM cotxe;
-- Si tuvieran relacion las 2 tablas seria
SELECT cotxe.model, cotxe.matricula, cotxe.marca, cotxe.preu, disfressa.nom, disfressa.codi FROM cotxe, disfressa;

-- Insertar cosas en tablas
INSERT into cotxe VALUES('1234ABC','SEAT','Leon','Vermell','Gasolina',80, NOW(), 5399.78); -- EN EL tiempo puedes poner '2023-05-01' NOW ES PARA LA FECHA DE HOY
INSERT into cotxe VALUES('1235ABC','TOYOTA','Probe V-16','Blanc','Gasolina',NULL, NOW(), 2657.38); 
INSERT INTO cotxe (model, matricula, marca, preu) VALUE ('GTR3', '1238BXB', 'NISSAN',35000.00),('911', '1234JJJ', 'PORCHE',350000.00);

CREATE TABLE IF NOT EXISTS CotxesOpel like Cotxe;
INSERT INTO CotxesOpel Select * FROM cotxe WHERE marca='Opel';
Select * FROM CotxesOpel;



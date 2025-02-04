USE Ejercicio1;
Drop Table Treballador;
CREATE TABLE IF NOT EXISTS Treballador(
    email VARCHAR(30) PRIMARY KEY,
    contrasenya VARCHAR(30) NOT NULL,
    nom VARCHAR (20),
    cognom VARCHAR(20),
    ciutat VARCHAR (20),
    dataAlta DATE,
    dataNAixement DATE,
    departament ENUM('Comercial', 'Ventes', 'Marketing'),
    estatCivil ENUM('Casat', 'Divorciat', 'Solter'),
    numFills TINYINT UNSIGNED DEFAULT 0,
    salari DECIMAL (6,2),
    treballadorBaixa BOOL DEFAULT 0,
    CONSTRAINT verifNumFills CHECK (numFills>=0),
    CONSTRAINT verifSalari CHECK (salari>=450 AND salari<=3000)
);
Describe Treballadors;
Alter Table treballadors add column sexe ENUM('H','D') After cognom;
-- Alterar tabla Treballador y añade la columna sexe que sea solo H o D despues de cognom
Alter Table treballadors Change column cognoms cognoms Varchar(20) NOT NULL;
Alter Table treballadors Change column nom nom Varchar(20) NOT NULL;
Alter Table treballadors  CHANGE COLUMN ciutat poblacio VARCHAR(20);
Alter Table treballadors  CHANGE COLUMN contrasenya contrasenya VARCHAR(30) NOT NULL COLLATE 'latin1_general_cs';
Alter Table treballadors DROP COLUMN Departament;
ALTER TABLE treballadors DROP PRIMARY KEY;
Alter Table treballadors add column telefon char(9) PRIMARY KEY first;
ALTER TABLE treballadors MODIFY COLUMN dataAlta DATETIME;
ALTER TABLE treballadors MODIFY COLUMN email varchar(30) UNIQUE;
ALTER TABLE treballadors ADD COLUMN codiPostal CHAR(8) AFTER Poblacio;
ALTER TABLE treballadors ADD COLUMN provincia varchar(30) DEFAULT 'Barcelona' AFTER codiPostal;
ALTER TABLE treballadors DROP CONSTRAINT verifSalari;
ALTER TABLE treballadors ADD CONSTRAINT verifSalari CHECK (salari>=1000);
INSERT INTO treballadors (telefon,email,contrasenya,nom,cognoms,salari)
	Values ('666111333','jfado@educem.com','jf1234','Jaume','Fado',1500);
Select * FROM Treballadors;
ALTER TABLE treballadors ADD COLUMN pagaExtra DECIMAL(5,2) AFTER salari;
ALTER TABLE treballadors ADD CONSTRAINT verifPagaExtra CHECK (pagaExtra>=50 AND pagaExtra<=400); -- (pagaExtra BETWEEN 50 AND 400)
ALTER TABLE treballadors DROP CONSTRAINT verifNumFills;
ALTER TABLE treballadors ADD CONSTRAINT verifNumFills CHECK (numFills BETWEEN 0 and 10);
ALTER TABLE treballadors DROP CONSTRAINT verifUsuari;
ALTER TABLE treballadors ADD CONSTRAINT verifUsuari CHECK (Poblacio = 'Granollers' OR salari > 1200);
Describe Treballadors;
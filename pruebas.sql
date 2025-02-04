CREATE DATABASE classeIntegritatDB;
USE classeIntegritatDB;

CREATE TABLE IF NOT EXISTS Examen(
	codi CHAR(8) PRIMARY KEY,
    modul VARCHAR(30) NOT NULL,
    dataE DATETIME
);
-- Relacion 1:N
CREATE TABLE IF NOT EXISTS Pregunta(
	codi CHAR(8) PRIMARY KEY,
    enunciat VARCHAR(100),
    puntuacio DECIMAL(4,2) DEFAULT 0.5,
    examenCodi CHAR(8) NOT NULL,
    CONSTRAINT fk_pregunta_examen FOREIGN KEY(examenCodi) REFERENCES Examen(codi)
		ON UPDATE CASCADE
        ON DELETE RESTRICT

);
-- Relacion 1:N
CREATE TABLE IF NOT EXISTS Alumne(
	DNI CHAR(9) PRIMARY KEY,
    nom VARCHAR(20) NOT NULL,
    cognom VARCHAR(30) NOT NULL
);

-- En el cas que s'elimini un examen, no volem permetre la perdua de les notes.
-- En el cas que el codi d'un examen canvi, cal que quedi reflexat.

-- Relacion N:M 
CREATE TABLE IF NOT EXISTS Fa(
	alumneDNI CHAR(9),
    examenCodi CHAR(8),
    dataF DATE,
    nota DECIMAL(4,2),
    PRIMARY KEY(alumneDNI,examenCodi,dataF),
    CONSTRAINT fk_fa_examen FOREIGN KEY(examenCodi) REFERENCES Examen(codi)
		ON UPDATE CASCADE
        ON DELETE RESTRICT,
	CONSTRAINT fk_fa_alumne FOREIGN KEY(alumneDNI) REFERENCES Alumne(DNI)
		ON UPDATE CASCADE
        ON DELETE RESTRICT,
	CONSTRAINT verifNota CHECK (nota BETWEEN 1 AND 10)
);
-- Relacion Debil
CREATE TABLE IF NOT EXISTS Resposta(
	opcio CHAR(1),
    resposta VARCHAR(100),
    preguntesCodi CHAR(8) NOT NULL,
    PRIMARY KEY(opcio,preguntesCodi),
    CONSTRAINT fk_resposta_pregunta FOREIGN KEY (preguntesCodi) REFERENCES Pregunta(codi)
		ON UPDATE CASCADE
        ON DELETE RESTRICT

);

ALTER TABLE Pregunta DROP CONSTRAINT fk_pregunta_examen;
ALTER TABLE Pregunta ADD  CONSTRAINT fk_pregunta_examen FOREIGN KEY(examenCodi) REFERENCES Examen(codi)
		ON UPDATE CASCADE
        ON DELETE RESTRICT;

delete from examen;
INSERT INTO Examen VALUES ('EX000001','Programació','2023-11-09 8:00:00');
INSERT INTO Examen VALUES ('EX000002','Base de dades','2023-10-31 11:00:00');

SELECT * FROM Examen;

INSERT INTO Pregunta VALUES ('PREG0001','Ampliació pràctica',1.95,'EX000001');
INSERT INTO Pregunta VALUES ('PREG0002','Tresor',8,'EX000001');

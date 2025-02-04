
DROP DATABASE IF EXISTS examenordinariauf2;
CREATE DATABASE IF NOT EXISTS ExamenOrdinariaUF2;
USE ExamenOrdinariaUF2;


CREATE TABLE IF NOT EXISTS Cooperativa(
	CIF CHAR(9) PRIMARY KEY,
    nom VARCHAR(20) NOT NULL,
	telf CHAR(9) unique
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS Granja(
	CIF CHAR(9) PRIMARY KEY,
    nom VARCHAR(20) NOT NULL,
    capacitat INT -- capatacitat animals
) ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS compraVenta(
	cooperativaCIF CHAR(9),
	granjaCIF CHAR(9),
    dataCV date,
    qtt INT,
    pvc decimal(4,2),
    pvp decimal(4,2),
	PRIMARY KEY (cooperativaCIF,granjaCIF,dataCV),
    
    CONSTRAINT fk_CV_cooperativa foreign key (cooperativaCIF) REFERENCES Cooperativa(CIF)
		ON UPDATE CASCADE ON DELETE RESTRICT,
	CONSTRAINT fk_CV_granja foreign key (granjaCIF) REFERENCES Granja(CIF)
		ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS Ramader(
    NIF CHAR(9) PRIMARY KEY,
    nom VARCHAR(20) NOT NULL,
    dataAlta date,
    sou decimal(6,2) default 1000,
    granjaCIF CHAR(9),
	CONSTRAINT fk_ramader_granja foreign key (granjaCIF) REFERENCES Granja(CIF)
		ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS Animal (
	xip CHAR(5) PRIMARY KEY,
    dataNaix date,
    pes decimal (5,2),
    dataPes date,
    tipus CHAR(1), -- V:vaca, O: Ovella
    granjaCIF CHAR(9) NOT NULL,
    CONSTRAINT fk_animal_granja FOREIGN KEY (granjaCIF) REFERENCES Granja(CIF)
		ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS Munyir(
	ramaderNIF CHAR(9),
    animalXip CHAR(5),
    dataMuny date,
    qtt INT, -- mesurat en litres
    temps INT, -- mesurat en minuts
    PRIMARY KEY (ramaderNIF, animalXip, dataMuny),
    CONSTRAINT fk_munyir_ramader foreign key (ramaderNIF) REFERENCES Ramader(NIF)
		ON UPDATE CASCADE ON DELETE RESTRICT,
        CONSTRAINT fk_munyir_animal foreign key (animalXIP) REFERENCES Animal(xip)
		ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS Menjar (
	nom VARCHAR(20) PRIMARY KEY,
    tipus CHAR(1)
) ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS Menja (
	animalXIP CHAR(5),
    menjarNom VARCHAR(20),
    dataMenja date,
    qtt INT, -- mesurat en kg
	PRIMARY KEY (animalXIP, menjarNom, dataMenja),
    CONSTRAINT fk_menja_animal foreign key (animalXip) REFERENCES Animal(XIP)
		ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT fk_menja_menjar foreign key (menjarNom) REFERENCES Menjar(nom)
		ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE = InnoDB;


insert into Cooperativa values ('CIFCope1','Consum','938702233'), ('CIFCope2','Bon Area','978702255'),('CIFCope3','Associació COP','938792289');
insert into Granja values ('CIFGran1','Llet nostra',150),('CIFGran2','Premium Cows',80), ('CIFGran3','El calci és vida',200);

insert into Ramader values ('NIFRama1','Martí Gascón','2010-10-23',1200,'CIFGran1'),
						('NIFRama2','Sandra Martínez','2012-11-20',1300,'CIFGran1'),
                        ('NIFRama3','Aleix Casals','2017-10-23',NULL,'CIFGran2'),
                        ('NIFRama4','Sergio Maroto','2016-10-23',0,'CIFGran3'),
                        ('NIFRama5','Ainoa Gola','2018-10-23',900,'CIFGran2');
insert into Animal values ('VA000','2017-09-12',90.40,'2018-12-10','V', 'CIFGran1'), ('VA001','2017-09-12',100.20,'2018-12-08','V','CIFGran1'),
                        ('VA002','2016-08-10',93.50,'2018-12-09','V','CIFGran2'), ('OV000','2016-06-23',140.30,'2018-12-10','O','CIFGran2'),
                        ('OV001','2018-04-09',40.90,'2018-12-10','O','CIFGran3'), ('VA003','2017-10-12',90.40,'2018-12-10','V', 'CIFGran2'),
						('VA004','2017-04-12',100.20,'2018-12-08','V','CIFGran1'), ('VA005','2016-03-10',93.50,'2018-12-09','V','CIFGran2'),
                        ('OV002','2018-06-23',140.30,'2018-12-10','O','CIFGran1'), ('OV003','2018-04-09',40.90,'2018-12-10','O','CIFGran3');

insert into Menjar values ('Palla tova','F'),('SemiT','P'),('Palla seca','F'),('Palla Humida','F'),('AditiveCow','P');


insert into Munyir values ('NIFRama1','VA000','2020-12-15',20,75), ('NIFRama1','VA001','2020-12-15',70,75),
						  ('NIFRama1','VA004','2020-12-15',25,50),('NIFRama1','OV002','2020-12-15',25,50),
                          ('NIFRama2','VA000','2020-12-16',20,75), ('NIFRama2','VA001','2020-12-19',70,75),
						  ('NIFRama2','VA004','2020-12-16',25,50),('NIFRama2','OV002','2020-12-16',25,50),
                          ('NIFRama3','VA002','2020-12-15',20,75), ('NIFRama3','VA005','2020-12-15',70,75),
						  ('NIFRama3','VA003','2020-12-15',25,50),('NIFRama3','OV000','2020-12-15',25,50),
						  ('NIFRama4','OV001','2020-12-15',20,75), ('NIFRama4','OV001','2020-12-16',70,75),
						  ('NIFRama4','OV003','2020-12-15',25,50),('NIFRama4','OV003','2020-12-17',25,50),                          
                          ('NIFRama1','VA000','2019-12-15',120,75), ('NIFRama1','VA001','2019-12-15',70,75),
						  ('NIFRama1','VA004','2019-12-15',285,50),('NIFRama1','OV002','2019-12-15',25,50),
                          ('NIFRama2','VA000','2019-12-16',21,75), ('NIFRama2','VA001','2019-12-19',70,75),
						  ('NIFRama2','VA004','2019-12-16',25,50),('NIFRama2','OV002','2019-12-16',15,50),
                          ('NIFRama3','VA002','2019-12-15',23,75), ('NIFRama3','VA005','2019-12-15',70,75),
						  ('NIFRama3','VA003','2019-12-15',25,50),('NIFRama3','OV000','2019-12-15',35,50),
						  ('NIFRama4','OV001','2019-12-15',50,75), ('NIFRama4','OV001','2019-12-16',60,75),
						  ('NIFRama4','OV003','2019-12-15',25,50),('NIFRama4','OV003','2019-12-17',25,50),
                          ('NIFRama1','VA000','2018-12-15',20,75), ('NIFRama1','VA001','2018-12-15',70,75),
						  ('NIFRama1','VA004','2018-12-15',15,50),('NIFRama1','OV002','2018-12-15',75,50),
                          ('NIFRama2','VA000','2018-12-16',120,75), ('NIFRama2','VA001','2018-12-19',70,75),
						  ('NIFRama2','VA004','2018-12-16',35,50),('NIFRama2','OV002','2018-12-16',25,50),
                          ('NIFRama3','VA002','2018-12-15',20,75), ('NIFRama3','VA005','2018-12-15',20,75),
						  ('NIFRama3','VA003','2018-12-15',25,50),('NIFRama3','OV000','2018-12-15',25,50),
						  ('NIFRama4','OV001','2018-12-15',10,75), ('NIFRama4','OV001','2018-12-16',70,75),
						  ('NIFRama4','OV003','2018-12-15',28,50),('NIFRama4','OV003','2018-12-17',25,50);

INSERT INTO Menja VALUES ('VA000','Palla Tova','2019-05-12',5), ('VA000','Palla Seca','2019-05-12',3),
				('VA000','AditiveCow','2019-06-12',2),('VA000','Palla Humida','2019-05-13',7),
				('VA001','Palla Tova','2019-05-12',5), ('VA001','Palla Seca','2019-05-12',3),
				('VA001','AditiveCow','2019-06-12',4),('VA001','Palla Humida','2019-05-13',1),
				('VA002','Palla Tova','2019-05-12',4), ('VA002','Palla Seca','2019-05-12',3),
				('VA002','AditiveCow','2020-06-12',1),('VA002','Palla Humida','2020-05-13',1),
				('OV000','Palla Tova','2019-05-12',5), ('OV000','Palla Seca','2019-05-12',3),
				('OV000','Palla Humida','2019-06-12',2),('OV000','Palla Humida','2019-05-13',1),
				('OV001','Palla Tova','2019-05-12',5), ('OV001','Palla Seca','2019-05-12',1),
				('OV001','Palla Humida','2019-06-12',6),('OV001','Palla Humida','2019-05-13',1);
                
-- CONSULTAS:
-- 1:
CREATE OR REPLACE VIEW animalesporgranja AS
SELECT G.nom,G.capacitat,count(a.granjacif) as qttanimales,G.capacitat-count(a.granjacif) as Plazaslibres FROM Granja G
	INNER JOIN animal A ON A.granjacif=G.CIF
    GROUP BY a.granjacif;
SELECT * FROM animalesporgranja;
    
SELECT *,concat(round((qttanimales/capacitat*100),2),'%') as '%ocupacio' FROM animalesporgranja;

-- 2:
SELECT * FROM Ramader R
	INNER JOIN Granja G ON G.CIF=R.granjacif;

SELECT G.nom,count(R.granjacif) as Total FROM Granja G
	INNER JOIN Ramader R ON R.granjacif=G.cif
		WHERE year(R.dataAlta)>=2010 AND sou>0 AND sou IS NOT NULL
    GROUP BY G.nom;

-- 3:
SELECT year(m.datamuny) as anyproduccio, if(A.tipus='O','Ovella','Vaca') as tipo, sum(m.qtt) as TotalLitres FROM munyir M
	INNER JOIN animal A ON A.xip=M.animalxip
		GROUP BY year(m.datamuny),A.tipus
        ORDER BY year(m.datamuny);
        
SELECT * FROM animal;

-- 4: elimina todos los registros

DELETE A.* FROM Animal A 
	INNER JOIN munyir M ON M.animalxip=a.xip
    INNER JOIN Granja G ON G.CIF=A.granjacif
	WHERE month(m.datamuny) IN (2,3,12) AND year(m.datamuny) IN (2016,2017,2018) 
    AND G.nom='Llet Nostra';
   
	SELECT * FROM animal;
	SELECT M.*,G.nom FROM Munyir M 
		INNER JOIN Animal A ON A.xip=M.animalxip
        INNER JOIN Granja G ON G.CIF=A.granjacif
    WHERE year(datamuny) IN (2016,2017,2018) AND G.nom='Llet Nostra';
		
-- 5:
UPDATE Ramader R 
	INNER JOIN Granja G ON R.granjacif=g.cif
    set R.sou=R.sou*1.1
    WHERE G.nom='Llet nostra' AND dataAlta<=(curdate()-Interval 5 year);
    
    SELECT * FROM Ramader R 
	INNER JOIN Granja G ON R.granjacif=g.cif
    WHERE G.nom='Llet nostra' AND dataAlta<=(curdate()-Interval 5 year);
    
-- 6:
SELECT distinct R.nom FROM Ramader R
	INNER JOIN Munyir M ON M.ramaderNIF=R.NIF
    INNER JOIN Animal A ON A.xip=m.animalxip
    WHERE year(M.datamuny)=2020 AND A.pes BETWEEN 80 AND 120
		ORDER BY R.nom asc;

-- 7:
CREATE OR REPLACE VIEW produccionanimales as
SELECT animalXip,sum(qtt)as litros,sum(temps) as tiempo FROM munyir
	GROUP BY animalXip;
SELECT * FROM produccionanimales;

SELECT a.xip,a.dataNaix,a.tipus,round((pa.litros/pa.tiempo),2) as PromigAportacions FROM Animal A
	INNER JOIN produccionanimales PA ON PA.animalxip=A.xip
    WHERE pa.litros/pa.tiempo>0.5
    GROUP BY A.xip;

-- 8:
SELECT * FROM munyir;

SELECT * FROM Animal A
	INNER JOIN Granja G ON G.CIF=A.granjaCIF
    WHERE G.nom IN('Premium Cows','Llet nostra');
    
    SELECT M.*,G.nom FROM munyir M
	INNER JOIN Animal A ON A.xip=M.animalxip
    INNER JOIN Granja G ON G.CIF=A.granjacif
    WHERE G.nom IN('Llet nostra','Premium Cows') AND ((month(dataMuny) BETWEEN 5 AND 7
    AND (YEAR(dataMuny)=2017)) OR year(dataMuny)=2020);
    
    
SELECT * FROM produccionanimales;
SELECT * FROM munyir;
-- respuesta:
UPDATE munyir M
	INNER JOIN Animal A ON A.xip=M.animalxip
    INNER JOIN Granja G ON G.CIF=A.granjacif
    set m.qtt=m.qtt-5
    WHERE G.nom IN('Llet nostra','Premium Cows') AND ((month(dataMuny) BETWEEN 5 AND 7
    AND (YEAR(dataMuny)=2017)) OR year(dataMuny)=2020);

-- 9:
SELECT * FROM produccionanimales;
SELECT P.animalXip,A.dataNaix,P.litros FROM Produccionanimales P
	INNER JOIN animal A ON A.xip=P.animalxip
		WHERE a.tipus='O' AND P.litros=(
        select max(p.litros) FROM produccionanimales p
			INNER JOIN animal A ON A.xip=p.animalxip
				WHERE a.tipus='O');
SELECT * FROM munyir;

SELECT * FROM animal A
	INNER JOIN Granja G ON A.granjaCIF=G.CIF;

-- 10:
SELECT * FROM menja
	WHERE animalxip='VA001';
    
Create OR REPLACE View forrageporanimal as    
SELECT animalxip as xipanimal,sum(M.qtt) as totalcomida FROM menja M
	INNER JOIN menjar Me ON ME.nom=M.menjarnom
		WHERE Me.tipus='F' AND year(datamenja)=2019
		GROUP BY Animalxip;

SELECT * FROM forrageporanimal;
SELECT totalcomida fROM forrageporanimal where xipanimal='VA001';

SELECT A.*,sum(M.qtt) FROM Animal A
	INNER JOIN Menja M ON M.animalxip=A.xip
	INNER JOIN Forrageporanimal F ON F.xipanimal=a.xip
		WHERE f.totalcomida>=(SELECT totalcomida fROM forrageporanimal where xipanimal='VA001')
        GROUP BY A.xip;




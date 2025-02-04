-- ****************************************************************************************** 
-- 						EXAMEN ORDINARI DAM1 M2:UF2																																	*/
-- 						ESTRUCTURA DE LA BASE DE DADES								
-- ****************************************************************************************** 

-- El limit 5 solo te muestra los 5 primeros
-- order by nom desc limit 5

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

-- ------------------------------------------------------------------------------


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

-- ------------------------------------------------------------------------------

-- 1. Mostra un llistat per granja, on es mostri la capacitat de la granja, la quantitat d'animals que té, les
-- places lliures disponibles i el percentatge d'ocupació.
-- Per saber el % ocupació = qttAnimals/capacitat*100.

select g.nom, g.capacitat, count(a.granjaCIF) as qtt_animals, g.capacitat - count(a.granjaCIF) as places_lliures, 
	concat(round((count(a.granjaCIF)/g.capacitat*100),2),'%') as precentatge_ocupacio 
from granja g
	inner join animal a on a.granjaCIF = g.CIF
group by g.CIF;


-- 2. Es vol saber el total de ramaders que té cada Granja (nom). Només d'aquells ramaders que estiguin
-- donats d'alta a partir del 2010 (inclòs el 2010) i tinguin sou. Alerta, fixa’t amb les dades dels ramaders,
-- pot donar-se el cas que el ramader encara no li hagin assignat cap sou o que cobri 0€.

select * from granja g
	inner join ramader r on r.granjaCIF = g.CIF
;
select g.nom, count(r.nom) from granja g
	inner join ramader r on r.granjaCIF = g.CIF
where r.sou is not null 
and r.sou>0
and r.dataAlta>'2009-12-31'
group by g.nom;


-- 3. Es vol saber el total de litres de llet que s'ha produït per any i tipus d'animal (ha de dir Ovella o Vaca)
-- de tots el que s'ha registrat en la base de dades. Ordena la informació per Any de producció. En la
-- nostre base de dades NOMÉS hi hauran Ovelles o Vaques. Utilitza la funció IF(valor=5,'A','B') --> Si
-- per exemple valor = 5, el resultat serà 'A', sinó 'B'.

select * from animal;
select * from munyir;

select year(m.dataMuny) as año,sum(m.qtt) as qttLitres, case
when a.tipus='O' then 'Ovella'
when a.tipus='V' then 'Vaca' end as 'tipusAnimal'
 from munyir m
	inner join animal a on m.animalXip = a.XIP
group by year(m.dataMuny), tipusAnimal
order by año asc;

-- 4. Es volen sacrificar els animals de la granja "Llet nostra" que van donar producció (munyir) durant el
-- mes de febrer, març i desembre dels anys 2016, 2017 i 2018. Cal eliminar-los de la BBDD.

select CIF from granja where nom='Llet nostra';

DELETE A.* FROM Granja G
    INNER JOIN Animal A ON G.CIF=A.GranjaCIF
    INNER JOIN Munyir M ON A.Xip=M.AnimalXip
WHERE a.granjaCIF = (select CIF from granja where nom='Llet nostra') 
AND YEAR(M.dataMuny) IN (2016,2017,2018) AND MONTH(M.dataMuny) IN (2,3,12);

select * from animal;

/* EXERCICI 5:
La granja "Llet nostra" vol premiar amb un augment de sou del 10% 
de tots els seus ramaders que aquest any facin 5 anys o més d'antiguitat. 
Cal tenir en compte que la consulta es pot executar en qualsevol any. 
Es vol que sempre sigui 5 anys abans.*/

UPDATE Ramader R
    INNER JOIN Granja G ON G.CIF = R.granjaCIF
SET R.sou = R.sou*1.10
WHERE G.nom = 'Llet Nostre' AND YEAR(now()) >= YEAR(R.dataAlta)-5;

-- EXERICIC 6
SELECT DISTINCT r.nom FROM ramader r
    INNER JOIN munyir m ON r.NIF = m.ramaderNIF
    INNER JOIN animal a ON a.xip = m.animalXip
WHERE YEAR(m.dataMuny)=2020 AND a.pes BETWEEN 80 AND 120
ORDER BY r.nom ASC;

/* EXERCICI 7:
Es vol saber quins animals,  el promig de les seves aportacions supera 0.5 litres/minut.  
Es vol mostrar tal i com es veu en la imatge.*/

SELECT A.xip, A.dataNaix, A.tipus, ROUND(SUM(M.qtt)/SUM(M.temps),2) AS PromigAportacions FROM Animal A
    INNER JOIN Munyir M ON A.xip = M.animalXip
GROUP BY 1
HAVING PromigAportacions >0.5;



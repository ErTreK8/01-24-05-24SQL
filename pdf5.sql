CREATE DATABASE DML_ex6ConsultesMonotaula;
USE DML_ex6ConsultesMonotaula;

DROP TABLE Viatge;
CREATE TABLE viatge (
  dataHora datetime,
  fila int,
  columna int,
  avio varchar(40) DEFAULT NULL,
  finestra varchar(40) DEFAULT NULL,
  origen varchar(40) DEFAULT NULL,
  desti varchar(40) DEFAULT NULL,
  importV decimal(8,2) DEFAULT NULL,
  PRIMARY KEY(dataHora,fila,columna)
);

INSERT INTO viatge VALUES ('2019-03-22 15:55:00',9,6,'Boeing 777-300ER','TRUE','Roma','Verona',187.38),('2018-12-14 10:18:00',10,3,'Airbus A320neo','TRUE','Barcelona','Bilbao',913.24),('2019-03-16 07:18:00',12,4,'Boeing 777-300ER','TRUE','Londres','Munich',1615.15),('2018-07-27 08:54:00',22,9,'Boeing 757-200PCF','TRUE','Londres','Tokio',1555.42),('2018-08-30 23:54:00',21,7,'Airbus 359-900','TRUE','Londres','Bordeaux',1469.94),('2020-02-02 21:26:00',12,8,'Boeing 787','FALSE','Barcelona','New York',1489.31),('2019-03-14 22:54:00',6,1,'Airbus A330-300','TRUE','Berlín','Bilbao',1055.92),('2020-01-05 21:33:00',3,8,'Boeing 787-8','TRUE','Boston','Tokio',1019.84),('2020-03-22 08:42:00',18,1,'Boeing 757-200PCF','FALSE','Berlín','Sevilla',1229.91),('2020-05-22 08:08:00',2,6,'Boeing 787-8','TRUE','París','Cancún',1114.31),('2020-07-21 00:36:00',22,3,'Airbus A330-300','TRUE','San Francisco','Bordeaux',216.63),('2019-06-07 16:09:00',12,5,'Airbus A321','TRUE','Atenas','Tokio',1283.33),('2019-10-04 21:55:00',14,3,'Airbus A321','TRUE','París','Bordeaux',654.95),('2018-07-13 05:30:00',17,9,'Boeing 757-200PCF','TRUE','Boston','Cancún',1432.56),('2019-06-12 02:03:00',6,5,'Boeing 777-300ER','FALSE','San Francisco','Sevilla',1262.15),('2018-11-16 06:17:00',3,3,'Airbus 359-900','FALSE','París','Bordeaux',352.40),('2019-06-12 20:53:00',12,9,'Airbus A318','FALSE','Roma','Seúl',1260.14),('2018-05-19 07:21:00',11,8,'Airbus A320neo','FALSE','Atenas','Verona',901.02),('2019-08-04 08:11:00',13,2,'Airbus A321','TRUE','París','Bordeaux',1499.10),('2019-06-27 01:57:00',17,3,'Airbus A321','FALSE','Dubai','La Habana',1193.67),('2019-09-13 05:18:00',1,5,'Embraer 175','FALSE','Boston','Verona',1537.89),('2020-06-23 07:09:00',22,1,'Boeing 747-8F','FALSE','Toronto','Bilbao',754.85),('2019-03-17 12:41:00',18,7,'Airbus A320neo','FALSE','Atenas','New York',1810.61),('2019-02-06 12:01:00',8,7,'Airbus A321','FALSE','París','Tokio',1090.43),('2020-02-23 23:27:00',22,9,'Airbus 359-900','FALSE','Roma','Seúl',1066.48),('2019-06-16 03:38:00',21,9,'Embraer 175','TRUE','Madrid','Verona',554.67),('2018-12-13 15:35:00',11,5,'Airbus A321','TRUE','San Francisco','Manchester',1808.86),('2020-08-11 21:20:00',3,3,'Boeing 777-300ER','TRUE','Berlín','La Habana',1667.03),('2020-07-27 02:50:00',8,4,'De Havilland Canada DHC-8-300','TRUE','Toronto','Munich',1407.84),('2018-12-23 22:41:00',19,3,'Airbus A318','FALSE','Barcelona','New York',1998.84),('2018-09-18 05:00:00',21,4,'Boeing 787','TRUE','Berlín','New York',656.82),('2019-04-30 03:00:00',5,7,'Boeing 747-8F','TRUE','Roma','Beijing',73.45),('2020-08-06 09:49:00',19,3,'Boeing 777-300ER','TRUE','San Francisco','Manchester',1903.71),('2019-07-30 04:05:00',4,1,'Airbus A330-300','FALSE','Barcelona','Bordeaux',1814.23),('2018-05-07 08:00:00',5,1,'Airbus 359-900','TRUE','Berlín','Seúl',1647.46),('2019-07-09 01:43:00',4,3,'Embraer 175','TRUE','Madrid','Beijing',1364.47),('2020-06-10 02:11:00',18,5,'Boeing 757-200PCF','TRUE','Atenas','La Habana',1501.92),('2019-07-09 09:23:00',17,9,'Airbus A320neo','FALSE','Lisboa','Bilbao',398.60),('2020-01-24 22:36:00',5,4,'Airbus A320neo','FALSE','Berlín','Seúl',334.09),('2020-08-11 03:46:00',17,9,'Airbus A320neo','FALSE','Atenas','Bordeaux',1645.51),('2018-12-16 11:22:00',18,6,'Airbus A318','FALSE','Toronto','Seúl',586.20),('2019-09-07 14:39:00',20,1,'Airbus A318','FALSE','Roma','Tokio',968.52),('2019-09-20 12:32:00',19,8,'Embraer 175','TRUE','Atenas','Sevilla',616.36),('2019-01-15 01:12:00',15,1,'Airbus A321','FALSE','Boston','Tokio',1075.34),('2019-07-29 10:13:00',18,6,'Boeing 747-8F','FALSE','Berlín','Seúl',1866.41),('2019-03-24 16:25:00',4,7,'Boeing 757-200PCF','TRUE','Dubai','La Habana',1482.38),('2018-06-13 22:02:00',19,8,'Airbus A330-300','FALSE','San Francisco','Cancún',160.81),('2019-01-21 17:37:00',12,9,'Airbus A320neo','TRUE','Atenas','Sevilla',1691.81),('2020-03-07 22:35:00',21,1,'Boeing 787','TRUE','Roma','Bordeaux',1385.88),('2018-06-10 19:20:00',17,9,'Boeing 757-200PCF','TRUE','Berlín','New York',1249.66),('2019-07-27 10:10:00',3,1,'Airbus 359-900','FALSE','Toronto','New York',1705.92),('2020-02-19 17:05:00',3,2,'Boeing 787-8','TRUE','Toronto','New York',964.92),('2018-12-03 11:24:00',17,5,'De Havilland Canada DHC-8-300','FALSE','San Francisco','Sevilla',1641.39),('2020-05-10 05:50:00',6,2,'Boeing 747-8F','FALSE','Berlín','Bordeaux',1238.08),('2020-06-04 01:35:00',6,4,'Airbus 359-900','FALSE','Boston','Cancún',1720.58),('2019-06-10 23:50:00',16,5,'De Havilland Canada DHC-8-300','FALSE','Berlín','Sevilla',1353.22),('2018-10-13 23:21:00',19,7,'Airbus A320neo','FALSE','Berlín','Bilbao',189.61),('2020-01-04 17:00:00',14,8,'De Havilland Canada DHC-8-300','FALSE','San Francisco','Manchester',289.46),('2020-06-29 18:32:00',20,3,'Airbus A318','FALSE','San Francisco','La Habana',852.73),('2019-12-31 07:31:00',15,1,'Airbus 359-900','TRUE','Toronto','La Habana',587.11),('2018-11-08 04:41:00',8,1,'Embraer 175','FALSE','París','La Habana',897.80),('2020-06-17 13:21:00',22,4,'Airbus A321','TRUE','Toronto','New York',373.58),('2018-11-01 08:01:00',2,3,'Airbus A330-300','TRUE','Boston','Beijing',1192.12),('2019-03-01 04:50:00',8,7,'Boeing 757-200PCF','FALSE','Roma','Beijing',999.35),('2019-02-18 11:35:00',16,8,'Airbus A318','TRUE','Roma','Beijing',1300.00),('2019-08-23 12:05:00',7,9,'Boeing 757-200PCF','TRUE','Madrid','Cancún',1782.41),('2019-09-15 17:41:00',2,5,'Airbus A330-300','FALSE','Londres','Munich',639.51),('2020-05-16 16:00:00',20,8,'Boeing 777-300ER','TRUE','Lisboa','La Habana',1556.10),('2018-07-21 23:08:00',21,7,'Boeing 777-300ER','TRUE','París','Cancún',405.86),('2020-01-05 18:19:00',10,3,'De Havilland Canada DHC-8-300','FALSE','Berlín','New York',1518.38),('2019-08-04 19:33:00',6,9,'Airbus A330-300','FALSE','Madrid','Seúl',777.22),('2020-05-16 17:15:00',8,9,'Airbus 359-900','FALSE','Berlín','Seúl',142.60),('2019-04-06 15:55:00',1,2,'Boeing 747-8F','TRUE','Roma','Munich',1435.48),('2020-07-28 14:42:00',1,9,'Boeing 787-8','FALSE','Barcelona','Seúl',1655.46),('2020-05-21 17:28:00',2,7,'Boeing 757-200PCF','TRUE','Dubai','Munich',1802.35),('2018-12-26 09:22:00',7,4,'Boeing 757-200PCF','TRUE','Toronto','Sevilla',227.92),('2019-04-03 20:27:00',4,1,'Boeing 787-8','FALSE','París','Bordeaux',909.64),('2020-04-19 22:53:00',3,9,'Embraer 175','FALSE','Barcelona','La Habana',581.87),('2018-09-08 22:30:00',16,7,'Boeing 787','TRUE','Toronto','Bilbao',817.75),('2018-07-27 16:57:00',10,5,'Airbus 359-900','TRUE','París','Seúl',626.94),('2018-06-08 14:22:00',9,6,'De Havilland Canada DHC-8-300','TRUE','San Francisco','Beijing',1895.33),('2020-08-05 08:10:00',11,3,'Boeing 747-8F','TRUE','Barcelona','La Habana',184.15),('2018-11-25 06:10:00',11,6,'Boeing 787','FALSE','Berlín','Verona',334.96),('2019-09-27 22:11:00',15,4,'Boeing 787-8','TRUE','San Francisco','Manchester',1984.31),('2019-08-10 12:07:00',13,2,'Boeing 787','TRUE','Boston','Beijing',561.26),('2019-11-15 10:25:00',22,7,'Airbus A321','FALSE','Londres','New York',495.53),('2020-04-05 12:37:00',11,1,'Boeing 787','TRUE','Berlín','Bordeaux',1589.59),('2020-03-23 17:02:00',8,6,'De Havilland Canada DHC-8-300','TRUE','San Francisco','Verona',451.10),('2019-01-01 15:53:00',16,8,'Embraer 175','TRUE','Atenas','Beijing',351.78),('2019-09-13 15:27:00',5,1,'Boeing 777-300ER','FALSE','Atenas','Sevilla',1082.79),('2019-01-06 07:09:00',2,1,'Airbus 359-900','TRUE','París','Munich',1362.55),('2019-03-21 05:44:00',17,1,'Embraer 175','FALSE','Toronto','Manchester',1702.97),('2018-08-12 06:34:00',22,8,'Airbus 359-900','FALSE','Lisboa','Munich',1295.83),('2018-05-11 21:44:00',17,1,'Airbus A330-300','TRUE','Londres','Seúl',252.01),('2020-04-27 16:09:00',1,9,'Airbus A320neo','FALSE','Madrid','Tokio',308.33),('2019-04-15 22:53:00',19,4,'Boeing 787','TRUE','Madrid','Bilbao',1415.53),('2019-05-27 10:24:00',21,1,'Embraer 175','FALSE','Atenas','Tokio',69.40),('2018-04-26 20:49:00',22,1,'Boeing 747-8F','FALSE','París','Beijing',929.17),('2019-05-24 10:35:00',4,9,'Airbus A318','FALSE','Dubai','Cancún',143.09),('2019-09-17 11:42:00',14,4,'Airbus A321','FALSE','Lisboa','Manchester',533.04);



/********* EXERCICI  2: ************************/

-- Resol les següents consultes:
-- 1.	Obtenir totes les dades de la taula viatja ordenades alfabèticament per origen i destinació .
SELECT * FROM Viatge 
ORDER BY origen, desti; 

-- 2.	Obtenir les diferents poblacions d'origen i de destí de tots els viatges 
-- que s'han realitzat.
SELECT DISTINCT origen, desti FROM Viatge;

-- 3.	Obtenir quants bitllets de vol s’han venut amb seients de finestra.
SELECT COUNT(*) as QttSeientsFinestra FROM Viatge 
WHERE finestra = 'True';

-- 4.	Obtenir quants bitllets de vol s’han venut amb seients sense finestra.
SELECT COUNT(*) as QttSeientsFinestra FROM Viatge 
WHERE finestra = 'False';


-- 5.	Obtenir la informació referent al model de tots els avions 
-- que el seu nom comenci per ‘AIR’.
SELECT * FROM Viatge
WHERE avio LIKE 'AIR%';

-- 6.	Obtenir totes les dades dels vols entre Toronto i Nova York 
-- realitzats durant el 2020 ordenades per import (de major a menor).

SELECT * FROM Viatge
WHERE (origen = 'Toronto' AND desti = 'New York' OR origen ='New York' AND desti ='Toronto')
		AND YEAR(dataHora) = 2020
ORDER BY importV DESC;

insert into Viatge values ('2020-02-12',2,1,'Mejias Air 747','TRUE','Toronto','Toronto',20);

-- 7.	Obtenir l’import mitjà de tots els vols entre Toronto y Nova York 
-- realitzats els últims 10 anys. Si s’executa la consulta el 2020, 
-- serien els anys 2011-2020 (ambdós inclosos).
SELECT CONCAT(ROUND(AVG(importV),2),'€') AS Mitjana FROM Viatge
	WHERE (origen = 'Toronto' AND desti = 'New York' OR origen ='New York' AND desti ='Toronto')
			AND YEAR(NOW())-YEAR(dataHora) <=10;

insert into Viatge values ('2020-02-13',2,1,'Mejias Air 747','TRUE','New York','Toronto',20);
insert into Viatge values ('2009-02-13',2,1,'Mejias Air 747','TRUE','New York','Toronto',20);
insert into Viatge values ('2015-02-13',2,1,'Mejias Air 747','TRUE','New York','Toronto',20);


-- 8.	Obtenir el total de passatgers que han sortit de Toronto a bord d’un Airbus.
SELECT COUNT(*) AS QttAvions FROM Viatge
	WHERE origen = 'Toronto' AND UPPER(avio) LIKE '%AIRBUS%';

-- 9.	Obtenir el total de passatgers que han ocupat el seient que s’ubica a la fila 17, columna 9.
SELECT COUNT(*) as QttPAssatgers FROM Viatge
	WHERE fila = 17 AND columna = 9;

-- 10.	Obtenir l’import total de les vendes de passatges 
-- realitzats amb origen l’aeroport de Barcelona. 
-- L’import s’ha de arrodonir a un import sencer.

SELECT CONCAT(ROUND(SUM(importV),0),'€') AS 'Import Total' FROM Viatge
	WHERE origen = 'Barcelona';

-- 11.	Obtenir l’import mínim i màxim dels vols procedents de Madrid efectuats al 2019.
SELECT MIN(importV) AS 'Import Mínim', MAX(importV) AS 'Import Màxim' FROM Viatge 
	WHERE origen = 'Madrid' AND YEAR(dataHora) = 2019;

-- 12.	Obtenir el llistat de tots els avions que inclouen en el seu nom el valor 300.
SELECT DISTINCT avio FROM Viatge
	WHERE avio LIKE '%300%';

-- 13.	Comptabilitzar el total de vols realitzats amb origen o destinació 
-- Espanya a partir de la declaració de l’estat d’alarma a Espanya el 14/03/2020. 
-- Cal considerar els següents aeroports d’origen: Barcelona i Madrid, 
-- i els següents de destí: Bilbao i Sevilla.

SELECT COUNT(*) AS Qtt FROM Viatge
	WHERE (origen IN ('Barcelona','Madrid') OR desti IN ('Bilbao','Sevilla')) AND dataHora > '2020-03-14';

-- 14.	Obtenir totes les dades dels vols realitzats entre els mesos de Juny i Agost de 2019,
--  ambdós inclosos. Ordenar les dades per data i hora en format ascendent.

SELECT * FROM Viatge
	WHERE dataHora BETWEEN '2019-06-01' AND '2019-08-31'
ORDER BY dataHora ASC;

-- 14B Mostra el vols realitzats en febrer, març o agost del 2020.
SELECT dataHora, origen, desti FROM Viatge
	WHERE dataHora LIKE '2020-02%' OR dataHora LIKE '2020-03%' OR dataHora LIKE '2020-08%';   

SELECT dataHora, origen, desti FROM Viatge
	WHERE MONTH(dataHora) IN (2,3,8) AND YEAR(dataHora) =2020;


-- 15.	Obtenir l’import recaptat en relació a tots
-- els vols que han sortit des de Madrid o des de Barcelona durant el 2019.

SELECT ROUND(SUM(ImportV)) as ImportRecaptat FROM Viatge
    WHERE YEAR(DataHora) =2019 AND origen IN ('Madrid','Barcelona');
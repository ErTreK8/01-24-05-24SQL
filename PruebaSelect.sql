DROP DATABASE IF EXISTS superHeroisDB;
CREATE DATABASE superHeroisDB;
USE superHeroisDB;

CREATE TABLE Planeta( 
	nom VARCHAR(20) NOT NULL, 
	massaa DECIMAL(6,2) NOT NULL,
	llunes TINYINT,
	mitjaTemp INT,
	PRIMARY KEY(nom)
);
CREATE TABLE Heroi(
	nom VARCHAR(40) NOT NULL,
	planetaNom VARCHAR(20),
	inteligencia DECIMAL(4,2) NOT NULL,
	forca DECIMAL(4,2) NOT NULL,
	PRIMARY KEY(nom),
	CONSTRAINT FK_heroi_planeta FOREIGN KEY(planetaNom) REFERENCES planeta(nom)
		ON UPDATE CASCADE
		ON DELETE RESTRICT
);


INSERT INTO planeta (nom, massaa, llunes, mitjaTemp) VALUES
('Tierra', 5.97, 1, 15),('Krypton', 20.0, 2, 30),
('Asgard', 40.0, 3, 25),('Xandar', 10.0, 2, 20),
('Tatooine', 8.0, 2, 30),('Gotham', 7.0, 0, 18),
('Namek', 15.0, 4, 22),('Vormir', 25.0, 0, 10),
('Oa', 30.0, 7, 28),('Alderaan', 12.0, 1, 22);


INSERT INTO heroi (nom, planetaNom, inteligencia, forca) VALUES
('Superman', 'Krypton', 95.75, 98.20), ('Thor', 'Asgard', 50.50, 97.80),
('Wonder Woman', 'Tierra', 63.40, 34.75), ('Nova', 'Xandar', 47.30, 91.40),
('Batman', 'Gotham', 88.75, 96.30), ('Goku', 'Namek', 54.60, 98.90),
('Black Widow', 'Vormir', 46.80, 92.60), ('Green Lantern', 'Oa', 97.40, 98.70),
('Princess Leia', 'Alderaan', 64.60, 97.40), ('Spider-Man', 'Tierra', 58.40, 92.60),
('Iron Man', 'Tierra', 26.50, 45.80),('Captain America', 'Tierra', 62.80, 74.20),
('Hulk', 'Tierra', 78.60, 59.50),('Black Panther', 'Namek', 64.75, 96.40),
('Doctor Strange', 'Tierra', 68.90, 73.75),('Captain Marvel', 'Tierra', 77.20, 97.80),
('Scarlet Witch', 'Tatooine', 95.30, 92.60),('Ant-Man', 'Tierra', 61.40, 88.90),
 ('Wolverine', 'Asgard', 93.20, 96.90),('Daredevil', NULL, 65.20, 70.50),
('Hawkeye', NULL, 68.40, 72.80),('Punisher', NULL, 70.80, 75.90),
('Jessica Jones', NULL, 63.50, 68.20),('Luke Cage', NULL, 72.10, 77.30);

SELECT * FROM Planeta;
SELECT * FROM Heroi;
Select Heroi.planetaNom as "Nom del Planeta", Heroi.nom as "Nom de l'Heroi", Heroi.inteligencia as "Intel·ligencia de l' Heroi", Heroi.forca as "Força de l' Heroi" from Heroi;

Select nom, forca/inteligencia as "Proporcio Força/inteligencia" from Heroi;

-- Redondear a 2 decimales el round necesita 2 parametros
Select nom, Round(forca/inteligencia,2) as "Proporcio Força/inteligencia" from Heroi;

-- Mostra el nom de l'heroi i una cadena composada per la inicial del l'heroi un / i les 4 primeres lletres del seu planeta 
-- Alfres - Jupiter --> A/Jupiter

Select nom, planetaNom, concat(left(nom, 1),'/', left(planetanom,4)) as FUMATA from Heroi;


select Heroi.Nom, Planeta.Nom, planeta.llunes  from Heroi, Planeta
	where (Heroi.planetaNom = Planeta.Nom);

-- cositas
select year('2023-02-01'), month('2023-02-01'), day('2023-02-01'), hour('2023-02-01 08:35'), minute('2023-02-01 08:35'),'2023-02-01 08:35';
Select day (now());

-- Cuantos planetas hay

Select count(*) from Planeta;
-- Cuantas lunas hay en total?
Select SUM(llunes) from Planeta;

-- Digues la mitja de massa dels planetes

Select round(avg(massaa),2) from Planeta;

-- quina es la força mes alta del herois

Select Max(forca) from Heroi;

-- quina es la força mes petita del herois

Select Min(forca) from Heroi;


-- planetas que tienen 2 o menos lunas

SELECT Planeta.nom, Planeta.massaa, Planeta.llunes FROM Planeta
WHERE llunes <=2 AND massaa > 12;

-- mostra aquells planetes que tenen entre 2 i 8 llunes

select * from planeta
where llunes >=2 and llunes <=8;

select * from planeta
where llunes between 2 and 8;

-- mostra aquells herois que siguin del planeta terra, namek o Xandar

select * from Heroi
where planetaNom='Namek' or planetaNom='Tierra' or PlanetaNom='Xandar';

select * from Heroi
where planetaNom in ('Namek','Tierra','Xandar');

select * from Heroi
where planetaNom not in ('Namek','Tierra','Xandar');

-- Mostra aquells Herois que no son del planeta terra
Select * from Heroi
Where planetaNom != 'Tierra';

-- Mostra aquells planetes que no tenen 2 llunes i que la seva masa es 20,30,40

select * from Planeta
where llunes !=2 and massaa in(20,30,40);

select * from Planeta
where llunes !=2 and massaa = 20 or massaa=30 or massaa=40;
  
-- Mostra aquells planetes que el seu nom del planeta comenci per A
-- EL % es que hayan mas cosas despues de la A Ejemplo:             %A que acaben por A        %A% que tengan A       A% que acaben por A
Select * from planeta
where nom LIKE 'A%';

-- Mostra aquells Planetes que la segona lletra sigui una A
-- Cada guion bajo es una letra para delante si pongo 2 guiones sera la tercera letra
select * from Planeta
where nom like '_A%';

-- Mostra un llistat de quantitat de llunes disponibles dels plantetes
-- EL distinct elimina los duplicados
select distinct llunes from planetA
order by llunes asc;

-- Mostra els planetes ordenats per llunes ascendetment i per temeratura desc
-- Primero mira las lunas y luego la temperatura. Si hay un empate en lunas va a la temperatura

select * from planeta
order by llunes asc, mitjaTemp desc;

-- mostra aquells planetes que tenen 2 o mes llunes, la temperatura mitjas esta compressa entre 10 i 80 , el seu nom conte un a o una e
-- ordenado por nom alfabeticament
-- saber de cada planeta la temperatura normal i en kelvins (multiplicar por 273)


select *, (mitjaTemp+273) as 'Kelvins' from Planeta
where llunes>=2 and mitjaTemp between 10 and 80 and (nom like '%A%' or Nom like '%e%') 
order by nom asc;


-- SUBCONSULTES:


-- Mostra el bastidor del cotxe més car:
SELECT MAX(preuCost) FROM Cotxe;

SELECT bastidor, preuCost FROM Cotxe 
    WHERE preuCost = (SELECT MAX(preuCost) FROM Cotxe);
    
-- Mostra els vehicles que tenen el mateix color que el cotxe 
-- amb bastidor  AHPTCDNED63585726

SELECT color FROM Cotxe WHERE bastidor ='AHPTCDNED63585726';

SELECT * FROM Cotxe 
WHERE color = (SELECT color FROM Cotxe WHERE bastidor ='AHPTCDNED63585726');

-- Mostra per cada any de venta la mitja del preuCost dels cotxes. NO s'ha de tenir en compte
-- els cotxes del mateix any de venta que el cotxe amb bastidor  'AHPTCDNED63585726

SELECT YEAR(dataVenda) FROM Cotxe WHERE bastidor = 'AHPTCDNED63585726';

SELECT YEAR(dataVenda) AS AnyVenda, ROUND(AVG(preuCost),2) AS Mitja FROM Cotxe
WHERE YEAR(dataVenda) != (SELECT YEAR(dataVenda) FROM Cotxe WHERE bastidor = 'AHPTCDNED63585726' )
GROUP BY AnyVenda; 

-- Digues quin és color de l'últim cotxe venut.
select MAX(dataVenda) from cotxe;

SELECT color FROM Cotxe 
WHERE dataVenda = (select MAX(dataVenda) from cotxe);

-- Mostra les dades d'aquells vehicles que son de color: Verd, Vermel o Blanc
-- que s'han venut amb preu de cost comprés entre 10000 y 50000 el 
-- mateix any que el cotxe venut amb matricula 6059JAA.

SELECT * FROM Cotxe
WHERE color IN ('Verd','Vermell','Blanc') AND preuCost BETWEEN 10000 and 50000 AND
    YEAR(dataVenda) = (SELECT YEAR(dataVenda) FROM Cotxe WHERE matricula = '6059JAA')
ORDER BY COLOR;


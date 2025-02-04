CREATE DATABASE IF NOT EXISTS pdf8;
USE pdf8;

DROP TABLE IF EXISTS Propietari;
CREATE TABLE IF NOT EXISTS Propietari(
	DNI CHAR(9) PRIMARY KEY,
    nom VARCHAR(20) NOT NULL,
    cognom VARCHAR(20) NOT NULL,
    dataNaix DATE NOT NULL,
    datadeFunc DATE
);
DROP TABLE IF EXISTS Animal;
CREATE TABLE IF NOT EXISTS Animal(
	xip char(11) PRIMARY KEY,
    nom VARCHAR(20) NOT NULL,
	tipus VARCHAR(10) NOT NULL,
    dataNaix DATE NOT NULL,
    datadeFunc DATE,
    preu DECIMAL(6,2) NOT NULL,
    impost DECIMAL(6,2) NOT NULL,
    PropietariDNI CHAR(9),
    constraint veriftipus check(tipus='Gat' OR tipus='Gos'OR tipus='Reptil'OR tipus='Ocell' OR tipus='Tortuga' OR tipus='Peix' OR tipus='Ocell'),
    constraint fk_Animal_Propietari FOREIGN KEY(PropietariDNI) REFERENCES Propietari(DNI)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

INSERT INTO propietari values ('11111111A','Joan', 'Garcia Blasco','2000-04-08',null);
INSERT INTO propietari values ('22222222B','Maria', 'Fernandez Castro','1995-02-18', '2023-12-18');
INSERT INTO propietari values ('33333333C','Susana', 'Porto ‘Sanchez','2001-05-09',null);
INSERT INTO propietari values ('44444444D','Marta', 'Gonzalez Ruiz','2003-05-14',null);
INSERT INTO animal values ('xip00000001','Mopy','Gat','2017-10-05',null,1000,120,'11111111A');
INSERT INTO animal values ('xip00000002','Kira','Gos','2016-07-05',null,2000,120.89,'22222222B');
INSERT INTO animal values ('xip00000003','Coco','Gat','2017-10-05','2018-02-15',1000,90,null);
INSERT INTO animal values ('xip00000004','	Chipon','Reptil','2016-10-05','2017-06-07',2000,120,'22222222B');
INSERT INTO animal values ('xip00000005','Piolín','Ocell','2016-10-05',null,300,50,null);
INSERT INTO animal values ('xip00000006','Chispita','Reptil','2016-07-05',null,600,120.89,'22222222B');


CREATE TABLE IF NOT EXISTS Cotxes(
    matricula CHAR(8) PRIMARY KEY,
    marca VARCHAR(20),
    tipusCombustible VARCHAR(20),
    cavalls INT,
    color VARCHAR(20),
    preu DECIMAL(10,2)
);

INSERT INTO Cotxes (matricula, marca, tipusCombustible, cavalls, color, preu)
VALUES
    ('1234ABC', 'Ford', 'Gasolina', 150, 'Rojo', 20000.00),
    ('5678DEF', 'Toyota', 'Híbrido', 120, 'Azul', 25000.00),
    ('9012GHI', 'BMW', 'Diésel', 180, 'Negro', 30000.00),
    ('2345JKL', 'Audi', 'Gasolina', 200, 'Blanco', 35000.00),
    ('6789MNO', 'Mercedes', 'Diésel', 160, 'Gris', 40000.00),
    ('3456PQR', 'Volkswagen', 'Gasolina', 140, 'Plateado', 22000.00),
    ('7890STU', 'Renault', 'Diésel', 130, 'Verde', 18000.00),
    ('4567VWX', 'Peugeot', 'Gasolina', 110, 'Negro', 15000.00),
    ('8901YZA', 'Seat', 'Híbrido', 100, 'Azul', 28000.00),
    ('5678BCD', 'Citroën', 'Diésel', 120, 'Rojo', 23000.00),
    ('9012EFG', 'Fiat', 'Gasolina', 90, 'Blanco', 17000.00),
    ('2345HIJ', 'Opel', 'Diésel', 160, 'Gris', 32000.00),
    ('6789KLM', 'Skoda', 'Gasolina', 140, 'Plateado', 24000.00),
    ('3456NOP', 'Hyundai', 'Diésel', 130, 'Verde', 20000.00),
    ('7890QRS', 'Kia', 'Gasolina', 110, 'Negro', 18000.00),
    ('4567TUV', 'Volvo', 'Híbrido', 100, 'Azul', 27000.00),
    ('8901WXY', 'Mazda', 'Diésel', 120, 'Rojo', 22000.00),
    ('5678ZAB', 'Subaru', 'Gasolina', 90, 'Blanco', 16000.00),
    ('9012CDE', 'Nissan', 'Diésel', 160, 'Gris', 31000.00),
    ('2345FGH', 'Honda', 'Gasolina', 140, 'Plateado', 23000.00),
    ('6789IJK', 'Mitsubishi', 'Diésel', 130, 'Verde', 19000.00),
    ('3456LMN', 'Suzuki', 'Gasolina', 110, 'Negro', 17000.00),
    ('7890OPQ', 'Lexus', 'Híbrido', 100, 'Azul', 26000.00),
    ('4567RST', 'Jeep', 'Diésel', 120, 'Rojo', 21000.00),
    ('8901UVW', 'Land Rover', 'Gasolina', 90, 'Blanco', 15000.00),
    ('5678XYZ', 'Porsche', 'Diésel', 160, 'Gris', 30000.00),
    ('9012ABC', 'Ferrari', 'Gasolina', 140, 'Plateado', 22000.00),
    ('2345DEF', 'Lamborghini', 'Diésel', 130, 'Verde', 18000.00),
    ('6789GHI', 'Bugatti', 'Gasolina', 110, 'Negro', 16000.00),
    ('3456JKL', 'Rolls-Royce', 'Híbrido', 100, 'Azul', 25000.00),
    ('7890MNO', 'Bentley', 'Diésel', 120, 'Rojo', 20000.00),
    ('4567PQR', 'Aston Martin', 'Gasolina', 90, 'Blanco', 14000.00),
    ('8901STU', 'Jaguar', 'Diésel', 160, 'Gris', 29000.00),
    ('5678VWX', 'McLaren', 'Gasolina', 140, 'Plateado', 21000.00),
    ('9012YZA', 'Lotus', 'Diésel', 130, 'Verde', 17000.00),
    ('2345BCD', 'Alfa Romeo', 'Gasolina', 110, 'Negro', 15000.00),
    ('6789EFG', 'Maserati', 'Híbrido', 100, 'Azul', 24000.00),
    ('3456HIJ', 'Tesla', 'Diésel', 120, 'Rojo', 19000.00),
    ('7890KLM', 'Mini', 'Gasolina', 90, 'Blanco', 13000.00),
    ('4567NOP', 'Smart', 'Diésel', 160, 'Gris', 28000.00),
    ('8901QRS', 'Dacia', 'Gasolina', 140, 'Plateado', 20000.00),
    ('5678TUV', 'Infiniti', 'Diésel', 130, 'Verde', 16000.00),
    ('9012WXY', 'Volvo', 'Gasolina', 110, 'Negro', 14000.00),
    ('2345ZAB', 'Lexus', 'Híbrido', 100, 'Azul', 23000.00),
    ('6789CDE', 'Audi', 'Diésel', 120, 'Rojo', 18000.00),
    ('3456FGH', 'BMW', 'Gasolina', 90, 'Blanco', 12000.00),
    ('7890IJK', 'Mercedes', 'Diésel', 160, 'Gris', 27000.00),
    ('4567LMN', 'Volkswagen', 'Gasolina', 140, 'Plateado', 19000.00),
    ('8901OPQ', 'Renault', 'Diésel', 130, 'Verde', 15000.00),
    ('5678RST', 'Peugeot', 'Gasolina', 110, 'Negro', 13000.00),
    ('9012UVW', 'Seat', 'Híbrido', 100, 'Azul', 22000.00),
    ('2345XYZ', 'Citroën', 'Diésel', 120, 'Rojo', 17000.00);

select * from cotxes;




-- 1. Obtenir les espècies de tots els animals que on el seu impost sigui més gran que el
-- 10% del preu.

select * from animal
where impost>(preu/100*10);

-- 2. Obtenir el preu final total de tots els animals vius associats al propietari amb dni
-- 32348676K.

select sum(preu) as 'Preu Final' from animal
where propietariDNI='32348676K';

select * from propietari
where DNI='32348676K';

-- 3. Obtenir el preu total de tots els animals vius que tenen com a propietari a la Sandra.

select a.xip, a.nom as 'Nom Animal', PropietariDNI as 'DNI Propietari', p.nom as 'Nom Propietari'  from animal a
	inner join propietari p on p.DNI = PropietariDNI
    where p.nom='Sandra';
    
-- 4. Obtenir el nom del propietari on l'impost de l’animal és més elevat

select p.nom as 'Nom Propietari' from animal a
	inner join propietari p on p.DNI = PropietariDNI
    where a.impost=(select max(impost) from animal)
    group by p.nom;

-- 5. Obtenir la informació de tots els animals amb el nom del seu propietari.

select a.xip, a.nom as 'Nom Animal', PropietariDNI as 'DNI Propietari', p.nom as 'Nom Propietari'  from animal a
	inner join propietari p on p.DNI = PropietariDNI;


-- 6. Obtenir el nom de l'animal o animals que tenen l'impost més elevat i que l'animal
-- encara està en vida.

select a.xip, a.nom as 'Nom Animal', PropietariDNI as 'DNI Propietari', p.nom as 'Nom Propietari'  from animal a
	inner join propietari p on p.DNI = PropietariDNI
    where a.impost = (select max(impost) from animal);

-- 7. Obtenir el preu final de tots els animals MORTS ordenats de major a menor preu.
-- Associa el nom de "Preu Total" a la columna.

select sum(a.preu) from animal a
	inner join propietari p on p.DNI = PropietariDNI
    where a.datadeFunc!= Null;

select * from animal;
-- 8. Obtenir el preu final més gran de tots els animals.

select * from animal
where (preu+impost)=(select max(preu+impost) as preumaxim from animal);

-- 9. Obtenir el nom de l'animal més car (major preu final).

select nom from animal
where (preu+impost)=(select max(preu+impost) as preumaxim from animal);

-- 10.Obtenir el nom d’aquells animals que hagin nascut el mateix any que el propietari
-- “Maria Fernandez Castro” o “Susana Porto Sanchez”.

select year(dataNaix) from propietari
where nom in ('Maria','Susana');

select a.nom from animal a
	inner join propietari p on p.DNI = PropietariDNI
    where year(a.dataNaix)=year(p.dataNaix) in (select year(dataNaix) from propietari where nom in ('Maria','Susana'));

-- 11: Obtenir el nom del propietari de l'animal que té un preu final més elevat

SELECT P.nom as propietari,A.nom as animal,A.preu FROM Propietari P
    INNER JOIN Animal A ON A.PropietariDNI=P.DNI
    WHERE A.preu+A.impost=(select max(preu+impost) FROM Animal);
    
-- 12: Veure el nom del propietari amb el seu nom d’animal que han nascut entre els anys 2010 i 2015 (els animals), que encara estiguin vius.

SELECT P.nom,A.nom FROM Propietari P
    INNER JOIN Animal A ON A.propietariDNI=P.DNI
    WHERE year(A.dataNaix) BETWEEN 2010 AND 2015 AND A.datadeFunc IS NULL;
    
SELECT P.nom,A.nom FROM animal A
        inner join propietari P on P.dni = A.PropietariDNI
    where year(A.dataNaix) between 2010 and 2015 and A.dataDeFunc is null;

-- 13: .Volem veure el nom dels animal que el seu propietari tingui signe de l’horòscop: Cranc.

SELECT A.nom FROM Animal A
    INNER JOIN Propietari P on p.dni=A.propietariDNI
    WHERE (month(P.datanaix)=6 AND day(P.dataNaix)>=21) OR (month(P.datanaix)=7 AND day(P.datanaix)<=22);
    
-- 14: Mostra un llistat amb el nom de propietari i quantitat d’animals que té d’aquells propietaris que tinguin més de 3 animals

SELECT p.nom as Nom_propietari,COUNT(a.xip) as Cantidad_animales FROM Propietari P
	left JOIN Animal A ON P.DNI=A.propietariDNI
group by p.nom;

SELECT p.nom as Nom_propietari,COUNT(a.xip) as Cantidad_animales FROM Propietari P
    inner JOIN Animal A ON P.DNI=A.propietariDNI
GROUP BY p.DNI
HAVING COUNT(A.xip)>=3;
    
-- 15: .Mostra quin és l’animal que el seu preu supera la mitja d’animals d’especie “Rèptil”

SELECT * FROM Animal 
WHERE preu>(select AVG(preu) FROM Animal WHERE tipus='reptil');
SELECT preu FROM Animal;
-- 16: Volem veure el nom dels propietaris que aquest mes faci un any que se li va morir la seva mascota.

SELECT P.nom as Propietari FROM Propietari P
	INNER JOIN animal A ON P.DNI= A.propietariDNI
WHERE month(A.datadeFunc)=month(now()) AND year(A.datadefunc)=year(now())-1;

-- 17: .Mostra el nom del propietari i el xip i nom d’aquells animals que el seu preu sigui
-- més gran que el preu dels animals d’espècie “Rèptil” o “Gos”.

SELECT distinct(preu)FROM Animal WHERE tipus IN ('Rèptil', 'Gos');

SELECT p.nom as propietari, a.xip,a.nom as animal FROM Animal A 
    INNER JOIN Propietari P ON P.DNI= A.propietariDNI
    WHERE A.preu>=(SELECT distinct(preu)FROM Animal WHERE tipus IN ('Rèptil', 'Gos'));
    
-- 18: Volem determinar quins animals de l’espècia Rèptils o Gossos que han nascut a l’agost i setembre

SELECT * FROM Animal 
    WHERE tipus IN('reptil','gos') AND month(dataNaix) IN (8,9);
    
-- 19: Volem determinar quants animals té cada propietari. No es vol tenir en compte l’espècie “Peixos”.

select P.nom,COUNT(A.xip) as qttanimals from propietari p
    left join animal a on A.PropietariDNI=p.DNI
where tipus!='Peixos' or a.tipus is null
group by p.nom;
    
-- 20: Es vol determinar el xip i nom de l’animal que té un preu superior a la mitja.

SELECT xip,nom,preu FROM Animal
WHERE Preu>(select AVG(preu) FROM Animal);

-- 20B. Mostra el dni i nom del propietari, juntament amb el nom de l'animal
-- que la suma de tots els preus dels seus animals son major a 300.

select P.nom, p.dni as qttanimals from propietari p
    left join animal a on A.PropietariDNI=p.DNI;
    
-- 21:

SELECT tipus, xip, nom FROM Animal
	WHERE tipus IN (SELECT tipus from Animal WHERE nom IN ('Kira','Toby'));

-- 22:

SELECT * FROM Animal 
	WHERE PropietariDNI IS NULL;

-- 23:

SELECT P.nom, count(a.xip) as qttanimals FROM propietari p
	left JOIN animal a ON A.PropietariDNI=P.DNI
    GROUP BY P.nom;

-- 23B

SELECT P.*  FROM propietari p
	left JOIN animal a ON A.PropietariDNI=P.DNI
    where a.propietariDNI IS NULL;

-- 24:

CREATE TABLE IF NOT EXISTS AnimalsDifunts AS
SELECT * FROM Animal
WHERE datadeFunc IS NOT NULL
  AND datadeFunc <= CURDATE();
SELECT * FROM AnimalsDifunts;

-- 25:

SELECT tipus,ROUND(AVG(DATEDIFF(datadeFunc, dataNaix)),2) AS mitja_vida_dies FROM Animal
WHERE datadeFunc IS NOT NULL
GROUP BY tipus;

-- 26:

SELECT DISTINCT P.nom as Propietario,A.nom,CASE WHEN A.datadeFunc IS NULL THEN 'Esta vivo' ElSE 'Esta muerto'END AS Vida FROM Propietari P
	INNER JOIN Animal A ON A.PropietariDNI=P.DNI
    WHERE tipus IN ('Gat','Gos','Ocell');

-- 27:

SELECT month(datadeFunc) FROM Animal where month(datadeFunc) IN (07,10,11);

SELECT P.nom,year(P.dataNaix) as nacimientoPropietario,A.xip,A.nom as nomanimal FROM Propietari P
	INNER JOIN Animal A on P.DNI=A.PropietariDNI
    WHERE month(A.datadeFunc) IN (SELECT month(datadeFunc) FROM Animal WHERE month(datadeFunc) IN (07,10,11));

-- 28:

SELECT * FROM Animal;
SELECT DISTINCT YEAR(datadeFunc) AS any,COUNT(xip) AS quantitat_animals_morts FROM Animal
	WHERE datadeFunc IS NOT NULL AND tipus NOT IN ('Gat', 'Gos') AND YEAR(datadeFunc) != 2015;

-- 29:

SELECT A.xip, A.nom, (IF(A.dataDeFunc IS NOT NULL,DATEDIFF(A.dataDefunc,A.dataNaix),DATEDIFF(now(),A.dataNaix))-30)*2.6 AS Cost FROM Animal A
    INNER JOIN Propietari P ON P.DNI = A.propietariDNI
WHERE YEAR(P.dataNaix) < 2000;

-- 30:

CREATE TABLE Poblacion(
	CP CHAR(5) PRIMARY KEY,
    nom VARCHAR(20),
    Provincia VARCHAR(20)
);
ALTER TABLE Propietari ADD CPPoblacion CHAR(9);
ALTER TABLE Propietari ADD CONSTRAINT fk_Propietari_Poblacion FOREIGN KEY(CPPoblacion) REFERENCES Poblacion(CP)
ON UPDATE CASCADE ON DELETE RESTRICT;
INSERT INTO Poblacion VALUES ('08490','Granollers','Barcelona'), ('08430','Cardedeu','Barcelona');
UPDATE Propietari SET CPPoblacion='08490' WHERE nom IN ('Joan','Maria');
UPDATE Propietari SET CPPoblacion='08430' WHERE nom IN ('Susana','Marta');
SELECT * FROM Propietari;
-- 31:

select P.nom,P.datadeFunc,Po.nom as poblacion,A.nom as animal from Animal A
	inner join Propietari P on A.PropietariDNI = P.DNI
	inner join Poblacion Po on P.CPPoblacion = Po.CP
	where A.tipus != 'Tortuga' and P.DNI in (select DNI from Propietari where datadeFunc is not NULL) and (Po.nom = 'Granollers' or Po.nom = 'Cardedeu' or Po.nom is NULL);

-- 32:

SELECT YEAR(p.dataNaix) as Any, count(A.xip) as qttanimals FROM Poblacion Po
	inner JOIN Propietari P ON Po.CP=P.CPPoblacion
	INNER JOIN Animal A ON A.PropietariDNI=P.DNI
    WHERE A.preu>100 AND (p.CPPoblacion = 08430 or Po.nom='Granollers')
	GROUP BY year(P.dataNaix);

-- 33:

SELECT DISTINCT Po.nom,count(A.xip) as qttanimalsmorts FROM Poblacion Po
	left JOIN Propietari P ON Po.CP=P.CPPoblacion
	left JOIN Animal A ON A.PropietariDNI=P.DNI
    group by Po.nom;











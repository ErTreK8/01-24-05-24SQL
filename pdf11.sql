create database pdf11;
use pdf11;

CREATE TABLE IF NOT EXISTS Curs(
	codi varchar(4),
	nom varchar(50),
	durada int,
	categoria varchar(20),
	PRIMARY KEY(codi)
);
CREATE TABLE IF NOT EXISTS Poblacio(
	CP char(5),
	ciutat varchar(20),
	provincia varchar(20),
	PRIMARY KEY(cp)
);
CREATE TABLE IF NOT EXISTS Alumne(
	DNI char(9),
	nom varchar(20),
	cognom varchar(30),
	adreca varchar(30),
	duradaFCT int,
	poblacioCP char(5), -- FK
	cursCodi varchar(4), -- FK
	PRIMARY KEY(DNI),
	constraint fk_alumne_curs FOREIGN KEY (cursCodi) REFERENCES curs(codi)
	ON UPDATE CASCADE
	ON DELETE restrict,
	constraint fk_alumne_poblacio FOREIGN KEY (poblacioCP) REFERENCES poblacio(CP)
		ON UPDATE CASCADE 	ON DELETE set null
);

CREATE TABLE IF NOT EXISTS Empresa(
	CIF char(9),
	nom varchar(20),
	adreca varchar(30),
	responsable varchar(20),
	qttTreballadors int,
	poblacioCP char(5),
	PRIMARY KEY(CIF),
	constraint fk_empresa_poblacio FOREIGN KEY (poblacioCP) REFERENCES poblacio(CP)
	ON UPDATE CASCADE 	ON DELETE set null
);
CREATE TABLE IF NOT EXISTS Conveni(
	dataInici date,
	dataFinal date,
	durada int,
	alumneDNI char(9), -- FK
	empresaCIF char(9), -- FK
	PRIMARY KEY(alumneDNI,empresaCIF,dataInici),
	constraint fk_conveni_alumne FOREIGN KEY (alumneDNI) REFERENCES alumne(DNI)
	ON UPDATE CASCADE
	ON DELETE restrict,
	constraint fk_conveni_empresa FOREIGN KEY (empresaCIF) REFERENCES empresa(CIF)
	ON UPDATE CASCADE
	ON DELETE CASCADE
);
INSERT INTO curs VALUES ('SMX','Sistemes Microinformàtics',380,'Informàtica');
INSERT INTO curs VALUES ('DAM','Desenvolupament Aplicacions Multiplaforma',317,'Informàtica');
INSERT INTO curs VALUES ('AIF','Administració i Finances',317,'Gestió');
INSERT INTO curs VALUES ('ASIX','Administracio Sistemes Informàtics en Xarxa',317,'Informàtica');

INSERT INTO poblacio VALUES ('08401','Granollers','Barcelona');
INSERT INTO poblacio VALUES ('08430','La Roca del Vallès','Barcelona');
INSERT INTO poblacio VALUES ('08207','Sabadell','Barcelona');
INSERT INTO poblacio VALUES ('08102','Mollet','Barcelona');


INSERT INTO alumne VALUES ('12345678Z','Marc','Gonzalez','Carrer A',317,'08401','DAM');
INSERT INTO alumne VALUES ('87654321A','Pau','Perez','C/Colom,10',317,'08207','AIF');

INSERT INTO empresa VALUES ('11111111A','HP Spain',null,null,120,'08102');
INSERT INTO empresa VALUES ('12345689G','Google Spain',null,null,170,'08207');
INSERT INTO empresa VALUES ('22222222B','Epson Spain',null,null,180,'08102');

INSERT INTO conveni VALUES (now(),'2018-03-12',135,'12345678Z','12345689G');
INSERT INTO conveni VALUES ('2017-10-10','2017-12-12',130,'12345678Z','12345689G');
INSERT INTO conveni VALUES ('2017-09-25','2017-12-12',135,'87654321A','11111111A');
INSERT INTO conveni VALUES ('2017-08-10','2017-10-10',100,'87654321A','12345689G');


------------------------

-- 1. Es vol saber el nom de l’empresa que té més treballadors que la mitja de treballadors de les empreses de Sabadell i Terrassa.

	select p.ciutat, avg(qttTreballadors) from Empresa e
		inner join Poblacio p on cp= poblacioCP
	where p.ciutat in ('Sabadell','Terrassa')
    group by p.ciutat;
    
select nom, qttTreballadors from Empresa e
	where qttTreballadors > (
	select avg(qttTreballadors) from Empresa e
		inner join Poblacio p on cp= poblacioCP
	where p.ciutat in ('Sabadell','Terrassa')
    group by p.ciutat);


-- 2. Crea una vista anomenada alumnesAmbExcempcio que mostri un llistat
-- d’alumnes (nom i cognom) que tenen algun tipus d’exempció. Mostra la informació per cicle.

create or replace view alumnesAmbExcempcio as
select a.nom, a.cognom, c.nom as Curs, a.duradaFCT, c.durada from alumne a
	inner join Curs c on c.Codi = a.cursCodi
where a.duradaFCT <= C.durada;

select * from alumnesAmbExcempcio;


-- 3. Crear una vista actualizable anomenada PoblacionsBCN per inserir poblacions que 
-- només permeti valors en el camp provincia: “Barcelona” o “Girona”.

create or replace view PoblacionsBCN as
select cp, ciutat, provincia from poblacio
	where provincia in ('Barcelona','Girona')
    with CHECK OPTION;
    
select * from poblacio;

-- Aqui si que deja
insert into poblacio values ('17205','Toledo','Madrid');
-- Check option no deja porque no es de Barcelona o Girona y si no tuviera un campo tampoco
insert into poblacionsBCN values ('17206','Alicante','Valencia');
    
-- 4. Quina és l’empresa de la provincia de Barcelona que té més treballadors que l’empresa ‘Google Spain’.

select qttTreballadors from EMpresa Where nom = 'Google Spain';

select e.nom, e.qttTreballadors from empresa e
		inner join Poblacio p on cp= poblacioCP
where P.provincia = 'Barcelona' 
and e.qttTreballadors > (select qttTreballadors from EMpresa Where nom = 'Google Spain');

-- 5. Crear una vista anomenada llistatDAMASIC on es vegi el nom i cognom en una
-- columna anomenada Nom Complet dels alumnes de DAM o ASIX que han iniciat
-- algun conveni aquest any. Cal mostrar el nom i cognom en una única columna ordenat Nom del curs.

CREATE OR REPLACE VIEW llistatDAMASIC AS
SELECT C.nom AS 'Nom Curs', CONCAT(A.nom,' ',A.cognom) AS 'Nom Complet', co.dataInici FROM Curs C
    INNER JOIN Alumne A ON C.codi = A.cursCodi
    INNER JOIN Conveni Co ON A.DNI = Co.alumneDNI
WHERE YEAR(Co.dataInici) = YEAR(NOW()) AND C.codi IN ('DAM','ASIX')
ORDER BY C.nom;

SELECT * FROM llistatDAMASIC;

-- 6. Es vol saber el nom i cognom dels alumnes que han iniciat convenis els mesos
-- de Gener, Març, Juny o desembre on la seva ciutat (alumne) sigui de Granollers o Cardedeu o Mataró.



-- 7. Es vol crear una vista anomenada LlistatGlobal on es vegi les dades dels alumnes,
-- nom de l’empresa i totes les dades del seu conveni. Cal mostrar les dades ordenades per cognom de l’alumne.

create or replace view llistatGloval as
select a.*, c.*, e.nom as Empresa_Nom, e.poblacioCP as Empresa_Poblacio from alumne a
	inner join conveni c on c.alumneDNI = a.DNI
    inner join empresa e on e.CIF = c.empresaCIF
order by a.cognom;

select * from llistatGloval;


-- 8. Es vol obtenir el nom d’aquells alumnes que l’empresa de pràctiques siguin de la
-- ciutat de Sabadell, que els seus convenis tinguin una durada entre 100 y 400h i
-- que no tinguin data de finalització. Cal partir de la Vista creada anteriorment.

select l.nom from llistatGloval l
inner join poblacio p on p.CP = l.Empresa_Poblacio
where p.ciutat = 'Sabadell'
and l.durada between 100 and 400
and l.dataFinal IS NULL;

-- 9. Es vol saber quin és el nom de l’alumne que té més convenis. 

CREATE OR REPLACE VIEW qttConvenisPerAlumne AS
SELECT alumneDNI, COUNT(*) AS QttConvenis FROM Conveni
GROUP BY alumneDNI;

SELECT MAX(qttConvenis) FROM qttConvenisPerAlumne;

SELECT A.nom, llistat.qttConvenis FROM qttConvenisPerAlumne llistat
    INNER JOIN Alumne A ON A.dni = llistat.alumneDNI
WHERE qttConvenis = (SELECT MAX(qttConvenis) FROM qttConvenisPerAlumne);


-- 10.Indica el nom i cognom dels alumnes que han de fer més de 200 hores de pràctiques i que encara no hi ha cap conveni introduït



-- 11.Determina el nom i cognom dels alumnes tenen més convenis que l’alumne Marc Garcia i Marc González.



-- 12.Es vol saber la quantitat d’empreses que encara no han tingut cap conveni.







use dml_ex13_UpdateDelete;
CREATE TABLE IF NOT EXISTS Genere (
	codi CHAR(8),
    nom VARCHAR(20),
	PRIMARY KEY (codi)
);

CREATE TABLE IF NOT EXISTS Soci (
	codi CHAR(8),
    dni char(9) UNIQUE,
    nom VARCHAR(50) NOT NULL,
    PRIMARY KEY (codi)
) ;

CREATE TABLE IF NOT EXISTS Llibre(
	isbn CHAR(13),
    titol VARCHAR(100),
    totalExemplars INT,
    genereCodi CHAR(8),
    PRIMARY KEY (isbn),
    CONSTRAINT fk_llibre_genere	FOREIGN KEY (genereCodi) REFERENCES Genere(codi)
			ON UPDATE CASCADE ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS Prestec(
	llibreISBN CHAR(13),
    sociCodi CHAR(8),
    dataprestec DATE not null, 
    dataretorn DATE,
    dataretornteorica DATE,
    numprorog INT,
    PRIMARY KEY (llibreIsbn,sociCodi,dataprestec),
    CONSTRAINT fk_prestec_llibre FOREIGN KEY (llibreIsbn) REFERENCES Llibre(isbn)
			ON UPDATE RESTRICT ON DELETE CASCADE,
	CONSTRAINT fk_prestec_soci FOREIGN KEY (sociCodi) REFERENCES Soci(codi)
			ON UPDATE RESTRICT ON DELETE RESTRICT
);

INSERT INTO Genere (codi, nom) VALUES ('GEN001', 'Ficció'),('GEN002', 'No ficció'),('GEN003', 'Misteri'),
					('GEN004', 'Ciència-ficció'),('GEN005', 'Biografia'),('GEN006', 'Fantasia');


INSERT INTO Soci (codi, dni, nom) VALUES
('SOC00601', '13579246A', 'Carla López Sánchez'),('SOC00702', '24681357F', 'Marc Martínez García'),
('SOC00803', '98765432A', 'Laura Sánchez Martínez'),('SOC00904', '45612378C', 'David García López'),
('SOC01005', '98765432M', 'Marta Pérez Gómez'),('SOC01106', '15935724Q', 'Sergio Rodríguez Pérez'),
('SOC01207', '36925814K', 'Elena Martínez Sánchez'),('SOC01308', '75395185Z', 'Javier Ruiz Gómez'),
('SOC01409', '85236974S', 'Sara Gómez Rodríguez'),('SOC01510', '951357482', 'Pablo Fernández Martínez');


INSERT INTO Llibre (isbn, titol, totalExemplars, genereCodi) VALUES
('9780061120084', 'Harry Potter i la pedra filosofal', 50, 'GEN006'),('9788498386264', 'El codi Da Vinci', 30, 'GEN001'),
('9780345339683', 'El Senyor dels Anells', 40, 'GEN006'),('9780671722626', '1984', 25, 'GEN004'),
('9780380014300', 'Matar un rossinyol', 35, 'GEN002');

INSERT INTO Llibre (isbn, titol, totalExemplars, genereCodi) VALUES
('9788408218575', 'El laberinto de los espíritus', 20, 'GEN006'),('9788423354278', 'Origen', 15, 'GEN001'),
('9788408179356', 'El tiempo entre costuras', 30, 'GEN005'),('9788408130814', 'El nombre del viento', 25, 'GEN006'),
('9788401021044', 'La sombra del viento', 35, 'GEN006');

INSERT INTO Llibre (isbn, titol, totalExemplars, genereCodi) VALUES
('9788466348695', 'Reina roja', 40, 'GEN003'),('9788408217523', 'La chica del tren', 25, 'GEN003'),
('9788423350843', 'El alquimista', 30, 'GEN005'),('9788408003544', 'Los pilares de la Tierra', 20, 'GEN005'),
('9788408034067', 'El juego del ángel', 15, 'GEN006'),('9788408157434', 'La catedral del mar', 35, 'GEN005'),
('9788420423925', 'El prisionero del cielo', 30, 'GEN006');

INSERT INTO Prestec (llibreISBN, sociCodi, dataprestec, dataretorn, dataretornteorica, numprorog) VALUES
('9780061120084', 'SOC00601', '2024-01-15', '2024-02-05', '2024-02-01', 1),
('9788498386264', 'SOC00702', '2024-01-20', '2024-02-10', '2024-02-05', 0),
('9780345339683', 'SOC00803', '2024-01-25', '2024-02-15', '2024-02-10', 2),
('9780671722626', 'SOC00904', '2024-01-30', NULL, '2024-02-15', 0),
('9780380014300', 'SOC01005', '2024-02-05', NULL, '2024-02-20', 0),
('9788408218575', 'SOC01106', '2024-02-10', NULL, '2024-02-25', 0),
('9788423354278', 'SOC01207', '2024-02-15', NULL, '2024-03-01', 0),
('9788408179356', 'SOC01308', '2024-02-20', NULL, '2024-03-05', 0),
('9788408130814', 'SOC01409', '2024-02-25', NULL, '2024-03-10', 0),
('9788401021044', 'SOC01510', '2024-03-01', NULL, '2024-03-15', 0);

INSERT INTO Prestec (llibreISBN, sociCodi, dataprestec, dataretorn, dataretornteorica, numprorog) VALUES
('9780061120084', 'SOC00601', '2024-01-14', '2024-02-05', '2024-02-01', 1),
('9788498386264', 'SOC00702', '2024-01-26', '2024-02-10', '2024-02-05', 0),
('9780345339683', 'SOC00803', '2024-01-12', '2024-02-15', '2024-02-10', 2),
('9780671722626', 'SOC00904', '2024-01-31', NULL, '2024-02-15', 0),
('9788401021044', 'SOC01005', '2024-02-05', NULL, '2024-02-20', 0),
('9788408003544', 'SOC00601', '2024-02-10', NULL, '2024-02-25', 0),
('9788408003544', 'SOC00702', '2024-02-15', NULL, '2024-03-01', 0),
('9788408179356', 'SOC00803', '2024-02-21', NULL, '2024-03-05', 0),
('9788408003544', 'SOC00904', '2024-02-25', NULL, '2024-03-10', 0),
('9788401021044', 'SOC01005', '2024-03-01', NULL, '2024-03-15', 0);

-- -----------------------------------------------------------------------------------------------------------------------


-- 1. Es vol un llistat de tots els llibres per nom de gènere. Cal tenir en compte que no es volen llistar
-- aquells llibres que tenen menys de 10 exemplars o ni que siguin del gènere “Fantasia” o
-- “Misteri”. Es possible que algun llibre NO tingui gènere. Aquest també ha de sortir. En cas que
-- no tingui gènere no volen que aparegui NULL, volem que en el camp surti: “No té gènere
-- assignat”.

INSERT INTO Llibre (isbn, titol, totalExemplars, genereCodi) VALUES
('9788403818275', 'El laberintdokasdh de los espíritus', 20, NULL);

select l.isbn,l.titol,l.totalExemplars, 
case 
	when l.genereCodi IS NULL then 'No té gènere
assignat' 
else l.genereCodi end as 'Genero' from llibre l
	left join genere g on l.genereCodi = g.codi
;
-- 2. Per error documental, cal incrementar en 5 el total d’exemplars de les categories de ‘Drama’,
-- ‘Terror’ i també d’aquells codis on el seu gènere estigui entre el 1 i el 9.
-- Cal dir que els codis poden ser: ‘GEN001, ‘GEN003.

update llibre l
	inner join genere g on l.genereCodi = g.codi
set totalExemplars= totalExemplars+5
where g.nom = 'Drama' or g.nom = 'Terror' or l.genereCOdi in ('GEN001','GEN002','GEN003','GEN004','GEN005','GEN006','GEN007','GEN008','GEN009');
select * from llibre;

-- 3. Cal actualitzar i posar en majúscula la primer lletra del nom de cada soci.

UPDATE soci set nom=concat(UPPER(LEFT(nom,1)),substring(nom,2)); -- Substring de aqui para delante o 2,6 de la 2 hasta la 6 
SELECT * FROM soci;
select * from soci;
-- 4. Cal esborrar tots els préstecs del soci ‘Laura Sánchez Martínez’ dels llibres ‘El tiempo entre
-- costuras’ i ‘El nombre del viento

DELETE FROM prestec 
WHERE sociCodi=(SELECT codi FROM soci WHERE nom='Laura Sánchez Martínez') 
AND llibreISBN IN (SELECT ISBN FROM Llibre wHERE titol IN('El tiempo entre costuras','El nombre del viento'));

-- 5. Es vol esborrar tots els préstecs que els seus ISBN pertanyin als gèneres de ‘Ficció’ i ‘Biografia’

select l.ISBN from llibre l
	inner join genere g on l.genereCodi = g.codi
where g.nom in ('Ficció','Biografia');

delete from prestec
where llibreISBN in (
select l.ISBN from llibre l
	inner join genere g on l.genereCodi = g.codi
where g.nom in ('Ficció','Biografia')
);

-- 6. La Sara Gómez Rodríguez ha demanat una pròrroga pel llibre L'últim mono. La pròrroga li
-- concedeix 20 dies més.

update prestec
SET dataretornteorica=dataretornteorica + INTERVAL 20 DAY, numprorog=numprorog+1 -- si es una fecha le tienes que sumar un intervalo de 20 dias no puedes poner +20 day
where sociCodi = (select codi from soci where nom='Sara Gómez Rodríguez');

select codi from soci where nom='Sara Gómez Rodríguez';


-- 7. Crear una vista que no permeti la inserció o modificació en aquesta de llibres amb menys de 5
-- exemplars.

CREATE VIEW librosconejemplares as
SELECT * FROM Llibre 
WHERE totalexemplars>=5
	WITH CHECK OPTION; -- es que si no cumple el where no se hace 
SELECT * FROM librosconejemplares;

INSERT INTO librosconejemplares VALUES('2usk9aoewlpsp','pilingus','4',NULL);

-- 8. La David García López ha retornat el llibre puresa 3 dies abans de la data de retorn establerta.

select * from prestec;

update prestec
set dataretorn = dataretornteorica - interval 3 day
where sociCodi = (select codi from soci where nom ='David García López')
and llibreISBN=(select isbn from llibre where titol = 'puresa');

select isbn from llibre where titol = 'puresa';

select * from prestec where sociCodi=(select codi from soci where nom ='David García López');

select codi from soci where nom ='David García López';

-- 9. La Marc Martínez García ha tornat a agafar el llibre puresa el 25 de febrer del 2016. El llibre s'ha
-- de tornar en 20 dies.

INSERT INTO Prestec (llibreISBN, sociCodi, dataprestec, dataretorn, dataretornteorica, numprorog) VALUES
((select isbn from llibre where titol = 'puresa'), (Select codi from soci where nom ='Marc Martínez García'), '2016-02-25', NULL, '2016-03-17', 0);
select codi from soci where nom ='Marc Martínez García';


-- 10. Cal esborrar aquells llibres del gènere Terror o Còmic que tinguin més de 5 exemplars.


delete from llibre
where generecodi in (
select codi from genere where nom in ('Terror','Còmic')
);

select * from genere;

select codi from genere where nom in ('Terror','Còmic');

-- 11. Fer un llistat de Títol Llibre, Genere, Total Exemplars, Qtt cops prestat, Qtt Exemplars disponibles
-- i una columna més que digui si el total exemplars disponibles és inferior a 5, posi “Estoc
-- insuficient”, sinó res. Ordenat per gènere.

create or replace view librosPrestados as 
select l.*, count(p.llibreISBN) as qtt_copsPrestats from llibre l
	left join prestec p on p.llibreISBN = l.ISBN
group by l.ISBN;

select l.isbn, l.titol, g.nom as Genere, l.totalExemplars, l.qtt_copsPrestats, case
when (l.totalExemplars - l.qtt_copsPrestats) <5 then 'Estoc Insuficient'
else l.totalExemplars - l.qtt_copsPrestats end as Exemplars_Disponibles from librosPrestados l
	left join genere g on l.genereCodi = g.codi
;

-- 12. Afegeix a la taula Soci, el camp “Actiu” que contindrà la informació de ‘Sí’/ ‘No’. Tots els socis 
-- que ha fet més de 5 préstecs, els últims 5 anys, cal assignar el valor “SI”, en cas contrari, “No”.

SELECT * FROM librosprestados;
SELECT * FROM soci;

	ALTER TABLE soci ADD COLUMN Actiu CHAR(2);
    UPDATE soci  SET Actiu='SI' 
		WHERE codi IN (select sociCodi FROM prestec WHERE year(dataprestec) BETWEEN curdate() AND curdate()-INTERVAL 5 YEAR GROUP BY sociCodi having count(sociCodi)>5 );
	UPDATE Soci SET  Actiu='NO'
		WHERE codi IN (select sociCodi FROM prestec GROUP BY sociCodi having count(sociCodi)<5 );
	
-- 13. Hi ha hagut un error. Tots els llibres d’Humor que es van reservar el mes de febrer entre els anys 
-- 2023 i 2024, la seva data de préstec és exactament un mes després de la data original.

	(SELECT codi FROM genere WHERE nom='Ficció');
    SELECT ISBN FROM Llibre WHERE Generecodi=(SELECT codi FROM genere WHERE nom='Ficció');

	UPDATE prestec set dataprestec=dataprestec+INTERVAL 1 MONTH WHERE llibreISBN IN (SELECT ISBN FROM Llibre WHERE Generecodi=(SELECT codi FROM genere WHERE nom='Humor')) AND 
    month(dataprestec)=02 AND (YEAR(dataprestec) BETWEEN 2023 AND 2024);
    
-- 14. Per desgracia, de cada llibre de gènere de Misteri i Ciència-ficció, s’ha traslladat dos exemplars. 
-- Cal decrementar en 2 el total d’exemplars. Si pots, controla que no sigui negatiu en cas que 
-- tingui 0 o 1 exemplar.

UPDATE Llibre SET totalexemplars=totalexemplars-2 WHERE Generecodi IN (SELECT codi FROM genere WHERE nom='Ciència-ficció' OR nom='Misteri')
AND totalexemplars>1;

SELECT * FROM Llibre WHERE ISBN IN (SELECT ISBN FROM Llibre WHERE Generecodi IN (SELECT codi FROM genere WHERE nom='Ciència-ficció' OR nom='Misteri'))
AND totalexemplars>1;

-- 15. Fes un llistat per generes, dels llibres que tenen més exemplars que el promig d’exemplars que 
-- tenen els llibres del gènere de ‘Humor’.

SELECT L.titol,G.nom,L.totalexemplars FROM Llibre L 
	INNER JOIN Genere G ON G.codi=L.generecodi
    WHERE totalexemplars> (SELECT avg(totalExemplars) FROM Llibre WHERE generecodi=(SELECT codi FROM genere where nom = 'Humor'))
    ORDER BY G.nom;

-- 16. Afegeix un camp totalReserves a la taula Llibre. Aquest camp s’omplirà amb el total de reserves 
-- que ha tingut el llibre Matar un rossinyol.

CREATE OR REPLACE VIEW rossinyol as
SELECT count(*) as prestecs FROM prestec WHERE LlibreISBN=(SELECT ISBN FROM Llibre WHERE titol='Matar un rossinyol') GROUP BY LlibreISBN ;
	ALTER TABLE Llibre ADD COLUMN totalReserves tinyint;

UPDATE Llibre SET totalReserves=(SELECT prestecs from rossinyol ) WHERE titol='Matar un rossinyol';
SELECT * FROM llibre;

-- 17. Es vol saber quin el nom del llibre amb el seu gènere ha estat més prestat en la biblioteca.

CREATE OR REPLACE VIEW generoprestado as
SELECT L.titol,P.LlibreISBN,count(P.LLibreISBN) as qtt FROM Prestec P
	INNER JOIN Llibre L ON P.llibreISBN=L.ISBN
    INNER JOIN Genere G ON G.codi=L.generecodi
    GROUP BY LLibreISBN;
SELECT * FROM generoprestado;
SELECT G.nom,L.titol from llibre L
	INNER JOIN Genere G ON G.codi=L.Generecodi
    WHERE L.ISBN IN (SELECT LlibreISBN FROM generoprestado WHERE qtt=(SELECT MAX(qtt) FROM generoprestado));

-- 18. S'ha decidit canviar el gènere de “No ficció” per "Realisme". Explica quin problema hi ha i 
-- executa les instruccions oportunes per a resoldre aquest problema.

-- el problema es que la tabla libro esta unida a genero entonces dara problema al eliminarlo, eso en caso de que cambiasemos el codigo, en este caso no pasa nada,
-- más allá de que las vistas quedasen desactualizadas.
SELECT * FROM Llibre;
SELECT * FROM Genere;
UPDATE Genere SET nom='Realisme' WHERE nom='No ficció';

-- 19. Es vol saber el nom del soci amb el seu DNI i el ISBN del primer llibre que es va prestar.
SELECT S.DNI,S.nom,P.LlibreISBN as ISBN,P.dataprestec FROM SOCI S
	INNER JOIN Prestec P ON P.sociCodi=S.codi
    WHERE dataprestec=(SELECT min(dataprestec)FROM prestec);

SELECT * FROM prestec;
-- 20. Tots els usuaris que tenen en préstec algun llibre del gènere Misteri o Fantasia se’ls hi dóna 20 
-- dies més per a retornar el llibre.

SELECT ISBN FROM Llibre WHERE genereCodi IN (SELECT codi FROM genere WHERE nom IN('Misteri','Fantasia'));

SELECT * FROM prestec 
WHERE LlibreISBN IN (SELECT ISBN FROM Llibre WHERE genereCodi IN (SELECT codi FROM genere WHERE nom IN('Misteri','Fantasia')))
AND dataretorn IS NULL;
-- respuesta:
UPDATE prestec set numprorog=numprorog+1,dataretornteorica=dataretornteorica+INTERVAL 20 DAY 
WHERE LlibreISBN IN (SELECT ISBN FROM Llibre WHERE genereCodi IN (SELECT codi FROM genere WHERE nom IN('Misteri','Fantasia')))
AND dataretorn IS NULL;

-- 21. Volem veure un llistat dels llibres que ha prestat els socis només tenint en compte els llibres del 
-- genere de Misteri, Biografia o Ficció. 
-- Cal utilitzar una vista que només vegi els llibres d’aquest gènere prestats. Llavors, a partir 
-- d’aquesta taula temporal, els socis amb aquest llistat de socis.
CREATE VIEW librosgeneros as
SELECT L.* FROM Llibre L
	INNER JOIN Genere G ON L.generecodi=G.codi
    WHERE G.nom IN('Misteri','Biografia','Ficció');

SELECT * FROM prestec 
	WHERE LlibreISBN IN(SELECT ISBN FROM librosgeneros);

-- 22. Crea una vista on mostri tota les dades del soci menys el DNI, el títol dels llibres per ordre de 
-- data préstec tots aquells llibres retornats. Cal mostrar el gènere per si a posterior cal poder filtrar 
-- per aquest camp.
CREATE OR REPLACE VIEW librosdevueltos AS
SELECT S.codi ,S.nom ,S.Actiu,L.titol,G.nom as Genero,P.dataprestec FROM Soci S
	INNER JOIN Prestec P ON P.sociCodi=S.codi
    INNER JOIN Llibre L ON L.ISBN=P.LlibreISBN
    INNER JOIN Genere G ON L.genereCodi=G.codi
	WHERE P.dataretorn IS NOT NULL
ORDER BY P.dataprestec;

SELECT * FROM librosdevueltos;
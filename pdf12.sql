DROP DATABASE IF EXISTS pdf12;
CREATE DATABASE IF NOT EXISTS pdf12;
USE pdf12;

CREATE TABLE Conductor ( 
    DNI CHAR(9),
	nom VARCHAR(100) NOT NULL,
	telefon CHAR(9),
	PRIMARY KEY (dni)
);

CREATE TABLE Camio ( 
    matricula CHAR(7),
	tonatge DECIMAL(6,2) NOT NULL,
	consum DECIMAL(4,2) NOT NULL,  -- El consum és cada 100 km
	conductorDNI char(9),
	estat ENUM('A','B'),   -- A per actiu, B per baixa
	PRIMARY KEY (matricula),
	CONSTRAINT fk_camio_conductor FOREIGN KEY (conductorDNI) REFERENCES Conductor (DNI)
		ON UPDATE CASCADE ON DELETE RESTRICT
            
);

CREATE TABLE Ruta ( 
    codi CHAR(3),
	cpOrigen CHAR(5) NOT NULL,  
	cpDesti VARCHAR(5) NOT NULL,  
	PRIMARY KEY (codi)
);

CREATE TABLE Fa ( 
    camioMatricula CHAR(8),
	rutaCodi CHAR(3),
	data date NOT NULL,
	temps integer,   -- expressat en minuts
	PRIMARY KEY (camioMatricula, rutaCodi, data),
	CONSTRAINT fk_fa_ruta	FOREIGN KEY (rutaCodi) references Ruta (codi)
			ON DELETE RESTRICT 	ON UPDATE RESTRICT,
	CONSTRAINT fk_fa_camio	FOREIGN KEY (camioMatricula) references Camio (matricula)
			ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE Trams ( 
    puntKilom DECIMAL(3,1) ,
	cost_peatge DECIMAL(4,2), 
    distancia DECIMAL(3,1),
	rutaCodi CHAR(3),
	PRIMARY KEY (rutaCodi,puntKilom),
    CONSTRAINT fk_trams_ruta FOREIGN KEY (rutaCodi) REFERENCES Ruta (codi)
			ON UPDATE CASCADE ON DELETE RESTRICT
);


-- ******************************* DADES **************************************

INSERT INTO conductor VALUES ('12345678A', 'María López García', '555123456'),
                              ('23456789B', 'Juan Martínez Rodríguez', '555234567'),
                              ('34567890C', 'Ana Rodríguez Pérez', '555345678'),
                              ('45678901D', 'Javier Fernández Martínez', '555456789'),
                              ('56789012E', 'Carmen González López', '555567890'),
                              ('67890123F', 'Pedro Sánchez Ruiz', '555678901'),
                              ('78901234G', 'Laura González Martínez', '555789012'),
                              ('89012345H', 'Alejandro Pérez García', '555890123'),
                              ('90123456J', 'Isabel Martínez López', '555901234'),
                              ('01234567K', 'Francisco García Rodríguez', '555012345'),
                              ('12345678L', 'Lucía Rodríguez Sánchez', '555123456'),
                              ('23456789M', 'Alberto López Pérez', '555234567'),
                              ('34567890N', 'Marta Sánchez Martínez', '555345678'),
                              ('45678901P', 'Carlos Martínez Rodríguez', '555456789'),
                              ('56789012Q', 'Elena Rodríguez López', '555567890');

INSERT INTO Camio VALUES ('0002AAA', 1000, 25.50, '67890123F', 'A'),('0002BBB', 700, 35.80, '78901234G', 'A'),
                          ('0002CCC', 1500, 18.75, '89012345H', 'B'),('0002DDD', 300, 14.20, '90123456J', 'A'),
                          ('9002EEE', 550, 28.75, '01234567K', 'B'),('0002FFF', 1500, 32.40, '12345678L', 'A'),
                          ('0002GGG', 4000, 20.10, '23456789M', 'A'),('0002HHH', 1050, 20.10, '34567890N', 'A'),
                          ('0002III', 350, 16.80, '45678901P', 'B'),('0002JJJ', 2000, 30.50, '56789012Q', 'A'),
                          ('0003III', 350, 16.80, '45678901P', 'B'),('0004JJJ', 2000, 30.50, '56789012Q', 'A'),
                          ('0002EEE', 550, 28.75, '01234567K', 'B'),('0102FFF', 1500, 32.40, '12345678L', 'A'),
                          ('0302EEE', 550, 28.75, '01234567K', 'B'),('0104FFF', 1500, 32.40, '12345678L', 'A');

INSERT INTO ruta VALUES ('R01','00001','00010'),('R02','00002','00020'),('R03','00003','00030'),
						('R04','00005','00030'), ('R07', '00007', '00025'),('R08', '00008', '00035'),
                        ('R09', '00009', '00040'),('R10', '00010', '00015'),('R11', '00011', '00030');

INSERT INTO Fa VALUES ('0002AAA', 'R07', '2022-03-15', 60),('0002BBB', 'R08', NOW(), 90),
                     ('0002CCC', 'R09', NOW(), 120),('0002DDD', 'R10', '2022-02-20', 45),
                     ('0002EEE', 'R11', '2022-01-10', 75),('0002FFF', 'R07', NOW(), 120),
                     ('0002GGG', 'R08', '2022-03-01', 80),('0002HHH', 'R09', NOW(), 110),
                     ('0002III', 'R10', '2022-02-10', 60),('0002JJJ', 'R11', '2022-01-25', 95),
                     ('0002AAA', 'R07', '2022-02-05', 100),('0002BBB', 'R08', '2022-02-06', 70),
                     ('0002CCC', 'R09', '2023-02-06', 130),('0002DDD', 'R10', '2022-01-15', 55),
                     ('0002EEE', 'R11', '2022-02-28', 85);
     
                    
INSERT INTO Trams VALUES (0,0,30,'R01'), (30,5,10,'R01'),(40,8.25,50,'R01'),
						(0,0,20,'R02'),(20,1,30,'R02'),(50,0,30,'R02'),(80,12,60,'R02'),
                        (0,10,90,'R03'), (95,4,5,'R03'),(1,0,15,'R04'),(16,2,12,'R04'),(29,0,50,'R04');

INSERT INTO Trams VALUES (20, 6.75, 25, 'R07'), (30, 8.50, 30, 'R07'),(5, 1.25, 15, 'R08'), (15, 3.75, 20, 'R08'),
                         (25, 5.25, 35, 'R09'), (10, 2.50, 18, 'R09'),(40, 10.25, 45, 'R10'), (15, 4.50, 22, 'R10'),
                         (5, 1.75, 12, 'R11'), (20, 6.00, 28, 'R11'),(10, 3.25, 15, 'R07'), (35, 12.50, 40, 'R07'),
                         (18, 4.75, 28, 'R08'), (8, 2.00, 10, 'R08'),(30, 9.75, 38, 'R09'), (12, 3.00, 20, 'R09'),
                         (50, 15.25, 55, 'R10'), (22, 6.50, 32, 'R10'),(8, 2.25, 14, 'R11'), (25, 7.50, 42, 'R11');

-- ---------------------------------

-- 1. Cal bolcarla informació dels camions que estan de baixa, a una nova taula anomenada camionsEstatBaixa.

-- Primera Froma
select * from camio;
create table CamionsEstatBaixa like Camio;
insert into CamionsEstatBaixa select * from camio where estat='B';

-- Segona Forma
Create table CamionsEstatBaixa2 as select * from camio where estat ='B';

-- 2. Cal modificar el consum del camió amb matricula 0002DDD, a un consum 3 cops superior al que es va introduir.

set AUTOCOMMIT=0;
set AUTOCOMMIT=1;

update camio
set consum = consum*3
where matricula ='0002DDD';
rollback;

-- 3. L'empresa ha decidit donar de baixa (no eliminar) tots els camions que tinguin un
-- consum superior a 12,5 si el seu tonatge és superior a 1300 kg o un consum superior
-- a 11,5 si el seu tonatge es inferior a 1300 kg.
set autocommit=0;

update camio
set estat = 'B'
where (consum>12.5 and tonatge >1300)
or (consum<11.5 and tonatge >1300);

rollback;

-- 4. Quins camions consumeixen el mateix que els camió que de l’Elena Rodríguez López’ i la Marta Sánchez Martínez.,
set autocommit=0;

select ca.consum, ca.matricula from camio ca
	inner join conductor co on co.DNI = ca.conductorDNI
where nom in ('Elena Rodríguez López','Marta Sánchez Martínez');

select ca.matricula, ca.consum, ca.conductorDNI from camio ca
	inner join conductor co on co.DNI = ca.conductorDNI
where co.nom NOT IN ('Elena Rodríguez López','Marta Sánchez Martínez')
and ca.consum in(
	select ca.consum from camio ca
		inner join conductor co on co.DNI = ca.conductorDNI
	where nom in ('Elena Rodríguez López','Marta Sánchez Martínez')
);

-- 5. Obtenir tota la informació de tots els conductors que el seu nom comenci per N o M
-- amb camions de tonatge superior a 1000 kgs que no hagin realitzat cap ruta.

select Co.*,Ca.tonatge from conductor Co 
    left join camio Ca on Ca.conductorDNI = co.dni 
    left join fa F on F.camioMatricula = Ca.matricula
where (Co.nom like 'N%' or Co.nom like 'M%') and Ca.tonatge > 1000;

-- 6. Obtenir totes les dades de tots els conductors i camions del camió que tingui un menor consum

select distinct co.* from conductor co
    left join camio Ca on Ca.conductorDNI = co.dni
where ca.consum = (select min(consum)from camio);

-- 7. Obtenir tota la informació de totes les rutes que la seva distància sigui superior a la
-- ruta identificada pel codi 666. Cal utilitzar una vista per a resoldre l'exercici.

select * from ruta;

create or replace view distancia_Total_Ruta as
select sum(distancia) as distancia_total, rutaCodi from trams
group by rutaCodi;

select distancia_total from distancia_Total_Ruta
where rutaCodi='666';

select distancia_total from distancia_Total_Ruta
where distancia_total > (
	select distancia_total from distancia_Total_Ruta
	where rutaCodi='666'
);

-- 8. Dóna tota la informació de la ruta que més vegades s'ha realitzat.

SELECT codi,count(codi) as qttveces FROM Ruta
GROUP BY codi;

CREATE VIEW rutahecha as
SELECT R.*,F.rutacodi,count(F.rutacodi) as qttveces FROM Fa F
    INNER JOIN Ruta R ON R.codi=F.rutacodi
GROUP BY rutacodi;

SELECT * FROM rutahecha WHERE qttveces=(SELECT max(qttveces) FROM rutahecha);

-- 9. Cal incrementar en 2h i 15min el temps que ha trigat els conductors que es diuen
-- Isabel Martínez López i Laura González Martínez d’aquelles rutes que han realitzat amb codi postal d’origen 00005, 00007 o 00008
set autocommit=0;

update conductor co
	inner join camio ca on co.DNI = ca.conductorDNI
	inner join fa f on f.camioMatricula = ca.matricula
    inner join ruta r on f.rutacodi = r.codi
set f.temps = f.temps +2*60+15
where co.nom in ('Isabel Martínez López', 'Laura González Martínez')
	and r.cpOrigen in ('00005','00007','00008');
rollback;
select * from fa;
-- 10. Es vol saber el total de km que ha fet cada conductor per anys. Només es vol tenir en compte els camions que actualment no són Baixa.

CREATE OR REPLACE VIEW ConductorFaRuta as
SELECT * FROM Fa F
	INNER JOIN Consumoxconductor CC ON CC.matricula=F.camioMatricula;
SELECT * FROM distanciaruta;

SELECT CR.nom,year(CR.data) as año,sum(DR.distanciatotal) as distanciaconducida FROM ConductorFaRuta CR
	INNER JOIN distanciaruta DR ON DR.codi=CR.rutacodi
		WHERE CR.estat!='B'
    GROUP BY CR.nom,year(CR.data)
    ORDER BY año;
SELECT * FROM camio;

-- 11. Eliminar tots els conductors que no tinguin cap camió associat.

DELETE FROM Conductor WHERE DNI NOT IN (SELECT conductorDNI FROM Camio);

CREATE OR REPLACE VIEW conductorsincamion as
SELECT Co.DNI,Ca.* FROM Conductor Co
	LEFT JOIN Camio Ca ON Ca.conductorDNI=Co.DNI	
		WHERE Ca.matricula IS NULL;
SELECT * FROM conductorsincamion;

-- 12. Es vol eliminar aquells trams que pertanyin a rutes que s’inicien per el codi postal '08430'.

DELETE FROM Trams WHERE rutacodi IN (SELECT codi FROM ruta WHERE cpOrigen='08430');
SELECT codi FROM ruta WHERE cpOrigen='08430';
SELECT * FROM ruta;

-- 13. Per error el conductor Pedro Sánchez Ruiz del camió amb matricula ‘0002AAA’ va fer 
-- la ruta R08, 50 minuts més dels que es van fer.

SELECT * FROM rutahecha2;
SELECT * FROM Fa;
SELECT codi FROM ruta;
UPDATE Fa SET temps=temps+3000 WHERE camiomatricula='0002AAA';

-- 14. Es volen eliminar tots aquells camions que estiguin de baixa o aquells que els seus 
-- conductors on el seu número de telèfon acabi en 6

DELETE FROM fa
WHERE camioMatricula IN (
    SELECT matricula
    FROM camio
    WHERE estat = 'B' OR conductorDNI IN (SELECT DNI FROM Conductor WHERE telefon LIKE '%6')
);
DELETE FROM camio WHERE estat='B' OR conductorDNI IN (SELECT DNI FROM Conductor WHERE telefon like '%6');
SELECT * FROM camio;

-- 15. Cal actualitzar el tonatge del camió d’en Isabel Martínez López. El tonatge, és el 
-- mateix que el camió 0002EEE.

SELECT matricula,tonatge FROM camio WHERE matricula ='0002EEE';
SELECT * FROM camio WHERE conductorDNI=(SELECT DNI FROM conductor WHERE nom='Isabel Martínez López');
UPDATE camio
SET tonatge = 
    (SELECT tonatge FROM (SELECT * FROM camio WHERE matricula = '0002EEE') AS c)
WHERE conductorDNI = 
    (SELECT DNI FROM (SELECT * FROM conductor WHERE nom = 'Isabel Martínez López') AS co);
CREATE OR REPLACE VIEW valor as 
SELECT * FROM camio WHERE matricula ='0002EEE';


-- 16. Escriu les instruccions necessàries per tal de que en cas que s'elimini o actualitzi la
-- matricula d'un camió, quedin modificades la resta de dades per tal de que no hi hagin dades inconsistents.



-- 17. Es vol saber quina és la ruta que és mes cara a nivell de peatges.



-- 18. Volem eliminar aquells viatges que han s'han fet durant el 2020 i 2023 dels conductors
-- amb DNI 12345678A d'aquells trams que iniciïn en el codi postal 00007.



-- 19. Crea una vista anomenada resum Global, per tal de tenir un resum global per rutes
-- del total de costos de peatge, distancia i que val en € cada kilòmetre degut al cost dels peatges.
-- S’haurà de mostrar la informació de la següent forma:
-- Ex: Ruta Peatge Distancia Cost/Km
-- 123 34€ 100km 0,34€/km



-- 20. En Carlos Martínez Rodríguez, ahir va tenir un accident mortal. En honor a ell, s’ha
-- decidit tancar (eliminar) tots els trams que ahir va fer.



-- 21. Volem eliminar aquells viatges que han s'han fet durant el mes de maig del 2020 i
-- durant el dia 18-06-2033 dels conductors que el nom comença amb A i d'aquells
-- trams que el seu codi postal d'inici sigui 00040.



-- 22. Volem eliminar tots aquells camions que el seu tonatge sigui major de 1000 i que estiguin donats de baixa.



-- 23. Es vol eliminar els trams on el seu cost de peatge sigui més elevat.



-- 24. Es vol eliminar aquells trams que pertanyin a la ruta que és més cara.





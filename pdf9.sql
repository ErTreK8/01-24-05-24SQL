create database pdf9;
use pdf9;


CREATE TABLE IF NOT EXISTS FormatA(
    nom VARCHAR(5),
    tipus VARCHAR(20),
    PRIMARY KEY (nom)
 );

CREATE TABLE IF NOT EXISTS Usuari(
    login varchar(25),
    nom varchar(40),
    dataCr date,
    PRIMARY KEY(login)
);

-- Arxiu:{nom1(pk);versio1(pk);dataCr,nom2(fk); versio2(fk); usuariLogin(fk)}
CREATE TABLE IF NOT EXISTS Arxiu(
	nom1 VARCHAR(20),
    versio1 TINYINT DEFAULT 0,
    dataCr DATE,
    nom2 VARCHAR(20),
    versio2 TINYINT,
    usuariLogin VARCHAR(25) NOT NULL,
    PRIMARY KEY(nom1,versio1),
    CONSTRAINT fk_arxiu_arxiu FOREIGN KEY(nom2,versio2) REFERENCES Arxiu(nom1,versio1)
		ON UPDATE CASCADE ON DELETE RESTRICT,
	CONSTRAINT fk_arxiu_usuari FOREIGN KEY(usuariLogin) REFERENCES Usuari(login)
    	ON UPDATE CASCADE ON DELETE RESTRICT
);


-- Disponible:{arxiuNom(pk,fk);arxiuVersio(pk,fk);formatNom(pk,fk)}
CREATE TABLE IF NOT EXISTS Disponible(
	arxiuNom VARCHAR(20),
    arxiuVersio TINYINT,
    formatNom VARCHAR(5),
    PRIMARY KEY(arxiuNom,arxiuVersio,formatNom),
    CONSTRAINT fk_disponible_arxiu FOREIGN KEY(arxiuNom,arxiuVersio) REFERENCES Arxiu(nom1,versio1)
		ON UPDATE CASCADE ON DELETE RESTRICT,
	CONSTRAINT fk_disponible_formatA FOREIGN KEY (formatNom) REFERENCES FormatA(nom)
    	ON UPDATE CASCADE ON DELETE RESTRICT
);

INSERT INTO FormatA VALUES ('jpg','imatge/jpeg'), ('gif','imatge/gif'),
			('mp4','video/mpeg'), ('docx','document/docx'),
            ('png', 'imatge/png'),('avi', 'video/avi'),
			('pdf', 'document/pdf'),('mp3', 'audio/mpeg');

INSERT INTO FormatA VALUES ('pptx','imatge/pptx'), ('xlsx','document/xlsx'),
		('txt','document/txt'),('mkv','video/mkv'),
        ('bmp','imatge/bmp'),('csv','document/csv'),
        ('css','web/css'),('mov','video/mov'),
        ('json','web/json'),('html','web/html');

INSERT INTO Usuari VALUES ('sperez','Sandra Perez','2023-10-05'),('pramos','Pol Ramos','2023-11-05'),
		('dporti','David Porti','2022-05-05'),	('sjimenez','Sergi Jimenez','2023-05-05'),
		('dgonzalez','David González','2023-09-01'),('xgarcia','Xavier García','2022-01-11'),
		('dwall','David Wall','2023-09-14');

INSERT INTO Usuari VALUES ('jmendez', 'Juan Mendez', '2023-12-15'),('ecastro', 'Elena Castro', '2022-07-20'),
    ('lmartin', 'Laura Martin', '2023-03-02'), ('jgomez', 'Jose Gomez', '2022-11-18'),
    ('rlopez', 'Raquel Lopez', '2023-08-09'),  ('fgarcia', 'Fernando Garcia', '2022-04-25'),
    ('mrodriguez', 'Maria Rodriguez', '2023-05-30'),('rcano', 'Roberto Cano', '2022-09-08'),
    ('llopez', 'Luis Lopez', '2023-01-22'), ('pgomez', 'Paula Gomez', '2022-06-12');

INSERT INTO Arxiu VALUES ('DossierM3',1,'2000-10-05',NULL,NULL,'sperez'), ('DossierM3',2,'2005-10-05','DossierM3',1,'sperez'),
						('DossierM3',3,'2005-10-05','DossierM3',1,'pramos'),('VideoNadal',1,'2017-12-05',NULL,NULL,'sperez'),
						('La Porxada',1,'2018-12-05',NULL,NULL,'dporti'), ('Headshot',1,'2013-08-01',NULL,NULL,'dgonzalez'),
						('LlistatAlumnes',1,'2017-09-14',NULL,NULL,'dgonzalez'),('LlistatAlumnes',2,'2017-11-14','LlistatAlumnes',1,'dgonzalez'),
						('Web Design',1,'2019-01-15',NULL,NULL,'xgarcia');
                        
INSERT INTO Arxiu VALUES  ('ProjectZ', 1, '2020-05-10', NULL, NULL, 'jmendez'),  ('ProjectZ', 2, '2021-02-15', 'ProjectZ', 1, 'jmendez'),
    ('ProjectZ', 3, '2021-02-15', 'ProjectZ', 1, 'ecastro'),  ('PresentationA', 1, '2019-08-20', NULL, NULL, 'lmartin'),
    ('PresentationB', 1, '2022-04-05', NULL, NULL, 'jgomez'), ('AnnualReport', 1, '2021-11-30', NULL, NULL, 'rlopez'),
    ('BudgetPlan', 1, '2020-07-15', NULL, NULL, 'fgarcia'), ('MarketingStrategy', 1, '2023-06-22', NULL, NULL, 'mrodriguez'),
    ('ClientMeeting', 1, '2022-10-08', NULL, NULL, 'rcano'), ('ProductLaunch', 1, '2023-02-12', NULL, NULL, 'llopez'),
    ('ResearchPaper', 1, '2022-01-02', NULL, NULL, 'pgomez'), ('Demos', 1, '2020-04-18', NULL, NULL, 'sperez'),
    ('Demos', 2, '2021-06-20', 'Demos', 1, 'sperez'), ('TrainingMaterials', 1, '2019-12-10', NULL, NULL, 'dporti'),
    ('CodeReview', 1, '2023-03-25', NULL, NULL, 'dgonzalez'), ('CodeReview', 2, '2023-04-05', 'CodeReview', 1, 'dgonzalez'),
    ('Prototypes', 1, '2020-09-14', NULL, NULL, 'xgarcia'), ('Prototypes', 2, '2021-01-18', 'Prototypes', 1, 'xgarcia'),
    ('Prototypes', 3, '2021-04-22', 'Prototypes', 1, 'xgarcia'), ('CustomerFeedback', 1, '2022-08-10', NULL, NULL, 'dwall');

INSERT INTO Disponible VALUES ('DossierM3',1,'docx'); 
INSERT INTO Disponible VALUES ('DossierM3',2,'docx');
INSERT INTO Disponible VALUES ('DossierM3',3,'docx');	
INSERT INTO Disponible VALUES ('VideoNadal',1,'mp4');
INSERT INTO Disponible VALUES ('La Porxada',1,'jpg');	
INSERT INTO Disponible VALUES ('La Porxada',1,'gif');
INSERT INTO Disponible VALUES ('LlistatAlumnes',1,'docx');
INSERT INTO Disponible VALUES ('Web Design', 1, 'docx');
INSERT INTO Disponible VALUES ('VideoNadal', 1, 'avi');
INSERT INTO Disponible VALUES ('La Porxada', 1, 'png');
INSERT INTO Disponible VALUES ('LlistatAlumnes', 2, 'pdf');
INSERT INTO Disponible VALUES ('ProjectZ', 1, 'docx');
INSERT INTO Disponible VALUES ('ProjectZ', 2, 'docx');
INSERT INTO Disponible VALUES ('PresentationA', 1, 'pptx');
INSERT INTO Disponible VALUES ('AnnualReport', 1, 'pdf');
INSERT INTO Disponible VALUES ('BudgetPlan', 1, 'xlsx');
INSERT INTO Disponible VALUES ('MarketingStrategy', 1, 'pdf');
INSERT INTO Disponible VALUES ('DossierM3', 1, 'pdf');
INSERT INTO Disponible VALUES ('DossierM3', 1, 'txt');
INSERT INTO Disponible VALUES ('VideoNadal', 1, 'mkv');
INSERT INTO Disponible VALUES ('La Porxada', 1, 'bmp');
INSERT INTO Disponible VALUES ('LlistatAlumnes', 1, 'csv');
INSERT INTO Disponible VALUES ('Web Design', 1, 'css');
INSERT INTO Disponible VALUES ('ProjectZ', 2, 'pptx');
INSERT INTO Disponible VALUES ('ProjectZ', 1, 'pdf');
INSERT INTO Disponible VALUES ('AnnualReport', 1, 'pptx');
INSERT INTO Disponible VALUES ('MarketingStrategy', 1, 'docx');
INSERT INTO Disponible VALUES ('CustomerFeedback', 1, 'json');
INSERT INTO Disponible VALUES ('Demos', 1, 'mov');
    

-- CONSULTES:

-- 1. Obtenir el nom de tots els autors que tinguin algun arxiu creat.

Select u.nom as 'Nom Usuari' from usuari u
	inner join arxiu a on a.usuariLogin=u.login
    where a.usuariLogin is not Null
    group by u.nom;


-- 2. Obtenir el nom del format de tots els arxius que s'han creat durant l'any 2023. El
-- nom de la columna ha de ser "Nom Format".

select a.nom1, d.formatNom as 'Nom Format' from arxiu a
	inner join disponible d on a.nom1=d.arxiuNom and a.versio1=d.arxiuVersio
    where year(a.dataCr)=2023;

-- 3. Obtenir tots els arxius del tipus amb format imatge.

select a.*, f.nom as 'Format Arxiu' from arxiu a
	inner join disponible d on a.nom1=d.arxiuNom and a.versio1=d.arxiuVersio
    inner join formata f on f.nom=d.formatNom
    where f.tipus like 'imatge%';

-- 4. Obtenir el total d'arxius originals de cada usuari creats l'any 2023.

select usuariLogin, count(nom1) as 'Total Arxius 2023' from arxiu
where year(dataCr)=2023 and versio1=1
group by usuariLogin;

-- 5. Obtenir el nom de l'autor de l'arxiu més antic.

select min(dataCr) from arxiu;

Select u.nom as 'Nom Autor' from usuari u
	inner join arxiu a on a.usuariLogin=u.login
    where a.dataCr=(select min(dataCr) from arxiu);

-- 6. Obtenir el total d'arxius originals creats l'any 2023 creats per l'usuari de nom Jose Gomez.

select count(*) as 'Total Arxius 2023' from usuari u 
	inner join arxiu a on a.usuariLogin=u.login
where year(a.dataCr)=2023 and u.nom = 'Jose Gomez' and versio1=1;

-- 7. Obtenir tota la informació de totes les versions dels arxius. Cal ordenar pel nom de 
-- l'arxiu i de la versió més recents a la més antiga.

select * from arxiu
where versio1!=1 
order by nom1 asc, versio1 desc;

-- 8. Obtenir el login i nom d’usuari de tots els autors que hagin creat algun arxiu que el seu tipus sigui imatge.

select distinct u.login, u.nom from usuari u
	inner join arxiu a on a.usuariLogin=u.login
	inner join disponible d on a.nom1=d.arxiuNom and a.versio1=d.arxiuVersio
    inner join formata f on f.nom=d.formatNom
where f.tipus like 'imatge%';

-- 9. Mostrar quins formats d’arxiu tenen més de 3 arxius disponibles.

select d.formatNom, count(a.nom1) as 'Numero de Archivos' from arxiu a
	inner join disponible d on a.nom1=d.arxiuNom and a.versio1=d.arxiuVersio
    group by d.formatNom
    having count(a.nom1)>3
    order by count(a.nom1) desc;

-- 10.Identificar l'arxiu amb el número de versió més gran

select nom1, versio1 from arxiu 
where versio1=(select max(versio1) from arxiu);

-- 11.Mostra un llistat amb el nom d’usuari i la quantitat d’arxius que ha creat.

select u.nom, count(a.nom1) as 'Quantitat de arxius Creats' from usuari u 
	inner join arxiu a on a.usuariLogin=u.login
group by u.nom;

-- 12.Obtenir el nom dels usuaris que hagin creat arxius amb el tipus de format imatge

select u.nom from usuari u
	inner join arxiu a on a.usuariLogin=u.login
	inner join disponible d on a.nom1=d.arxiuNom and a.versio1=d.arxiuVersio
    inner join formata f on f.nom=d.formatNom
where f.tipus like 'imatge%'
group by u.nom;

-- 13.Obtenir el nom de l'autor de l'arxiu original més nou que sigui del tipus imatge
-- Subconsulta 1
select max(dataCr) from arxiu a
	inner join disponible d on a.nom1=d.arxiuNom and a.versio1=d.arxiuVersio
    inner join formata f on f.nom=d.formatNom
where f.tipus like 'imatge%' and a.versio1=1;

-- Consulta General
select distinct u.nom from usuari u
	inner join arxiu a on a.usuariLogin=u.login
	inner join disponible d on a.nom1=d.arxiuNom and a.versio1=d.arxiuVersio
    inner join formata f on f.nom=d.formatNom
where f.tipus like 'imatge%' and a.versio1=1 and a.dataCr = (select max(dataCr) from arxiu a
		inner join disponible d on a.nom1=d.arxiuNom and a.versio1=d.arxiuVersio
		inner join formata f on f.nom=d.formatNom
	where f.tipus like 'imatge%' and a.versio1=1);

-- 14.Obtenir un llistat d’autors amb login i nom d’aquells que encara no han creat cap arxiu.

select u.login, u.nom from usuari u
	left join arxiu a on a.usuariLogin=u.login
-- where u.Login not in (select usuariLogin from arxiu group by usuariLogin);
where a.usuarilogin is Null;

select usuariLogin from arxiu
group by usuariLogin;

-- 15.Mostra quins son els noms del 3r, 4t i 5è arxiu ordenat per data de creació d’aquells
-- arxius en format docx o jpg. Cal mostrar l’usuari que l’ha creat.

select a.nom1 from arxiu a
	inner join disponible d on a.nom1=d.arxiuNom and a.versio1=d.arxiuVersio
where d.formatNom = 'docx';

select a.usuarilogin, a.nom1 from arxiu a
	inner join disponible d on a.nom1=d.arxiuNom and a.versio1=d.arxiuVersio
where d.formatNom in ('docx','jpg')
order by dataCr asc
limit 2,3; -- Se salta el 2 y empieza en el 3 hasta el 5 porque hace 3,4,5 de eso esta el el 3 y el 2 de donde empieza pero siempre se salta 1
-- 16.Volem veure quins usuaris tenen més arxius que l’usuari amb nom ‘Roberto Cano’

select count(a.nom1) from arxiu a
where a.usuariLogin = (select login from usuari where nom='Roberto Cano');

select u.nom from usuari u
	inner join arxiu a on a.usuariLogin=u.login
group by u.nom
having count(a.nom1)> (Select count(a.nom1) from arxiu a where a.usuariLogin = (select login from usuari where nom='Roberto Cano'));

-- 17.Volem veure el nom dels usuaris creats abans del 2010 que hagin realitzat algun
-- arxiu originals, en tipus format vídeo o que el nom del format sigui PDF.

select usuariLogin from arxiu
where versio1=1
group by usuariLogin;

select u.nom from usuari u
	inner join arxiu a on a.usuariLogin=u.login
	
where u.login in (select usuariLogin from arxiu
	inner join disponible d on a.nom1=d.arxiuNom and a.versio1=d.arxiuVersio
    inner join formata f on f.nom=d.formatNom
	where versio1=1 and d.formatnom='pdf' and f.nom like('%video%')
    group by usuariLogin)
and year(u.dataCr)<2010 
group by u.nom;

-- 18.Volem veure tots els formats que encara no han sigut utilitzats.

select formatnom from disponible;

select f.nom from disponible d
    right join formata f on f.nom=d.formatNom
where d.formatnom is NULL;


-- 19.Volem veure el total d’arxius amb nom de format pdf, docx, mpg per any de creació
-- de l’arxiu i per format.

select arxiunom from disponible
where formatNom in ('pdf','docx','jpg');

select a.*, d.formatnom from arxiu a
	inner join disponible d on a.nom1=d.arxiuNom and a.versio1=d.arxiuVersio
where a.nom1 in (select arxiunom from disponible
	where formatNom in ('pdf','docx','jpg'))
order by a.dataCr, d.formatNom;


SELECT  YEAR(A.dataCr) AS anyCreacio, F.nom, COUNT(A.nom1) AS totalArxius FROM Arxiu A
    INNER JOIN Disponible D ON A.nom1 = D.arxiuNom AND A.versio1 = D.arxiuVersio
    INNER JOIN FormatA F ON F.nom = D.formatNom
WHERE F.nom IN ('pdf', 'docx', 'mpg')
GROUP BY anyCreacio, F.nom
ORDER BY anyCreacio, F.nom;

-- 20.Es vol premiar als usuaris que porten 10 o més anys a l’empresa. Aquests usuaris
-- es consideren VETERANS. Volem saber el total d’arxius que ha creat cada veterà.

select u.login from usuari u
where u.dataCr+year(10)<now();

select u.nom, count(a.nom1) as 'Arxius Creats' from usuari u
	left join arxiu a on a.usuariLogin=u.login
where a.usuariLogin in 
(
	select u.login from usuari u
	where dateDiff(now(),u.dataCr) > 365*10
)
group by u.nom;

-- 21.Mostra un llistat dels usuaris creats al 2022 amb la seva quantitat d'arxius originals,
-- en aquesta mitja, cal incloure també les versions.
-- Alerta! Només s'ha de tenir en compte en els calculs, només els arxius de tipus document.
-- que han creat més arxius originals que la mitja dels usuaris, 

-- Subconsulta 1
select count(*) as NumArxius from arxiu
	where versio1=1
	group by usuariLogin;

-- Subconsulta 2
select avg(NumArxius) from 
(
	select count(*) as NumArxius from arxiu
	where versio1=1
	group by usuariLogin
) as ArxiusPerUsuari;

-- Consulta General
select u.nom, count(*) as qtt_Arxius from usuari u 
	inner join arxiu a on a.usuariLogin=u.login
	inner join disponible d on a.nom1=d.arxiuNom and a.versio1=d.arxiuVersio
    inner join formata f on f.nom=d.formatNom
where year(u.datacr)=2022 
and a.versio1=1 
and f.tipus like ('%document%')
group by u.nom
    having qtt_Arxius > (
		select avg(NumArxius) from 
		(
			select count(*) as NumArxius from arxiu
			where versio1=1
			group by usuariLogin
		) as ArxiusPerUsuari
);

-- 22. OBTENIR EL NOM DELS ARXIUS ORIGINALS CREATS PELS USUARIS DONATS D'ALTA DURANT L'ANY 2020, 2022 O 2024. 
-- L'ARXIU HA D'ESTAR CREAR EL MES DE SETEMBRE DEL 2021 I HA DE SER DE TIPUS PDF.

select arxiunom from disponible
where formatNom='pdf';

select a.nom1 from usuari u
	inner join arxiu a on a.usuariLogin=u.login
	inner join disponible d on a.nom1=d.arxiuNom and a.versio1=d.arxiuVersio
where year(u.dataCr) in (2020,2022,2024) and month(a.dataCr)=9 and a.nom1 in (select arxiunom from disponible
	where formatNom='pdf');

-- 23. Mostra un llistat de totes les dades dels arxius on també es vegi amb una columna addicional,
--  total arxius del mateix format que l'arxiu que s'està llistant.
select * from arxiu;

select a.*, NULL as Total_Arxius_mateix_format from arxiu a
	inner join disponible d on a.nom1=d.arxiuNom and a.versio1=d.arxiuVersio;
    
    
select count(a.dataCr) as 'Total Arxius mateix format' from arxiu a
	inner join disponible d on a.nom1=d.arxiuNom and a.versio1=d.arxiuVersio
group by d.formatNom;


(select a.*, NULL as Total_Arxius_mateix_format from arxiu a
	inner join disponible d on a.nom1=d.arxiuNom and a.versio1=d.arxiuVersio)
union
(select Null as Col1, Null as Col1, Null as Col1, Null as Col1, Null as Col1, Null as Col1, count(a.dataCr) as 'Total Arxius mateix format' from arxiu a
	inner join disponible d on a.nom1=d.arxiuNom and a.versio1=d.arxiuVersio
group by d.formatNom);

-- 24. Crear la columna pes(KB) a la taula Arxiu i obtenir nomes dels arxius versionats
-- amb data de creació d'abans del 2023 el pes, nom i tipus del format.

alter table arxiu add column pes varchar(20);

select a.pes,a.nom1,d.formatNom from arxiu a
	inner join disponible d on a.nom1=d.arxiuNom and a.versio1=d.arxiuVersio
where a.versio2 is not NULL and year(a.dataCr)<2023;





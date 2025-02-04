create database pdf10;
use pdf10;

CREATE TABLE IF NOT EXISTS Clients
(
	DNI CHAR(9),
    nom	varchar(20),
    poblacio varchar(20),
    provincia varchar(20) DEFAULT 'Barcelona',
	dataNaix DATE,
     PRIMARY KEY (dni)
);

CREATE TABLE IF NOT EXISTS Article
(
    codi	char(11),
    nom	varchar(20),
    preu decimal(8,2),
    familia varchar(30) NOT NULL,
     PRIMARY KEY (codi),
	CONSTRAINT verifPreu CHECK (preu>=0 AND preu<=30000)
);

CREATE TABLE IF NOT EXISTS Factura
(
	codi		char(9),
    dataFac		date,
	clientDNI	char(9),
	 PRIMARY KEY (codi),
	CONSTRAINT fk_clients_factura	FOREIGN KEY (clientDNI) REFERENCES clients (DNI)
		ON UPDATE CASCADE ON DELETE RESTRICT

);

CREATE TABLE IF NOT EXISTS Liniafactura
(
	facturacodi	CHAR(9),
	articlecodi	CHAR(11),
    qtt	tinyint,
    
     PRIMARY KEY (facturacodi,articlecodi),
    
    CONSTRAINT fk_factura_Liniafactura
		FOREIGN KEY (facturacodi) REFERENCES Factura (codi)
			ON UPDATE RESTRICT ON DELETE RESTRICT,
	
    CONSTRAINT fk_article_Liniafactura FOREIGN KEY (articlecodi) REFERENCES Article (codi)
		ON UPDATE RESTRICT ON DELETE RESTRICT

);

INSERT INTO Clients VALUES 	('11111111A','Joan Garcia','Mollet','Barcelona', '2001-01-20');
INSERT INTO Clients VALUES 	('22222222B','Maria Maldonado','Granollers','Barcelona','2001-01-12');
INSERT INTO Clients VALUES 	('33333333C','Carles Jiménez','Granollers','Barcelona','2001-02-20');
INSERT INTO Clients VALUES 	('44444444D','Ramon Sanchez','Girona','Girona','2001-06-20');
INSERT INTO Clients VALUES 	('55555555E','Pere Hinojosa','Girona','Girona','2002-02-23'); 
INSERT INTO Clients VALUES 	('66666666F','Blas Garcia','Valencia','Girona','2000-01-20');
                            
INSERT INTO Article VALUES 	('A01','Ratolí',16,'Perifèric/Ratolí'), 
							('A33','Impressora HP',100.84,'Perifèric/Impressora'), 
                            ('A56','Portátil Asus',500.95,'Portàtil/Portàtil'), 
                            ('B32','NVIDIA 1070',354,'Component/Grafica'), 
                            ('G56','Intel I3 6071',164,'Component/Processador'), 
                            ('G57','Intel I5 7091',264,'Component/Processador'), 
                            ('G58','Intel I7 7071',344,'Component/Processador'), 
                            ('D34','RAM 8GB DDR4',46.90,'Component/RAM'),
                            ('S12','RAM 16GB DDR4',84.95,'Component/RAM'),
                            ('J34','Font 500W',46.90,'Component/Font'),
                            ('D32','Font 750W',76.90,'Component/Font'),
                            ('D39','Placa Gigabyte P45',46.90,'Component/PlacaBase'),
                            ('F34','Placa Asus Rock A566',96.40,'Component/PlacaBase'),
                            ('O34','Torre SOE ATX Gaming',46.90,'Component/Torre'),
                            ('Z34','Phoenix ATX 67',76.90,'Component/Torre'),
                            ('Z35','Phoenix ATX 67',36.90,'Component/Torre'),
                            ('Z44','Asus Gaming 23p',156.90,'Pantalla/Monitor'),
                            ('Z54','LG Pro 21p',142.50,'Pantalla/Monitor'),
                            ('Z64','Teclat Logitech G120',45.90,'Periféric/Teclat'),
                            ('Z74','Teclat Logitech K70',86.90,'Periféric/Teclat');
                            
INSERT INTO Factura VALUES	('006746/20','2016-02-05','11111111A'), 
							('000001/20','2016-12-05','11111111A'), 
                            ('000002/21','2018-10-05','33333333C'), 
                            ('000003/21','2018-11-05','22222222B'), 
                            ('000004/19','2019-07-05','44444444D'),
                            ('000005/21','2018-01-01','33333333C');                             
INSERT INTO Liniafactura VALUES 
							('006746/20','Z54',10),('006746/20','Z35',5),
							('000001/20','Z35',2),('000001/20','F34',5),
							('000002/21','Z54',3),('000002/21','Z44',5),
							('000003/21','Z74',3),
							('000004/19','D39',3),('000004/19','F34',3),
                            ('000005/21','D39',2),('000005/21','Z64',3);


-- **************************** CONSULTES **********************************

-- 1.Obtenir quantes factures hi ha hagut per província i per població. En cas que hi hagin províncies
-- que no hagin tingut factures, cal que es mostri un 0.

select count(f.codi) as qtt_Factura, c.provincia, c.poblacio from clients C
	left join Factura f on c.DNI = f.clientDNI
    group by c.provincia, c.poblacio;

-- 2. Obtenir el numero total de factures que té cada client amb el DNI i una altra columna amb el
-- Nom i Cognom

select count(f.codi) as qtt_Factura, c.DNI, c.Nom from clients C
	left join Factura f on c.DNI = f.clientDNI
    group by c.DNI;

-- 2B. Mostra el nom d'aquells clients que no son de Granollers ni de Sant Celoni 
-- que tenen les mateixes factures acumulades que aquells que son de Girona

select count(f.codi) from clients C
	left join Factura f on c.DNI = f.clientDNI
where c.provincia='Girona';

select c.DNI, c.Nom from clients C
	left join Factura f on c.DNI = f.clientDNI
where c.poblacio not in ('Granollers','Sant Celoni')
group by c.DNI
having count(f.codi) in(
	select count(f.codi) from clients C 
		left join Factura f on c.DNI = f.clientDNI
	where c.provincia='Girona'
	GROUP BY C.DNI
);


-- 3. Obtenir el numero total de factures per a tots els clients que viuen a Barcelona.

select count(f.codi) as qtt_Factures, c.provincia from clients C
	left join Factura f on c.DNI = f.clientDNI
    where c.provincia in ('Barcelona');

-- 4. Obtenir el numero total de factures trameses en cada una de les ciutats de província catalanes.
select * from clients;

select c.poblacio, count(f.codi) as qtt_Factures from clients C
	left join Factura f on c.DNI = f.clientDNI
    WHERE C.provincia IN ('Barcelona', 'Girona', 'Tarragona', 'Lleida')	
    group by c.poblacio;
    
-- 5. Realitzar un llistat de tots els articles de la família «sobretaula» que el seu nom comenci per la
-- lletra «o» amb un preu unitari superior a 400€.

select * from article
where familia = 'sobretaula'
and nom like 'o%'
and preu>400;

-- 5B. Mostra el nom del producte mes car

select max(preu) from article;

select nom from article
where preu = (
select max(preu) from article
);

-- 5C. Mostra el nom del article mes venut

-- Con Vista

Create or Replace view qttVenudaPerArticle as
select articlecodi,sum(qtt) as Suma from liniafactura
group by articlecodi;

select * from qttVenudaPerArticle;
-- Subconsulta
select max(Suma) from qttVenudaPerArticle;
-- Consulta general
select a.codi from liniafactura l
	inner join article a on l.articlecodi = a.codi
group by a.codi
having sum(l.qtt)=(select max(Suma) from qttVenudaPerArticle);



-- Sin Vista
-- consulta 1
select sum(l.qtt) as Suma from liniafactura l
	group by l.articlecodi;
-- consutla 2
select max(Suma) from (
	select sum(l.qtt) as Suma from liniafactura l
	group by l.articlecodi
	) Hola;
-- consulta general
select a.codi from liniafactura l
	inner join article a on l.articlecodi = a.codi
group by a.codi
having sum(l.qtt)=
(
	select max(Suma) from (
	select sum(l.qtt) as Suma from liniafactura l
	group by l.articlecodi
	) Hola
);

-- 6. Obtenir el nom dels articles que són més cars que els articles de les famílies
-- Component/Processador
select * from article;

select max(preu) from article
where familia = 'Component/Processador'
group by familia;

select * from article
where preu=
(
	select max(preu) from article
	where familia = 'Component/Processador'
	group by familia
);

-- 7. Obtenir el codi de l'article, el nom de l'article i la quantitat comprada per a cada una de les línies
-- de factura.

select a.codi, a.nom, l.qtt from article a
	inner join liniafactura l on l.articlecodi = a.codi
order by l.facturacodi;

-- 8. Obtenir l'import total facturat amb totes les factures

select sum(l.qtt*a.preu) as ImportTotal from liniafactura l
	inner join article a on l.articlecodi = a.codi;

-- 9. Obtenir l'import facturat per a cada una de les famílies d'articles.

select a.familia, sum(l.qtt*a.preu) as ImportTotal from liniafactura l
	right join article a on l.articlecodi = a.codi
group by a.familia;

-- 10. Obtenir la informació de tots els articles i la seva quantitat venuda. Obtindrem el valor NULL o
-- 0 (zero) en el cas que el producte no hagi tingut cap venda.

select a.*, sum(l.qtt) as Total_Ventes from liniafactura l
	right join article a on l.articlecodi = a.codi
group by a.codi;
-- 11. Obtenir l'import total de la factura 006746/15.

select * from liniafactura;

select l.facturacodi, sum(l.qtt*a.preu) as 'Import Total' from liniafactura l
	inner join article a on l.articlecodi = a.codi
where l.facturacodi='006746/15';


-- 12. Obtenir l'import facturat per a cada un dels clients que siguin de la ciutat de Girona. 
-- Cal ordenar el resultat de major a menor import.

create or replace view sumatotal2 as
select C.nom,sum(LF.qtt*A.preu) as totalfacturado from Article A 
	inner join Liniafactura LF on LF.articlecodi=A.codi
    inner join Factura F on LF.facturacodi=F.codi
    inner join Clients C on C.DNI=F.ClientDNI
    group by C.DNI;
    
select * from sumatotal2;

select s2.* from sumatotal2 s2
	inner join Clients C on C.nom=s2.nom
where C.poblacio='Girona'
order by s2.totalfacturado desc;
        
        
-- 13. Obtenir el codi i la data de totes les factures amb un import superior al de la factura 000004/19.

create or replace view suma13 as
select LF.Facturacodi,sum(LF.qtt*A.preu) as total from Article A
	inner join LiniaFactura LF on LF.articlecodi=A.codi
    group by LF.Facturacodi;

-- Consulta general 
    
select F.codi,F.dataFac,s13.total from Factura F
	inner join suma13 s13 on s13.Facturacodi=F.codi 
	where s13.total > (select total from suma13 where Facturacodi='000004/19');
    
-- Subconsulta 
select total from suma13 where Facturacodi='000004/19';

-- 14. Obtenir un llistat amb: totes les dades del client, totes les dades de les seves factures, i els seus productes adquirits.

create or replace view clientesyfacturas as
select C.*,F.* from Clients C
	inner join Factura F on F.clientDNI=C.DNI;

select * from clientesyfacturas;

select CF.DNI, cf.nom ,cf.poblacio,cf.provincia,cf.dataNaix,l.facturacodi, L.articlecodi, l.qtt from clientesyfacturas CF
	inner join Liniafactura L on L.facturacodi = CF.codi;

-- 15. Obtenir el total facturat per mes durant l'any 2018 i 2021. Ordenar el resultat per any i mes de forma descendent l’import.

create or replace view importeporañoymes as
select year(F.dataFAc) as año,month(F.dataFac) as mes,(LF.qtt*A.preu) as importe from Liniafactura LF
	inner join Article A on A.codi=LF.articlecodi
    inner join Factura F on LF.facturacodi=F.codi;
    
select año, mes, sum(importe) from importeporañoymes
where año in ('2018','2021')
group by año, mes;
    
    
select * from importeporañoymes;
    
-- 16. Obtenir quines factures tenen una facturació major a l'import mitjà de la facturació de la població de «Granollers».

create view importeporpoblacion as
select C.poblacio,avg(a.preu*lf.qtt) as preciomedio from Liniafactura LF
	inner join Article A on LF.articlecodi=A.codi
    inner join Factura F on F.codi=LF.facturacodi
    inner join Clients C on C.DNI=F.clientDNI
    group by C.poblacio;
    
-- subconsulta
select preciomedio from importeporpoblacion where poblacio='Granollers';    
    
-- Consulta Final
select * from importeporpoblacion 
	where preciomedio>(select preciomedio from importeporpoblacion where poblacio='Granollers');

-- 17. Obtenir tots els articles dels quals no s'hagi venut cap unitat.

select A.nom from Article A
	left join LiniaFactura LF on LF.Articlecodi=A.codi
    where LF.qtt is NULL;

-- 18. Obtenir el dni i el nom de tots els clients que no tinguin cap factura excepte els que son de la província Barcelona.

select C.nom,F.codi,C.provincia from Clients C
	left join Factura F on F.clientDNI = C.DNI
    where F.codi is NULL and C.provincia!='Barcelona';

-- 19. Digues el DNI i el nom del client que ha fet la factura més cara.

create or replace view importeporfactura as
select LF.facturacodi,sum((A.preu*LF.qtt)) as importe from Liniafactura LF
	inner join Article A on A.codi=LF.articlecodi
group by lf.facturacodi;

create or replace view clienteyfactura as
	select C.DNI,C.nom,F.codi from Clients C
		inner join Factura F on F.clientDNI=C.DNI;
   
-- subconsulta
select max(importe) as importemaximo from importeporfactura;
-- consulta final
   
select CF.*,IPF.importe from importeporfactura IPF 
	inner join clienteyfactura CF on CF.codi=IPF.facturacodi
	where IPF.importe=(select max(importe) as importemaximo from importeporfactura);
    
-- 20. Mostra els nom dels clients que han comprat més articles que en la suma del total d’articles que han comprat 
-- els clients amb cognom Garcia.

select * from clienteyfactura;

create or replace view productosxcliente as
select Cf.*,LF.articlecodi,LF.qtt from Liniafactura LF
	inner join clienteyfactura CF on CF.codi=LF.facturacodi;
select * from Liniafactura;
select * from productosxcliente;

create or replace view sumaqtt as 
	select nom,sum(qtt) as totalqtt from productosxcliente
    group by DNI;
    select * from sumaqtt;

SELECT * FROM sumaqtt 
	having totalqtt>(select totalqtt from sumaqtt where nom like '%Garcia');
    
-- 21. A partir d’ara es vol tenir el control de la categoria el qual pertany un article. De la categoria es vol 
-- emmagatzemar, el nom de la categoria, 
-- si aquesta categoria té data de caducitat i el tipus de risc que va entre 1 y 10 (per defecte és 5). 
-- Realitza les instruccions necessàries per tal de poder resoldre aquest nou requeriment.

drop table Categoria;
create table Categoria(
	nom VARCHAR(20) PRIMARY KEY,
    caducitat DATE,
    risc TINYINT DEFAULT 5,
    constraint verificarisc CHECK(risc BETWEEN 1 AND 10)
);
insert into Categoria(nom,caducitat) values('Sobremesa','2023-04-23');
alter table Article add column categorianom VARCHAR(20);
alter table Article add constraint fk_Article_Categoria foreign key(categorianom) references categoria(nom)
	on update cascade
    on delete restrict;
select * from Article;
-- VIEWS:
create or replace view qttFacturesPerClient as
select distinct C.dni as dniclient, C.nom, C.poblacio,C.DNI,COUNT(F.codi) as numeroFactures from Clients C
    left join Factura F on C.DNI=F.clientDNI
group by C.DNI;

select * from qttFacturesPerClient;

-- 22. Mostra els noms dels articles que el seu preu estigui compres entre el minim y 
-- el maxim dels productes de la familia component (Between (subconsulta) and (subconsulta))

select * from article;

create or replace view PreuArticlesComponent as
select preu from article
where familia like 'Component/%';

-- Subconsulta 1
select max(preu) from PreuArticlesComponent;
 
-- Subconsulta 2
select min(preu) from PreuArticlesComponent;

-- Consulta General
select a.nom from article a
where a.preu between (select min(preu) from PreuArticlesComponent) and (select max(preu) from PreuArticlesComponent);





-- Prueba VIEWS

CREATE OR REPLACE VIEW qttFacturesPerClient AS
SELECT DISTINCT C.dni, C.nom, C.poblacio,COUNT(F.codi) AS numeroFactures  FROM Clients C
    LEFT JOIN Factura F ON C.DNI=F.clientDNI
GROUP BY C.DNI;

select * from qttFacturesPerClient
-- where poblacio = 'Mollet';
where numeroFactures>=1
order by numeroFactures;
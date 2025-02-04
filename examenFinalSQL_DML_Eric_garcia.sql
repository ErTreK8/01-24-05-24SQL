USE BankinCemDB;

/*1. Mostra el nom, cognoms, la quantitat de comptes que te i quantes targetes te associades de cada client de la provincia de BarcelONa
i Madrid. Mostra les dades per aquells clients que tenen mes quantitat de comptes i en cas que tinguin les mateixes, per nombre de targetes*/


-- VISta 1
create or replace view comptesClient as
SELECT clientBCodi as id_ClientCompte, count(compteIdCompte) as qtt_Compte FROM vinculacio
GROUP BY clientBCodi
;

SELECT * FROM comptesClient;

-- VISta 2

create or replace view targetaClient as
SELECT clientBCodi as id_ClientTargeta, count(numero) as qtt_targeta FROM targeta
GROUP BY clientBCodi
;
SELECT * FROM targetaClient;

-- SubSELECT 1

SELECT provincia FROM poblacio
WHERE nom in('Madrid','BarcelONa')
;



SELECT * FROM vinculacio
WHERE clientBCodi = 5031641989;

SELECT * FROM compte;

-- CONsulta Final

SELECT cli.nom, cli.cognoms, co.qtt_Compte, t.qtt_targeta FROM clientb cli
	LEFT JOIN comptesClient co ON cli.codi = co.id_ClientCompte
	LEFT JOIN targetaClient t ON cli.codi = t.id_ClientTargeta
    INNER JOIN poblacio p ON p.idPoblacio = cli.poblacioIdPoblacio
WHERE p.provincia in (
	SELECT provincia FROM poblacio
	WHERE nom in('Madrid','BarcelONa')
)
ORDER BY co.qtt_Compte desc, t.qtt_targeta desc;


/*2. Es vol mostrar el nom,cognom,poblacio i quantitat de comptes d'aquells 
clients que tenen la mateixa quantitat de comptes que els clients que sON de la poblacio de BarcelONa*/

-- Consulta General
SELECT cli.nom, cli.cognoms, p.nom, co.qtt_compte FROM clientb cli
	LEFT JOIN comptesClient co ON cli.codi = co.id_ClientCompte
    INNER JOIN poblacio p ON p.idPoblacio = cli.poblacioIdPoblacio
WHERE co.qtt_compte in 
(
	SELECT co.qtt_compte FROM clientb cli
		LEFT JOIN comptesClient co ON cli.codi = co.id_ClientCompte
		INNER JOIN poblacio p ON p.idPoblacio = cli.poblacioIdPoblacio
	WHERE p.nom = 'Barcelona' 
)
;

-- Subconsulta 1

SELECT co.qtt_compte FROM clientb cli
	LEFT JOIN comptesClient co ON cli.codi = co.id_ClientCompte
    INNER JOIN poblacio p ON p.idPoblacio = cli.poblacioIdPoblacio
WHERE p.nom = 'Barcelona'; 


/*3. Mostra aquells numeros de comptes que han realitzat mes quantitat de moviments que la mitja de cada compte. 
De cada una d'elles, cal mostrar la quantitat de moviments que s'han relaitzat ordenat per la quantitat
de moviments d'aquella compte de mes a menys*/

-- VISta 1

Create or replace view qttMoviments_Compte as
SELECT compteIdCompte, count(importM) as qttMoviments FROM moviment
GROUP BY compteIdCompte;

SELECT * FROM qttMoviments_Compte;

-- SubSELECT 1
SELECT round(avg(qttMoviments),2) FROM qttMoviments_Compte;

-- CONsulta Final

SELECT * FROM qttMoviments_compte
WHERE qttMoviments >(SELECT round(avg(qttMoviments),2) FROM qttMoviments_Compte)
ORDER BY qttMoviments desc;


/*4. Es vol saber qui ha sigut el client amb el nom i cognoms, 
que ha relitzat la transferencia de quantitat mes gran de tota la base de dades*/

-- SubSELECT 1
SELECT max(quantitat) FROM transferencia;

-- SubSELECT 2
SELECT compteOrigen FROM transferencia WHERE quantitat= (SELECT max(quantitat) FROM transferencia);

-- CONsulta Final
SELECT cli.nom, cli.cognoms FROM clientb cli
	INNER JOIN vinculacio v ON v.clientBCodi = cli.codi 
WHERE v.compteIdCompte = (SELECT compteOrigen FROM transferencia WHERE quantitat= (SELECT max(quantitat) FROM transferencia))
;

/*5. La oficina BONaVISta ha enviat un mISsatge a tots els seus clients i aquelles targetes actives activa que tenen un 
limit de 3000 en el caixer i en la comptra, quedara augmentat en un 20% i un 25%*/

-- 3000+((3000/100)*20)=3600
-- 3000+((3000/100)*25)=3750
/* Porti esto seria junto pero no se porque no me funciONa si quieres mira este pero si los pONgo por separado como estan abajo si me funciONa

update targeta 
SET limitCaixer = limitCaixer+((limitCaixer/100)*20) AND limitCompra = limitCompra+((limitCompra/100)*25)
-- SET limitCaixer = 3600 AND limitCompra=3750
WHERE limitCaixer=3000
AND limitCompra=3000
AND activa=1;*/

-- Update 1
update targeta 
SET limitCaixer = limitCaixer+((limitCaixer/100)*20)
WHERE limitCaixer=3000
AND limitCompra=3000
AND activa=1;

-- Update 2
update targeta 
SET limitCompra=limitCompra+((limitCompra/100)*25)
WHERE limitCaixer=3600
AND limitCompra=3000
AND activa=1;

-- ComprovaciON
SELECT * FROM targeta
WHERE activa=1
AND limitCaixer=3600;



/*6.Cal esborrar de la base de dades aquells moviments amb cONcepte Carrefour que han realitzat els clients amb el 
correu electrONic "Hotmail" i que han nascut a partir del 1984*/


delete m.* FROM moviment m
	INNER JOIN compte co ON m.compteIdCompte = co.idCompte
    INNER JOIN vinculacio v ON v.compteidCompte = co.idCompte
    INNER JOIN clientb cli ON cli.codi = v.clientbCodi
WHERE cONcepte ='Carrefour'
AND cli.email LIKE '%@hotmail%'
AND cli.dataNaixement >='1984-01-01';


/*7. A partir d'una vISta generada anomenada llIStat comptesClients amb un llIStat de clients ON es veo el id de la compte, nif, nom, cognom,
els numeros de comptes amb el seu saldo i numero d'oficina associada a la compte cal fer una cONsulta ON nomes es mostrin aquells 
numeros de comptes amb el seu propietari (nom i cONgONms) ON la suma total de la quantitat de moviments de la compte superen 
els 400000 euros. Ordena les dades de mes a menys quantitat*/


SELECT * FROM compte;


/*8. Mostra el numero i el nom de les oficines que dels clients que van obrir una compte
entre el 2010 i el 2012 NO tenen targetes*/

-- Consulta Final

SELECT nom, numero FROM oficina
WHERE numero in (
	SELECT oficinaNumero FROM compte c
		LEFT JOIN targeta t ON t.compteIdCompte = c.idCompte
	WHERE dataobertura BETWEEN '2010-01-01' AND '2012-12-31'
	AND t.numero IS NULL
)
;

-- Subconsulta 1
SELECT oficinaNumero FROM compte c
	LEFT JOIN targeta t ON t.compteIdCompte = c.idCompte
WHERE dataobertura BETWEEN '2010-01-01' AND '2012-12-31'
AND t.numero IS NULL;


/*9. Ha vingut Inspeccio al nostre banc i en demanen volcar tota la informacio en una taula anomenada
"TransferenciesSuspitoses" d'aquells clients que han realitzat alguna transferencia superior de 200 euros. 
Les dades que ens demanen sON: NIF, nomComplet (cognom,nom), email,telefON,numero de compte de la transferencia y quantitat
Crea l'script necessari per poder enviar les dades a inspeccio*/

-- Script Crear Tabla

create table TransferenciesSuspitoses as
SELECT cli.NIF, cONcat(cli.cognoms,' ',cli.nom) as nomComplet, cli.email, cli.telefON, t.compteOrigen, t.quantitat FROM clientb cli
	INNER JOIN vinculacio v ON v.clientBCodi = cli.codi 
	INNER JOIN compte co ON v.compteidCompte = co.idCompte
	INNER JOIN transferencia t ON t.compteOrigen = co.idCompte
WHERE t.quantitat>200;

-- Select de la tabla
SELECT * FROM TransferenciesSuspitoses;

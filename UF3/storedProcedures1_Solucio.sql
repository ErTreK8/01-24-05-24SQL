CREATE DATABASE StoredProceduresDB1;
USE StoredProceduresDB1;
GO


-- EXERCICI 1:
-- Crea un "stored procedure" per a crear les següents taules. 
-- El procediment haurà d'esborrar les taules en el cas que ja existeixin i crear-les de nou. 
-- El procediment s’ha de dir, crearTaules
CREATE OR ALTER PROCEDURE crearTaules AS
BEGIN

	IF OBJECT_ID('CompraVenta') IS NOT NULL DROP TABLE CompraVenta;
	IF OBJECT_ID('Producte') IS NOT NULL DROP TABLE Producte;
	IF OBJECT_ID('Empresa') IS NOT NULL DROP TABLE Empresa;

	CREATE TABLE Producte (
		codi CHAR(8) PRIMARY KEY,
		nom VARCHAR(30) UNIQUE NOT NULL,
		categoria VARCHAR(30) NOT NULL
	);
	PRINT 'Taula Producte creada correctament'

	CREATE TABLE Empresa (
		CIF CHAR(9) PRIMARY KEY,
		nom VARCHAR(50) UNIQUE NOT NULL,
		poblacio VARCHAR(50) NOT NULL
	);
	PRINT 'Taula Empresa creada correctament'
	CREATE TABLE CompraVenta (
		data DATE PRIMARY KEY,
		preu MONEY,
		unitats INT,
		tipus CHAR(1), -- C: Compra / V:Ven
		producteCodi CHAR(8),
		empresaCIF CHAR(9),
		CONSTRAINT verifTipus CHECK (tipus IN ('C','V')),
		CONSTRAINT fk_Producte_CompraVenta FOREIGN KEY(Productecodi) REFERENCES Producte(codi)
			ON UPDATE CASCADE ON DELETE NO ACTION,
		CONSTRAINT fk_Empresa_CompraVenta FOREIGN KEY(EmpresaCIF) REFERENCES Empresa(CIF)
			ON UPDATE CASCADE ON DELETE NO ACTION
	);
	PRINT 'Taula CompraVenta creada correctament'

END;
GO

EXEC crearTaules;


-- *********** DADES *********
-- INSERTS PRODUCTE
BEGIN
INSERT INTO Producte VALUES ('AP567342', 'Corda per alpinisme', 'Alpinisme');
INSERT INTO Producte VALUES ('AP567343', 'Mosquetó per alpinisme', 'Alpinisme');
INSERT INTO Producte VALUES ('AP567344', 'Casc per alpinisme', 'Alpinisme');
INSERT INTO Producte VALUES ('AP567345', 'Piolet per alpinisme', 'Alpinisme');
INSERT INTO Producte VALUES ('AP567346', 'Arnés per alpinisme', 'Alpinisme');
INSERT INTO Producte VALUES ('BB567342', 'Corda per escalada', 'Escalada');
INSERT INTO Producte VALUES ('BB567343', 'Mosquetó per escalada', 'Escalada');
INSERT INTO Producte VALUES ('BB567344', 'Casc per escalada', 'Escalada');
INSERT INTO Producte VALUES ('BB567345', 'Cinturó de seguretat per escalada', 'Escalada');
INSERT INTO Producte VALUES ('BB567346', 'Sabatilles per escalada', 'Escalada');
INSERT INTO Producte VALUES ('CC567342', 'Raqueta de tennis', 'Tennis');
INSERT INTO Producte VALUES ('CC567343', 'Pilotes de tennis', 'Tennis');
INSERT INTO Producte VALUES ('CC567344', 'Raqueta de pàdel', 'Pàdel');
INSERT INTO Producte VALUES ('CC567345', 'Pilotes de pàdel', 'Pàdel');
INSERT INTO Producte VALUES ('CC567346', 'Ulleres de sol per esports de raqueta', 'Accessoris');
INSERT INTO Producte VALUES ('DD567342', 'Bicicleta de muntanya', 'Ciclisme');
INSERT INTO Producte VALUES ('DD567343', 'Casc de ciclisme', 'Ciclisme');
INSERT INTO Producte VALUES ('DD567344', 'Maillot de ciclisme', 'Ciclisme');
INSERT INTO Producte VALUES ('DD567345', 'Pantalons curts de ciclisme', 'Ciclisme');
INSERT INTO Producte VALUES ('DD567346', 'Guants de ciclisme', 'Ciclisme');
INSERT INTO Producte VALUES ('EE567342', 'Patins en línia', 'Patins');
INSERT INTO Producte VALUES ('EE567343', 'Genolleres per patinatge', 'Patins');
INSERT INTO Producte VALUES ('EE567344', 'Cotelleres per patinatge', 'Patins');
INSERT INTO Producte VALUES ('EE567345', 'Patins de gel', 'Patins');
INSERT INTO Producte VALUES ('EE567346', 'Patins de velocitat', 'Patins');
INSERT INTO Producte VALUES ('FF567342', 'Pal de golf', 'Golf');
INSERT INTO Producte VALUES ('FF567343', 'Pilotes de golf', 'Golf');
INSERT INTO Producte VALUES ('FF567344', 'Carret de golf', 'Golf');
INSERT INTO Producte VALUES ('FF567345', 'Sabatilles de golf', 'Golf');
INSERT INTO Producte VALUES ('FF567346', 'Guants de golf', 'Golf');
INSERT INTO Producte VALUES ('GG567342', 'Raqueta de bàdminton', 'Bàdminton');
INSERT INTO Producte VALUES ('GG567343', 'Volants de bàdminton', 'Bàdminton');
INSERT INTO Producte VALUES ('GG567344', 'Xarxa de bàdminton', 'Bàdminton');
INSERT INTO Producte VALUES ('GG567345', 'Sabatilles de bàdminton', 'Bàdminton');
INSERT INTO Producte VALUES ('GG567346', 'Vestit de bàdminton', 'Bàdminton');
INSERT INTO Producte VALUES ('HH567342', 'Taula de ping-pong', 'Ping-pong');
INSERT INTO Producte VALUES ('HH567343', 'Raqueta de ping-pong', 'Ping-pong');
INSERT INTO Producte VALUES ('HH567344', 'Pilotes de ping-pong', 'Ping-pong');
INSERT INTO Producte VALUES ('HH567345', 'Xarxa de ping-pong', 'Ping-pong');
INSERT INTO Producte VALUES ('HH567346', 'Sabatilles de ping-pong', 'Ping-pong');
INSERT INTO Producte VALUES ('II567342', 'Els esquís', 'Esquí');
INSERT INTO Producte VALUES ('II567343', 'Botes d''esquí', 'Esquí');
INSERT INTO Producte VALUES ('II567344', 'Bastons d''esquí', 'Esquí');
INSERT INTO Producte VALUES ('II567345', 'Ulleres d''esquí', 'Esquí');
INSERT INTO Producte VALUES ('II567346', 'Gavella de neu', 'Esquí');
END
GO
SELECT * FROM Producte;

-- INSERTS EMPRESA

INSERT INTO Empresa VALUES ('123456789', 'Electrodomésticos Martínez S.L.', 'Barcelona');
INSERT INTO Empresa VALUES ('234567890', 'Construcciones López y Asociados', 'Madrid');
INSERT INTO Empresa VALUES ('345678901', 'Servicios Informáticos Gómez', 'Valencia');
INSERT INTO Empresa VALUES ('456789012', 'Transportes García Hermanos', 'Sevilla');
INSERT INTO Empresa VALUES ('567890123', 'Muebles Ruiz & Hijos', 'Zaragoza');
INSERT INTO Empresa VALUES ('678901234', 'Modas Pérez Fashion Group', 'Bilbao');
INSERT INTO Empresa VALUES ('789012345', 'Ingeniería Industrial Rodríguez', 'Málaga');
INSERT INTO Empresa VALUES ('890123456', 'Distribuciones Sánchez S.A.', 'Alicante');
INSERT INTO Empresa VALUES ('901234567', 'Productos Alimenticios Fernández', 'Murcia');
INSERT INTO Empresa VALUES ('012345678', 'Servicios Médicos Martínez', 'Granada');
SELECT * FROM Empresa;

-- INSERTS COMPRAVENTA
SELECT * FROM CompraVenta;
	-- Compras
INSERT INTO CompraVenta VALUES ('2024-01-01', 150.50, 2, 'C', 'AP567342', '123456789');
INSERT INTO CompraVenta VALUES ('2024-01-05', 80.75, 1, 'C', 'AP567343', '234567890');
INSERT INTO CompraVenta VALUES ('2024-01-10', 35.00, 3, 'C', 'AP567344', '345678901');
INSERT INTO CompraVenta VALUES ('2024-01-15', 220.00, 1, 'C', 'AP567345', '456789012');
INSERT INTO CompraVenta VALUES ('2024-01-20', 65.25, 2, 'C', 'AP567346', '567890123');
INSERT INTO CompraVenta VALUES ('2024-01-25', 120.80, 1, 'C', 'BB567342', '678901234');
INSERT INTO CompraVenta VALUES ('2024-02-01', 90.00, 4, 'C', 'BB567343', '789012345');
INSERT INTO CompraVenta VALUES ('2024-02-05', 55.50, 2, 'C', 'BB567344', '890123456');
INSERT INTO CompraVenta VALUES ('2024-02-10', 40.25, 3, 'C', 'BB567345', '901234567');
INSERT INTO CompraVenta VALUES ('2024-02-15', 175.00, 1, 'C', 'BB567346', '012345678');

-- Ventas
INSERT INTO CompraVenta VALUES ('2024-01-02', 180.00, 1, 'V', 'CC567342', '234567890');
INSERT INTO CompraVenta VALUES ('2024-01-06', 95.25, 2, 'V', 'CC567343', '345678901');
INSERT INTO CompraVenta VALUES ('2024-01-11', 45.00, 3, 'V', 'CC567344', '456789012');
INSERT INTO CompraVenta VALUES ('2024-01-16', 250.00, 1, 'V', 'CC567345', '567890123');
INSERT INTO CompraVenta VALUES ('2024-01-21', 80.20, 2, 'V', 'CC567346', '678901234');
INSERT INTO CompraVenta VALUES ('2024-01-26', 135.75, 1, 'V', 'DD567342', '789012345');
INSERT INTO CompraVenta VALUES ('2024-02-02', 110.00, 4, 'V', 'DD567343', '890123456');
INSERT INTO CompraVenta VALUES ('2024-02-06', 65.50, 2, 'V', 'DD567344', '901234567');
INSERT INTO CompraVenta VALUES ('2024-02-11', 50.25, 3, 'V', 'DD567345', '012345678');
INSERT INTO CompraVenta VALUES ('2024-02-16', 200.00, 1, 'V', 'DD567346', '123456789');
INSERT INTO CompraVenta VALUES ('2024-02-21', 210.00, 2, 'C', 'EE567342', '234567890');
INSERT INTO CompraVenta VALUES ('2024-02-22', 95.75, 1, 'C', 'EE567343', '345678901');
INSERT INTO CompraVenta VALUES ('2024-02-23', 45.50, 3, 'C', 'EE567344', '456789012');
INSERT INTO CompraVenta VALUES ('2024-02-24', 280.00, 1, 'C', 'EE567345', '567890123');
INSERT INTO CompraVenta VALUES ('2024-02-25', 75.20, 2, 'C', 'EE567346', '678901234');
INSERT INTO CompraVenta VALUES ('2024-02-26', 130.75, 1, 'C', 'FF567342', '789012345');
INSERT INTO CompraVenta VALUES ('2024-02-27', 120.00, 4, 'C', 'FF567343', '890123456');
INSERT INTO CompraVenta VALUES ('2024-02-28', 75.50, 2, 'C', 'FF567344', '901234567');
INSERT INTO CompraVenta VALUES ('2024-02-29', 60.25, 3, 'C', 'FF567345', '012345678');
INSERT INTO CompraVenta VALUES ('2024-03-01', 190.00, 1, 'C', 'FF567346', '123456789');
INSERT INTO CompraVenta VALUES ('2024-03-02', 220.00, 1, 'V', 'GG567342', '234567890');
INSERT INTO CompraVenta VALUES ('2024-03-03', 105.25, 2, 'V', 'GG567343', '345678901');
INSERT INTO CompraVenta VALUES ('2024-03-04', 55.00, 3, 'V', 'GG567344', '456789012');
INSERT INTO CompraVenta VALUES ('2024-03-05', 320.00, 1, 'V', 'GG567345', '567890123');
INSERT INTO CompraVenta VALUES ('2024-03-06', 90.20, 2, 'V', 'GG567346', '678901234');
INSERT INTO CompraVenta VALUES ('2024-03-07', 150.75, 1, 'V', 'HH567342', '789012345');
INSERT INTO CompraVenta VALUES ('2024-03-08', 130.00, 4, 'V', 'HH567343', '890123456');
INSERT INTO CompraVenta VALUES ('2024-03-09', 85.50, 2, 'V', 'HH567344', '901234567');
INSERT INTO CompraVenta VALUES ('2024-03-10', 70.25, 3, 'V', 'HH567345', '012345678');
INSERT INTO CompraVenta VALUES ('2024-03-11', 220.00, 1, 'V', 'HH567346', '123456789');
INSERT INTO CompraVenta VALUES ('2024-03-12', 180.50, 2, 'C', 'II567343', '234567890');
INSERT INTO CompraVenta VALUES ('2024-03-13', 85.75, 1, 'C', 'II567344', '345678901');
INSERT INTO CompraVenta VALUES ('2024-03-14', 65.50, 3, 'C', 'II567345', '456789012');
INSERT INTO CompraVenta VALUES ('2024-03-15', 300.00, 1, 'C', 'II567346', '567890123');
INSERT INTO CompraVenta VALUES ('2024-03-16', 95.20, 2, 'C', 'AP567342', '678901234');
INSERT INTO CompraVenta VALUES ('2024-03-17', 140.75, 1, 'C', 'AP567343', '789012345');
INSERT INTO CompraVenta VALUES ('2024-03-18', 110.00, 4, 'C', 'AP567344', '890123456');
INSERT INTO CompraVenta VALUES ('2024-03-19', 70.50, 2, 'C', 'AP567345', '901234567');
INSERT INTO CompraVenta VALUES ('2024-03-20', 50.25, 3, 'C', 'AP567346', '012345678');
INSERT INTO CompraVenta VALUES ('2024-03-21', 200.00, 1, 'C', 'BB567342', '123456789');
INSERT INTO CompraVenta VALUES ('2024-03-22', 210.75, 2, 'C', 'BB567343', '234567890');
INSERT INTO CompraVenta VALUES ('2024-03-23', 95.00, 3, 'C', 'BB567344', '345678901');
INSERT INTO CompraVenta VALUES ('2024-03-24', 280.00, 1, 'C', 'BB567345', '456789012');
INSERT INTO CompraVenta VALUES ('2024-03-25', 75.20, 2, 'C', 'BB567346', '567890123');
INSERT INTO CompraVenta VALUES ('2024-03-26', 130.75, 1, 'C', 'CC567342', '678901234');
INSERT INTO CompraVenta VALUES ('2024-03-27', 120.00, 4, 'C', 'CC567343', '789012345');
INSERT INTO CompraVenta VALUES ('2024-03-28', 75.50, 2, 'C', 'CC567344', '890123456');
INSERT INTO CompraVenta VALUES ('2024-03-29', 60.25, 3, 'C', 'CC567345', '901234567');
INSERT INTO CompraVenta VALUES ('2024-03-30', 190.00, 1, 'C', 'CC567346', '012345678');
INSERT INTO CompraVenta VALUES ('2024-04-01', 220.00, 1, 'V', 'DD567342', '123456789');
INSERT INTO CompraVenta VALUES ('2024-04-02', 105.25, 2, 'V', 'DD567343', '234567890');
INSERT INTO CompraVenta VALUES ('2024-04-03', 55.00, 3, 'V', 'DD567344', '345678901');
INSERT INTO CompraVenta VALUES ('2024-04-04', 320.00, 1, 'V', 'DD567345', '456789012');
INSERT INTO CompraVenta VALUES ('2024-04-05', 90.20, 2, 'V', 'DD567346', '567890123');
INSERT INTO CompraVenta VALUES ('2024-04-06', 150.75, 1, 'V', 'EE567342', '678901234');
INSERT INTO CompraVenta VALUES ('2024-04-07', 130.00, 4, 'V', 'EE567343', '789012345');
INSERT INTO CompraVenta VALUES ('2024-04-08', 85.50, 2, 'V', 'EE567344', '890123456');
INSERT INTO CompraVenta VALUES ('2024-04-09', 70.25, 3, 'V', 'EE567345', '901234567');
INSERT INTO CompraVenta VALUES ('2024-04-10', 220.00, 1, 'V', 'EE567346', '012345678');
INSERT INTO CompraVenta VALUES ('2024-04-11', 180.50, 2, 'V', 'FF567342', '123456789');
INSERT INTO CompraVenta VALUES ('2024-04-12', 95.75, 1, 'V', 'FF567343', '234567890');
INSERT INTO CompraVenta VALUES ('2024-04-13', 45.50, 3, 'V', 'FF567344', '345678901');
INSERT INTO CompraVenta VALUES ('2024-04-14', 280.00, 1, 'V', 'FF567345', '456789012');
INSERT INTO CompraVenta VALUES ('2024-04-15', 75.20, 2, 'V', 'FF567346', '567890123');
INSERT INTO CompraVenta VALUES ('2024-04-16', 130.75, 1, 'V', 'GG567342', '678901234');
INSERT INTO CompraVenta VALUES ('2024-04-17', 120.00, 4, 'V', 'GG567343', '789012345');
INSERT INTO CompraVenta VALUES ('2024-04-18', 75.50, 2, 'V', 'GG567344', '890123456');
INSERT INTO CompraVenta VALUES ('2024-04-19', 60.25, 3, 'V', 'GG567345', '901234567');
INSERT INTO CompraVenta VALUES ('2024-04-20', 200.00, 1, 'V', 'GG567346', '012345678');
GO
-- EXERCICI 2:

/*Crea un “Stored procedure” per donar d’alta una empresa. 
Aquest procediment ha de rebre el CIF, nom i població de l’empresa. 
	Cal verificar: Les dades siguin vàlides: 
	No valors NULL i longituds correcte: El CIF de l’empresa no existeixi . */

EXEC inserirEmpresa '112233445', 'Educem','Granollers'
SELECT * FROM Empresa;
GO

CREATE OR ALTER PROCEDURE inserirEmpresa(@cif CHAR(10),@nom VARCHAR(50), @poblacio VARCHAR(50))
	WITH RECOMPILE AS
BEGIN

	DECLARE @existeixCIF BIT
	DECLARE @dadesOk BIT = 1

	IF(LEN(@cif)!=9 OR @cif IS NULL) 
	BEGIN
		PRINT 'El CIF no es correcte'
		SET @dadesOk = 0
	END
	IF(LEN(@nom)=0 OR @nom IS NULL) 
	BEGIN
		PRINT 'L''empresa ha de tenir un nom'
		SET @dadesOk = 0
	END
	IF(LEN(@poblacio)=0 OR @poblacio IS NULL) 
	BEGIN
		PRINT 'No s''ha introduït població'
		SET @dadesOk = 0
	END
	SET @existeixCIF = (SELECT COUNT(*) FROM Empresa WHERE cif = @cif)
	IF (@existeixCIF = 1) 
	BEGIN
		PRINT 'El cif de l''empresa ja existeix'
		SET @dadesOk = 0
	END
	IF(SELECT COUNT(*) FROM Empresa WHERE nom = @nom)=1 
	BEGIN
		PRINT 'El nom de l''empresa ja existeix'
		SET @dadesOk = 0
	END
	IF(@dadesOk=1)
	BEGIN
		INSERT INTO Empresa VALUES (@cif, @nom, @poblacio)
		PRINT 'L''empresa ' + @nom +  ' s''ha inserit correctament'
	END
END
GO

/* EXERCICI 3:
Crea un “Stored procedure” per donar d’alta un producte. 
Aquest procediment ha de rebre el nom del producte i una categoria. 
Cal verificar:  El codi del producte no existeix. 
En cas contrari ha de mostrar un missatge dient que el nom del producte ja ha estat inserta.
 El producte ha de tenir categoria. 
En cas contrari, ha de mostrar un missatge que un producte ha de tenir una categoria. 
El codi del producte l’ha de generar automàticament seguint el patró: PROD0001, PROD0002.  
Has de tenir en compte que possiblement s’eliminin productes. 
Cal veure el número més gran del codi de producte. 
El procediment s’ha de dir, inserirProducte.*/

SELECT * FROM Producte;

EXEC inserirProducte 'Paracaigudes segona mà','Colgaos'
GO

CREATE OR ALTER FUNCTION existeixProducte(@nom VARCHAR(30))
	RETURNS BIT AS
BEGIN
	RETURN (SELECT COUNT(*) FROM Producte WHERE nom = @nom)
END
GO

CREATE OR ALTER FUNCTION generarCodi()
	RETURNS CHAR(8) AS
BEGIN
	DECLARE @codi CHAR(8)
	DECLARE @num INT

	SET @num = (SELECT TOP 1 CONVERT(INT,RIGHT(codi,4))+1 FROM Producte 
					WHERE codi LIKE 'PROD%' 
					ORDER BY codi DESC)
	IF(@num IS NULL) SET @num=1;
	SET @codi = CONCAT('PROD',REPLICATE('0',4-LEN(@num)),@num)
	RETURN @codi
END
GO
SELECT * FROM Producte;

EXEC inserirProducte 'Fanta','Refresc'
GO

CREATE OR ALTER PROCEDURE inserirProducte(@nom VARCHAR(30), @categoria VARCHAR(30))
	WITH RECOMPILE AS
BEGIN
	SET NOCOUNT ON
	DECLARE @dadesOk BIT = 1
	DECLARE @codi CHAR(8)
	
	IF(LEN(@nom)=0 OR @nom IS NULL) 
	BEGIN
		PRINT 'Cal inserir un nom de producte'
		SET @dadesOk = 0
	END
	IF(LEN(@categoria)=0 OR @categoria IS NULL) 
	BEGIN
		PRINT 'Cal inserir un nom de categoria al producte'
		SET @dadesOk = 0
	END
	IF(dbo.existeixProducte(@nom)=1)
	BEGIN
		PRINT 'El producte ja existeix'
		SET @dadesOk = 0
	END
	IF (@dadesOk=1)
	BEGIN
		SET @codi = dbo.generarCodi()
		INSERT INTO Producte VALUES(@codi,@nom,@categoria)
		PRINT 'El producte ' + @nom + ' s''ha inserir correctament'

	END
	
END
GO

CREATE OR ALTER FUNCTION sumarNums(@num1 INT,@num2 INT)
	RETURNS INT AS
BEGIN
	RETURN @num1+@num2
END
GO

SELECT dbo.sumarNums(5,3)

BEGIN
	DECLARE @a INT, @b INT, @suma INT
	SET @a = 10
	SET @b = 15
	SET @suma = dbo.sumarNums(@a,@b)
	PRINT @suma
END
GO

/* EXERCICI 4
Crea un “Stored procedure” per inserir una transacció de compraVenta.  
Cal tenir en compte que tots els paràmetres han de complir: 
	- Tipus de transacció només por permetre C o V. 
	- El preu i unitats ha de ser un valor positiu. 
	- El CIF d’empresa i 
	- codi de producte han d’existir. En cas que algun paràmetre no compleixi amb els requeriments, ha de mostrar un missatge indicant el motiu.       
El procediment s’ha de dir, inserirMovimentCV. */
CREATE OR ALTER FUNCTION existeixEmpresa(@empresaCIF CHAR(9))
    RETURNS bit as 
BEGIN 
    DECLARE @existeix bit
    SET @existeix = (SELECT count(*) FROM empresa WHERE CIF = @empresaCIF)
    RETURN @existeix
END
GO


EXEC inserirMoviment '012345678', 'PROD0014',NULL,20.35,50,'V'
GO
CREATE OR ALTER PROCEDURE inserirMoviment(
	@cifEmpresa CHAR(9), @codiProd CHAR(8),
	@dataCV DATE, @preu MONEY,
	@unitats INT, @tipus CHAR(1))
WITH RECOMPILE AS
BEGIN
	DECLARE @data DATE
    DECLARE @dadesOK BIT = 1

	-- Comprovar que el CIF
    IF (LEN(@cifEmpresa)=0 OR @cifEmpresa IS NULL)
    BEGIN
        PRINT 'Cal indicar el CIF d''empresa'
        SET @dadesOK = 0
    END

	-- Comprovar que el codi
    IF (LEN(@codiProd)=0 OR @codiProd IS NULL)
    BEGIN
        PRINT 'Cal indicar el codi del producte'
        SET @dadesOK = 0
    END

    -- Comprovar que el tipus és C o V
    IF (@tipus NOT IN ('C','V'))
    BEGIN
        PRINT 'El tipus de transacció no és correcte'
        SET @dadesOK = 0
    END

    -- Comprovar que el preu es >0
    IF (@preu < 0)
    BEGIN
        PRINT 'El preu no pot ser negatiu'
        SET @dadesOK = 0
    END

    -- Comprovar que les unitats son >0
    IF (@unitats < 0)
    BEGIN
        PRINT 'Les unitats no poden ser negatives'
        SET @dadesOK = 0
    END

	IF(dbo.existeixEmpresa(@cifEmpresa) =0)
	BEGIN
		PRINT 'L''empresa NO existeix'
		SET @dadesOk = 0
	END
	DECLARE @nom VARCHAR(30) = (SELECT nom FROM Producte WHERE codi=@codiProd)
	IF(dbo.existeixProducte(@nom) = 0)
	BEGIN
		PRINT 'El producte no existeix'
		SET @dadesOk=0
	END

	IF(@dadesOk=1)
	BEGIN
		IF(LEN(@dataCV)=0 OR @dataCV IS NULL) SET @dataCV = CONVERT(DATE,SYSDATETIME()) 
		INSERT INTO CompraVenta VALUES(@dataCV,@preu,@unitats,@tipus,@codiProd,@cifEmpresa)
		PRINT 'La transacció s''ha realizat correctament.'

	END

END
GO

/*** EXERCICI 5 ****/
/*Crea un "stored procedure" que ens mostri per pantalla 
el nom i preu més car de tots els productes d’empresa determinada per l’usuari. */

select * from empresa;

DECLARE @CIFEmpresa CHAR(9) = '012345678'
EXEC preuMesCar @CIFEmpresa 

EXEC preuMesCar '012345678' 
GO

CREATE OR ALTER FUNCTION transaccionsCompraVentaEmpresa(@cif CHAR(9))
	RETURNS INT AS
BEGIN
	RETURN (SELECT COUNT(*) FROM CompraVenta WHERE empresaCIF = @cif)
END
GO


CREATE OR ALTER PROCEDURE preuMesCar(@CIFEmpresa CHAR(9))
	WITH RECOMPILE AS
BEGIN
	SET NOCOUNT ON
	DECLARE @preuMax MONEY
	DECLARE @nomProd VARCHAR(30)

	IF(dbo.existeixEmpresa(@CIFEmpresa)=0) PRINT 'L''empresa no existeix'
	ELSE IF (dbo.transaccionsCompraVentaEmpresa(@CIFEmpresa) =0) PRINT 'L''empresa no té cap transacció'
	ELSE
	BEGIN
		SET @preuMax = (SELECT MAX(preu) FROM CompraVenta WHERE empresaCIF = @CIFEmpresa)
		SET @nomProd = (SELECT P.nom FROM Producte P
							INNER JOIN CompraVenta C ON P.codi = C.producteCodi
							WHERE empresaCIF = @cifEmpresa AND C.preu =@preuMax)
		
		
		PRINT 'El nom del producte més car és: ' + @nomProd
		PRINT 'El preu del producte ' + @nomProd + ' és: ' + CAST(@preuMax AS VARCHAR(10))

	END

END
go



-- EXERCICI 6 *****
/*Crea un "stored procedure" que donat un valor numèric entre 1 i 100, 
incrementi en percentatge el preu de tots els articles d’una categoria i empresa determinades per l’usuari. Cal arrodonir el resultat amb dos decimals.  
*/

EXEC incrementarPreu 'Làctics','Mercadona',8.5
GO

CREATE OR ALTER PROCEDURE incrementarPreu(@categoria VARCHAR(30),@nomEmpresa VARCHAR(30), @increment DECIMAL(5,2))
	WITH RECOMPILE AS
BEGIN

	IF(@increment<0 OR @increment>100) PRINT 'El valor a incrementar no es correcte'
	ELSE
	BEGIN
		UPDATE CompraVenta 
		SET preu = ROUND(preu*@increment/100,2)
		FROM Producte P 
			INNER JOIN CompraVenta C ON P.codi = C.producteCodi
			INNER JOIN Empresa E ON E.cif = C.empresaCIF
		WHERE P.categoria = @categoria AND E.nom = @nomEmpresa
		
		PRINT 'S''ha realitzat ' + CAST(@@rowcount AS VARCHAR(5)) + ' actualitzacions'
	END
END
GO

SELECT * FROM Empresa where poblacio LIKE 'G%';
select @@ROWCOUNT;


-- EXERCICI 7
/*Crea un “Stored procedure” que donat una empresa (CIF) i un producte (CODI), 
mostri la quantitat (unitats) d’aquell producte.*/

SELECT * from producte;
select * from CompraVenta;
EXEC qttProdsDisponiblesEmpresa '234567890','AP567343'
GO
CREATE OR ALTER FUNCTION sumaUnitatsSegonsTipus(@empresaCIF CHAR(9), @producteCodi CHAR(8), @tipus CHAR(1))
    RETURNS INT AS
BEGIN
    RETURN(SELECT ISNULL(SUM(unitats),0) FROM CompraVenta
					WHERE empresaCif = @empresaCif AND producteCodi = @producteCodi AND
                    tipus = @tipus)
END
GO

CREATE OR ALTER FUNCTION existeixProductePerCodi(@codi CHAR(8))
    RETURNS BIT AS
BEGIN
    RETURN (SELECT COUNT(*) FROM Producte WHERE codi = @codi)
END
GO

CREATE OR ALTER PROCEDURE qttProdsDisponiblesEmpresa(@cif CHAR(9), @codi CHAR(8))
	WITH RECOMPILE AS
BEGIN
	SET NOCOUNT ON
	DECLARE @qttCompres INT, @qttVentes INT, @qttProds INT

	IF(dbo.existeixEmpresa(@cif)=0) PRINT 'L''empresa no existeix'
	ELSE IF (dbo.existeixProductePerCodi(@codi)=0) PRINT 'El producte no existeix'
	ELSE
	BEGIN
		SET @qttCompres = dbo.sumaUnitatsSegonsTipus(@cif,@codi,'C')
		SET @qttVentes = dbo.sumaUnitatsSegonsTipus(@cif,@codi,'V')
		
		SET @qttProds = @qttCompres - @qttVentes;
		PRINT 'La quantitat de productes és: ' + CAST(@qttProds AS VARCHAR(8))
	END

END
GO





-- EXERCICI 8
/*Crea un “Stored procedure” per a realitzar una transacció compra i venta  d'un producte entre dues empreses.  Es considerarà com a data de la transacció el moment d'execució del programa. Un exemple de transacció que ha de resoldre el nostre programa és: l'empresa "Danone" 
ha comprat 300 litres de llet a l'empresa "Mercadona" a un valor de 0.15 Euros. */

CREATE OR ALTER FUNCTION estocEmpresa(@empresaCIF CHAR(9), @producteCodi VARCHAR(8))
    RETURNS INT as 
BEGIN 
    RETURN dbo.sumaUnitatsSegonsTipus(@empresaCIF,@producteCodi,'C')-dbo.sumaUnitatsSegonsTipus(@empresaCIF,@producteCodi,'V')
END
GO
SELECT * FROM CompraVenta;

EXEC inserirTransaccioCV '234567890', '123456789','AP567342',1, 5.20

GO

CREATE OR ALTER PROCEDURE inserirTransaccioCV(
	@cifCompra CHAR(9),
	@cifVenta CHAR(9),
	@producteCodi CHAR(8),
	@unitats INT, @preu MONEY)
WITH RECOMPILE AS
BEGIN
	SET NOCOUNT ON
	DECLARE @dadesOk BIT = 1
	DECLARE @estoc INT = dbo.estocEmpresa(@cifVenta,@producteCodi)

	IF(dbo.existeixEmpresa(@cifCompra)=0 OR dbo.existeixEmpresa(@cifVenta)=0) 
	BEGIN
		PRINT 'Alguna de les empresa no existeix'
		SET @dadesOk = 0
	END
	IF(dbo.existeixProductePerCodi(@producteCodi)=0) 
	BEGIN
		PRINT 'El producte no existeix'
		SET @dadesOk = 0
	END
	IF(@preu <0 OR @unitats <=0)
	BEGIN
		PRINT 'Les unitats o el preu no es vàlid. Busca el error! :)'
		SET @dadesOk = 0
	END
	IF(@estoc=0) 
	BEGIN
		PRINT 'L’empresa venedora no té estoc.'
		SET @dadesOk=0
	END
	ELSE IF(@estoc<=@unitats and @dadesOk =1) 
	BEGIN
		SET @unitats = @estoc
		PRINT 'L’empresa  no té estoc suficient. Només s’ha pogut fer la transacció de ' + CAST(@unitats AS VARCHAR(5)) + ' unitats.' 
	END

	IF(@dadesOk=1)
	BEGIN
		INSERT INTO CompraVenta VALUES (CONVERT(DATE,GETDATE()),@preu,@unitats,'C',@producteCodi,@cifCompra)
		INSERT INTO CompraVenta VALUES (CONVERT(DATE,GETDATE()),@preu,@unitats,'V',@producteCodi,@cifVenta)
		PRINT 'S''ha executat la transacció amb èxit'
	END



END
GO
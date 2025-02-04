CREATE DATABASE EJERCICIO3;
USE EJERCICIO3;

-- Ejercicio 1

DROP TABLE Vehicle;
CREATE TABLE  iF NOT EXISTS Vehicle(
		matricula CHAR(7) PRIMARY KEY
);

DROP TABLE ITV;
CREATE TABLE IF NOT EXISTS ITV(
		hora TIME,
        data1 date,
        Preu Decimal(5,2),
        matriculaVehicle char(7),
        Primary key(hora,data1,matriculaVehicle),
        CONSTRAINT fk_Vehicle_ITV FOREIGN KEY(matriculaVehicle) REFERENCES Vehicle(matricula)
		ON UPDATE restrict
        ON DELETE Cascade
);
Alter table ITV Drop constraint fk_Vehicle_ITV;
ALTER TABLE Vehicle DROP PRIMARY KEY;
ALTER TABLE Vehicle ADD COLUMN numBastidor Char(15);
ALTER TABLE Vehicle ADD COLUMN marca Varchar(30);
ALTER TABLE Vehicle ADD COLUMN kilometraje Char(10);
ALTER TABLE Vehicle ADD PRIMARY KEY (numBastidor);
ALTER table ITV ADD COLUMN numBastidorVehicle char(15);
ALTER TABLE ITV DROP PRIMARY KEY;
ALTER TABLE ITV ADD PRIMARY KEY (hora,data1,numBastidorVehicle);
ALTER TABLE ITV DROP COLUMN matriculaVehicle;
ALTER TABLE ITV ADD CONSTRAINT fk_Vehicle_ITV FOREIGN KEY(numBastidorVehicle) REFERENCES Vehicle(numBastidor)
		ON UPDATE restrict
        ON DELETE Cascade;
Describe Vehicle;
Describe ITV;

-- Ejercicio 2

drop table Eines;
CREATE TABLE  iF NOT EXISTS Eines(
		codi CHAR(7) PRIMARY KEY,
        nom varchar(30)
);
Drop table Mecanic;
CREATE TABLE  iF NOT EXISTS Mecanic(
		nif VARCHAR(9) PRIMARY KEY,
        nom varchar(30)
);
drop table Cotxe;
CREATE TABLE  iF NOT EXISTS Cotxe(
		matricula CHAR(7) PRIMARY KEY
);
drop table Repara;
CREATE TABLE  iF NOT EXISTS Repara(
		datap date,
        preu decimal(6,2),
        einesCodi CHAR(7),
        mecanicNif VARCHAR(9),
        cotxeMatricula CHAR(7),
        Primary key(datap,einesCodi,mecanicNif,cotxeMatricula),
        CONSTRAINT fk_Repara_Mecanic FOREIGN KEY(mecanicNif) REFERENCES Mecanic(nif)
		ON UPDATE Cascade
        ON DELETE restrict,
        CONSTRAINT fk_Repara_Cotxe FOREIGN KEY(cotxeMatricula) REFERENCES Cotxe(matricula)
		ON UPDATE Restrict
        ON DELETE restrict,
        CONSTRAINT fk_Repara_Eines FOREIGN KEY(einesCodi) REFERENCES Eines(codi)
		ON UPDATE Cascade
        ON DELETE restrict
);

-- Ejercici 3

Drop table Societat;
CREATE TABLE  iF NOT EXISTS Societat(
		nif CHAR(7) PRIMARY KEY,
        nom varchar(30),
        pressupost decimal(10,2)
);
drop table Persona;
CREATE TABLE  iF NOT EXISTS Persona(
		nif CHAR(9) PRIMARY KEY,
        nom varchar(30)
);
drop table Junta;
CREATE TABLE  iF NOT EXISTS Junta(
		societatNif CHAR(7),
        personaNif CHAR(9),
		Primary key(societatNif,personaNif),
        CONSTRAINT fk_Societat_Junta FOREIGN KEY(societatNif) REFERENCES Societat(nif)
		ON UPDATE cascade
        ON DELETE restrict,
        CONSTRAINT fk_Persona_Junta FOREIGN KEY(personaNif) REFERENCES persona(nif)
		ON UPDATE cascade
        ON DELETE restrict
);
drop table Nomes_Membre;
CREATE TABLE  iF NOT EXISTS Nomes_Membre(
		societatNif CHAR(7),
        personaNif CHAR(9),
		Primary key(societatNif,personaNif),
        CONSTRAINT fk_Societat_Nomes_Membre FOREIGN KEY(societatNif) REFERENCES Societat(nif)
		ON UPDATE cascade
        ON DELETE restrict,
        CONSTRAINT fk_Persona_Nomes_Membre FOREIGN KEY(personaNif) REFERENCES persona(nif)
		ON UPDATE cascade
        ON DELETE restrict
);


alter table Nomes_Membre drop constraint fk_Societat_Nomes_Membre;
alter table Junta drop constraint fk_Societat_Junta;
alter table Junta drop primary key;
alter table Nomes_Membre drop primary key;
alter table Societat drop primary key;
alter table Societat add primary key(nom);
alter table Junta drop column societatNif;
alter table Nomes_Membre drop column societatNif;
alter table Junta add column societatNom varchar(30);
alter table Nomes_Membre add column societatNom varchar(30);
alter table Junta add primary key(societatNom, personaNif);
alter table Nomes_Membre add primary key(societatNom, personaNif);
alter table Nomes_Membre add CONSTRAINT fk_Societat_Nomes_Membre FOREIGN KEY(societatNom) REFERENCES Societat(nom)
		ON UPDATE cascade
        ON DELETE restrict;
alter table Junta add CONSTRAINT fk_Societat_Junta FOREIGN KEY(societatNom) REFERENCES Societat(nom)
		ON UPDATE cascade
        ON DELETE restrict;

drop table Poblacio;
CREATE TABLE  iF NOT EXISTS Poblacio(
		cp CHAR(5) PRIMARY KEY,
        nom varchar(30),
        provincia varchar(30)
);

-- Es 1:N

alter table Persona add column poblacioCP CHAR(5) NOT NULL;
alter table Persona add constraint fk_Poblacio_Persona foreign key(poblacioCP) references Poblacio(cp) 
On update Cascade 
On delete restrict;

-- Ejercicio 4: Ventas
DROP TABLE Producte;
CREATE TABLE IF NOT EXISTS Producte(
	Estoc SMALLINT NOT NULL,
    Lot CHAR(5),
    Codi CHAR(5),
    Nom VARCHAR(20) NOT NULL,
    PRIMARY KEY(Codi,Lot)
);

DROP TABLE Cliente;
CREATE TABLE IF NOT EXISTS Cliente(
	DNI CHAR(9) PRIMARY KEY,
    Nom VARCHAR(20) NOT NULL
);

DROP TABLE COMPRA;
CREATE TABLE IF NOT EXISTS Compra(
	Precio DECIMAL(6,2) NOT NULL,
    Quant SMALLINT NOT NULL,
    DataC DATE NOT NULL,
    ClientDNI CHAR(9),
    ProducteLot CHAR(5),
    ProducteCodi CHAR(5),
    PRIMARY KEY(ClientDNI,ProducteLot,ProducteCodi),
    CONSTRAINT fk_Producte_Compra FOREIGN KEY(ProducteCodi,ProducteLot) REFERENCES Producte(Codi,Lot)
    ON UPDATE CASCADE,
    CONSTRAINT fk_Client_Compra FOREIGN KEY(ClientDNI) REFERENCES Cliente(DNI)
    ON UPDATE CASCADE,
    CONSTRAINT VerifQuant CHECK (Quant BETWEEN 1 AND 100)
);

DESCRIBE Compra;

--
ALTER TABLE Compra DROP CONSTRAINT fk_Producte_Compra;
ALTER TABLE Compra ADD CONSTRAINT fk_Producte_Compra FOREIGN KEY(ProducteCodi,ProducteLot) REFERENCES Producte(Codi,Lot)
    ON UPDATE RESTRICT;
    
-- Ejercicio 5: Series
DROP TABLE CompanyiaTV;
CREATE TABLE IF NOT EXISTS CompanyiaTV(
	Nom VARCHAR(20),
    NIF CHAR(8) PRIMARY KEY
);

DROP TABLE Actor;
CREATE TABLE IF NOT EXISTS Actor(
	Nom VARCHAR(20),
    DNI CHAR(8) PRIMARY KEY
);

DROP TABLE Serie;
CREATE TABLE IF NOT EXISTS Serie(
	Nom VARCHAR(30),
    Edicio SMALLINT,
    PRIMARY KEY (Nom,Edicio)
);	

DROP TABLE Canal;
CREATE TABLE IF NOT EXISTS Canal(
	Nom VARCHAR(20),
    Frecuencia DECIMAL(5,2),
    Pais VARCHAR(40),
    CompanyiaNIF CHAR(8),
    PRIMARY KEY(Nom,Pais,Frecuencia),
    CONSTRAINT fk_Companyia_Canal FOREIGN KEY(CompanyiaNIF) REFERENCES CompanyiaTV(NIF)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

DROP TABLE Emet;
CREATE TABLE IF NOT EXISTS Emet(
	SerieNom VARCHAR(30),
    SerieEdicio SMALLINT,
    CanalPais VARCHAR(40),
    CanalNom VARCHAR(20),
    PRIMARY KEY(SerieNom,SerieEdicio,CanalPais,CanalNom),
    CONSTRAINT fk_Serie_Emet FOREIGN KEY(SerieNom,SerieEdicio) REFERENCES Serie(Nom,Edicio),
    CONSTRAINT fk_Canal_Emet FOREIGN KEY(CanalNom,CanalPais) REFERENCES Canal(Nom,Pais)
    ON UPDATE CASCADE
);

DROP TABLE Actuar;
CREATE TABLE IF NOT EXISTS Actuar(
	Paper VARCHAR(30),
    ActorDNI CHAR(8),
    SerieNom VARCHAR(30),
    SerieEdicio SMALLINT,
    PRIMARY KEY(ActorDNI,SerieNom,SerieEdicio),
    CONSTRAINT fk_Actor_Actuar FOREIGN KEY(ActorDNI) REFERENCES Actor(DNI),
    CONSTRAINT fk_Serie_Actuar FOREIGN KEY(SerieNom,SerieEdicio) REFERENCES Serie(Nom,Edicio)
);


/*Exercici 7: Partio Kart
Crea una base de dades de nom «PatioKart» utilitzant la notació Crow’s Foot. La base
de dades contindrà les taules derivades del següent model ER.
Posa les restriccions de claus foranes que consideris més adients*/
drop table jugadors;
CREATE TABLE IF NOT EXISTS Jugadors(
	nom VARCHAR(30),
    monedes SMALLINT,
    cotxesId char(8),
    PRIMARY KEY (nom),
	constraint fk_Jugadors_cotxes foreign key(cotxesId) references Cotxes(id)
);	
drop table Circuits;
CREATE TABLE IF NOT EXISTS Circuits(
	nom VARCHAR(30),
    longitud varchar(10),
    PRIMARY KEY (nom)
);	
drop table Cotxes;
CREATE TABLE IF NOT EXISTS Cotxes(
	id char(8),
    velocitat char(10),
    acceleracio char(10),
    Forca char(10),
    PRIMARY KEY (id)
);	
drop table corren;
create table if not exists Corren(
	dataHora datetime,
    posicio smallint,
    circuitsNom Varchar(30),
    jugadorNom VARCHAR(30),
    PRIMARY KEY(dataHora,circuitsNom,jugadorNom),
    constraint fk_corren_circuits foreign key(circuitsNom) references Circuits(nom),
    constraint fk_corren_jugadors foreign key(jugadorNom) references Jugadors(nom)
);
drop table inverteixen;
create table if not exists Inverteixen(
	dataHora datetime,
    monedes smallint,
    Velocitat char(10),
    Acceleracio char(10),
    Forca char(10),
    cotxeId char(8),
    jugadorNom VARCHAR(30),
    PRIMARY KEY(dataHora,cotxeId,jugadorNom),
    constraint fk_Inverteixen_Cotxes foreign key(cotxeId) references Cotxes(id),
    constraint fk_Inverteixen_jugadors foreign key(jugadorNom) references Jugadors(nom)
);

/*Exercici 8: Parking
Crea una base de dades de nom «ParkingDB» utilitzant la notació Crow’s Foot. La base
de dades contindrà les taules derivades del següent model ER.*/

CREATE TABLE IF NOT EXISTS Parkings(
	nom VARCHAR(30),
    adreca varchar(30),
    PRIMARY KEY (nom)
);	

CREATE TABLE IF NOT EXISTS Tarifes(
	numero smallint,
    preuMinut decimal(4,2),
    franjaHoraria time,
    PRIMARY KEY (numero)
);	

CREATE TABLE IF NOT EXISTS Apliquen (
    tarifesNumero smallint,
	parkingNom VARCHAR(30),
    PRIMARY KEY (tarifesNumero,parkingNom),
    constraint fk_Apliquen_Tarifes foreign key(tarifesNumero) references Tarifes(numero),
	constraint fk_Apliquen_Parking foreign key(parkingNom) references Parkings(nom)
);	

CREATE TABLE IF NOT EXISTS Places(
	numero smallint,
    parkingNom VARCHAR(30),
    m2 smallint,
    PRIMARY KEY (numero, parkingNom),
    constraint fk_Places_Parkings foreign key(parkingNom) references Parkings(nom)
);	
drop table cotxes;
CREATE TABLE IF NOT EXISTS Cotxes(
	matricula char(9),
    marca VARCHAR(30),
    model varchar(30),
    PRIMARY KEY (matricula)
);	

CREATE TABLE IF NOT EXISTS Aparquen(
	placesNumero smallint,
    placesParkingNom VARCHAR(30),
    cotxesMatricula char(9),
    PRIMARY KEY (placesNumero, placesParkingNom, cotxesMatricula),
    constraint fk_Places_Aparquen foreign key(placesNumero, placesParkingNom) references Places(numero, parkingNom),
    constraint fk_Cotxes_Aparquen foreign key(cotxesMatricula) references Cotxes(matricula)
);	
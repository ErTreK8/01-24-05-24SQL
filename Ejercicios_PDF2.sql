CREATE DATABASE EJERCICIO2;
USE EJERCICIO2;

-- 1:Geografía:
	DROP TABLE Comunitat;
    CREATE TABLE  iF NOT EXISTS Comunitat(
		nom VARCHAR(30) PRIMARY KEY
    );
    DROP TABLE Provincias;
    CREATE TABLE IF NOT EXISTS Provincias(
		nom VARCHAR(20) PRIMARY KEY,
        Comunitatnom VARCHAR(30),
        CONSTRAINT fk_Comunitat_Provincia FOREIGN KEY(Comunitatnom) REFERENCES Comunitat(nom)
		ON UPDATE CASCADE
        ON DELETE SET NULL
    );
    -- --------------------------------------------------------------------------------------------------------------------
    -- 2.Trabajo:
	DROP TABLE Trabajador;
    CREATE TABLE IF NOT EXISTS Trabajador(
		nss CHAR(11) PRIMARY KEY,
        Nom VARCHAR(15)
    );
    
    DROP TABLE Trabajos;
    CREATE TABLE IF NOT EXISTS Trabajos(
		Nombre VARCHAR(20) PRIMARY KEY,
        Descr VARCHAR(100),
        durada TIME,
        DataT DATE,
        Trabajadornss CHAR(11),
        CONSTRAINT fk_Trabajador_Trabajos FOREIGN KEY(Trabajadornss) REFERENCES Trabajador(nss)
			ON UPDATE CASCADE
            ON DELETE RESTRICT
    );
    -- ------------------------------------------------------------------------------------------------------------
    -- 3.Proveedores
    DROP TABLE Proveedores;
    CREATE TABLE IF NOT EXISTS Proveedores(
		Nombre VARCHAR(20),
        NIF CHAR(9) PRIMARY KEY,
        Adreça VARCHAR(20),
        Ciutat VARCHAR(20),
        Telf BIGINT -- este campo esta mal pero el porti no me responde desde hace dias
    );
    
    DROP TABLE Producte;
    CREATE TABLE IF NOT EXISTS Producte(
		Codi CHAR(8) PRIMARY KEY,
        Nom VARCHAR(20),
        PVC INT,
        PVP INT,
        ProveedorNIF CHAR(9),
        CONSTRAINT checkpvpsuperior CHECK(PVP>PVC),
        CONSTRAINT fk_Proveedor_Producto FOREIGN KEY(ProveedorNIF) REFERENCES Proveedores(NIF)
        ON DELETE SET NULL
        ON UPDATE CASCADE
    );
    -- ---------------------------------------------------------------------
    -- 4.Sociedades
    DROP TABLE Societat;
    CREATE TABLE IF NOT EXISTS Societat(
		NIF CHAR(8) PRIMARY KEY,
        Nom VARCHAR(20) NOT NULL,
        Pressupost BOOLEAN
    );
    
    DROP TABLE Persona;
    CREATE TABLE IF NOT EXISTS Persona(
		NIF CHAR(8) PRIMARY KEY,
        Nom VARCHAR(20) NOT NULL
    );
    
    DROP TABLE Nomesmembre;
    CREATE TABLE IF NOT EXISTS Nomesmembre(
		SocietatNIF CHAR(8),
        PersonaNIF CHAR(8),
        PRIMARY KEY(PersonaNIF,SocietatNIF),
        CONSTRAINT fk_societat_Nomesmembre FOREIGN KEY(SocietatNIF) REFERENCES Societat(NIF)
        ON DELETE RESTRICT,
        
        CONSTRAINT fk_Persona_Nomesmembre FOREIGN KEY(PersonaNIF) REFERENCES Persona(NIF)
        ON DELETE RESTRICT
    );
    -- -----------------------------------------------------------------------
    -- 5. Andromina
    DROP TABLE Andromina;
    CREATE TABLE IF NOT EXISTS ANDROMINA(
		Nom VARCHAR(20),
        Serie CHAR(15) Collate 'latin1_general_cs',
        Destruccio DATE,
        Adquisicio DATE NOT NULL,
        PRIMARY KEY(Nom,Serie)
    );
    
    DROP TABLE Personas;
    CREATE TABLE IF NOT EXISTS Personas(
		DNI CHAR(8) PRIMARY KEY,
        Nom VARCHAR(50) NOT NULL
    );
    
    DROP TABLE Destruir;
    CREATE TABLE IF NOT EXISTS Destruir(
		dataD DATE,
        SerieAndromina CHAR(15) Collate 'latin1_general_cs',
        NomAndromina VARCHAR(20),
        DNIPersona CHAR(8),
        PRIMARY KEY (dataD,SerieAndromina,NomAndromina,DNIPersona),
        
        CONSTRAINT fk_Andromina_Destruir FOREIGN KEY (NomAndromina,SerieAndromina) REFERENCES ANDROMINA(Nom,Serie)
        ON UPDATE Restrict -- Si no pone nada pon restrict como es el caso :)
        ON DELETE Restrict,        
        
        CONSTRAINT fk_Persona_Destruir FOREIGN KEY (DNIPersona) REFERENCES Personas(DNI)
        ON UPDATE Restrict
        ON DELETE Restrict
	);
		
    
    
    
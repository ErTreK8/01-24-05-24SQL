CREATE DATABASE IF NOT EXISTS modificacionsDB;
use modificacionsDB;

CREATE TABLE IF NOT EXISTS Article (
	codi char(5),
    nom VARCHAR(40) NOT NULL,
    familia VARCHAR(30),
    PRIMARY KEY (codi)
);

CREATE TABLE IF NOT EXISTS Magatzem (
	codi char(5),
	nom VARCHAR(30) NOT NULL,
    poblacio VARCHAR(40) NOT NULL,
    PRIMARY KEY (codi)
);

CREATE TABLE IF NOT EXISTS Emmagatzema (
	articleCodi char(8),
    magatzemCodi char(8),
    preu decimal(6,2) NOT NULL,
	estoc INT NOT NULL,
    PRIMARY KEY(articleCodi,magatzemCodi),
    CONSTRAINT fk_emmagatzema_article
		foreign key (articleCodi) REFERENCES Article(codi),
	CONSTRAINT fk_emmagatzema_magatzem
		foreign key (magatzemCodi) REFERENCES Magatzem(codi)
);

INSERT INTO Article VALUES ("ART1","Lenovo","Portatils"),
	("ART2","HP","Sobretaula"),
    ("ART3","ACER","Sobretaula");
    
INSERT INTO Magatzem VALUES ("MAG1","GranBCN","Barcelona"),
	("MAG2","BigGra","Granollers"),
    ("MAG3","ParkBCN","Barcelona");
    
INSERT INTO Emmagatzema VALUES("ART1","MAG1",100,30),("ART1","MAG2",200,30),
	("ART2","MAG1",300,40),("ART3","MAG1",50,100);
    
-- Cal modificar el nom de l'article amb codi 'ART1'. S'ha de dir Asus.

UPDATE Article
SET nom = 'Asus'
WHERE codi = 'ART1';

-- Cal incrementar en un 10% el preu dels articles Emmagatzemats amb codi 'ART1' o 'ART2'
-- de Magatzem MAG1.
DESCRIBE Emmagatzema;
SELECT * FROM Emmagatzema;

UPDATE Emmagatzema
SET preu = preu *1.1
WHERE articleCodi IN ('ART1','ART2') AND magatzemCodi = 'MAG1';

-- Cal decrementar 5 unitats d'estoc i multiplicar  per 2 el preu
-- d'aquells articles emmagatzemants amb codi ART3.
UPDATE Emmagatzema
SET estoc =estoc - 5, preu=preu*2
WHERE articleCodi = 'ART3';

-- Cal modificar el codi de l'article 'ART1' a 'ART15'

SELECT * FROM Emmagatzema;
SELECT * FROM Article;

UPDATE Article
SET codi ='ART15'
WHERE codi = 'ART1';

-- Cal incrementar en 10 unitats l'estoc  d'aquells articles emmagatzemats
-- de la familia 'Portatils'

select * from article;
UPDATE Article A
    INNER JOIN Emmagatzema E ON A.codi = E.articleCodi
SET E.estoc = E.estoc+10
WHERE A.familia = 'Portatils';

ALTER TABLE Emmagatzema DROP FOREIGN KEY fk_emmagatzema_article;
ALTER TABLE Emmagatzema ADD CONSTRAINT fk_emmagatzema_article
        foreign key (articleCodi) REFERENCES Article(codi)
        ON UPDATE CASCADE;

-- Volem eliminar tots els articles emmatgatzemats amb codi 'ART3';
SELECT * FROM Emmagatzema;

DELETE  FROM Emmagatzema
WHERE articleCodi = 'ART3';

-- Eliminar l'article ART2:
SELECT * FROM Article;

DELETE FROM Article WHERE codi = 'ART3';


-- Cal eliminar aquells registres de la taula Emmagatzema
-- que el nom de l'article comença per A i que tenen l'estoc superior 1

DELETE E.* FROM Emmagatzema E
    INNER JOIN Article A ON A.codi =E.articleCodi
WHERE A.nom LIKE 'A%' AND E.estoc > 1;

SELECT * FROM Magatzem;

DELETE FROM Magatzem;
TRUNCATE TABLE Magatzem;

SET AUTOCOMMIT = 0;

SET AUTOCOMMIT = 1;


select * from emmagatzema;
delete from emmagatzema;
rollback;
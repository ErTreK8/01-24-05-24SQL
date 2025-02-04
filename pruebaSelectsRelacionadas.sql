use superheroisdb;

select * from heroi;
select * from planeta;


select heroi.nom as 'Nom Heroi', planetaNom as 'Nom Planeta', planeta.llunes as 'Llunes planeta'  from Heroi
	inner join Planeta on planeta.nom = planetaNom; 
    
-- Cal mostrar el nom dels herois que ténen força superior a 10
-- i el seu planeta té més de 3 llunes amb una massa superior 20.

select h.nom as 'Nom Heroi', planetaNom as 'Nom Planeta', p.llunes as 'Llunes planeta'  from Heroi h
	inner join Planeta p on p.nom = planetaNom
    where h.forca > 10 and p.llunes >3 and p.massaa>20;
    
-- Mostra de cada nom de planeta, les llunes i el nom del superHeroi 
-- amb la seva força associada.

select h.nom as 'Nom Heroi', h.forca as Força, planetaNom as 'Nom Planeta', p.llunes as 'Llunes planeta'  from Heroi h
	inner join Planeta p on p.nom = planetaNom;

-- Mostra de cada planeta cuants herois te  No volem tenir en compte el planeta krypton

select count(h.nom) as 'Numero Herois', planetaNom as 'Nom Planeta' from Heroi h
	inner join Planeta p on p.nom = planetaNom
    where p.llunes=4
    group by p.nom;


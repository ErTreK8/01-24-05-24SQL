use pdf7;
INSERT INTO UF VALUES ('M01UF1', 'Instal·lació, configuració i explotació del sistema informàtic','60','135','Maig');
INSERT INTO UF VALUES ('M01UF2', 'Gestió de la informació i de recursos en una xarxa','80','180','Octubre');
INSERT INTO UF VALUES ('M01UF3', 'Implantació de programari específic','25','56.25','Gener');
INSERT INTO UF VALUES ('M01UF4', 'Seguretat, rendiment i recursos','33','74.25','Abril');
INSERT INTO UF VALUES ('M02UF1', 'Introducció a les bases de dades','33','74.25','Març');
INSERT INTO UF VALUES ('M02UF2', 'Llenguatges SQL','66','148.5','Octubre');
INSERT INTO UF VALUES ('M02UF3', 'Assegurament de la informació','33','74.25','Febrer');
INSERT INTO UF VALUES ('M03UF1', 'Programació estructurada','68','153','Maig');
INSERT INTO UF VALUES ('M03UF2', 'Disseny modular','40','90','Desembre');
INSERT INTO UF VALUES ('M03UF3', 'Fonaments de gestió de fitxers','24','54','Novembre');
INSERT INTO UF VALUES ('M04UF1', 'Programació amb XML','45','101.25','Maig');
INSERT INTO UF VALUES ('M04UF2', 'Àmbits d’aplicació de l’XML','27','60.75','Octubre');
INSERT INTO UF VALUES ('M04UF3', 'Sistemes de gestió empresarial','27','60.75','Març');
INSERT INTO UF VALUES ('M05UF1', 'Arquitectura de sistemes','22','49.5','Desembre');
INSERT INTO UF VALUES ('M05UF2', 'Instal·lació, configuració i recuperació de programari','22','49.5','Març');
INSERT INTO UF VALUES ('M05UF3', 'Implantació i manteniment de CPD','22','49.5','Abril');
INSERT INTO UF VALUES ('M06UF1', 'Administració avançada de sistemes operatius','70','157.5','Maig');
INSERT INTO UF VALUES ('M06UF2', 'Automatització de tasques i llenguatges de guions','29','65.25','Novembre');
INSERT INTO UF VALUES ('M07UF1', 'Introducció a les xarxes','44','99','Febrer');
INSERT INTO UF VALUES ('M07UF2', 'Administració de dispositius de xarxa','44','99','Febrer');
INSERT INTO UF VALUES ('M07UF3', 'Administració avançada de xarxes','44','99','Maig');
INSERT INTO UF VALUES ('M08UF1', 'Serveis de noms i configuració automàtica','25','56.25','Desembre');
INSERT INTO UF VALUES ('M08UF2', 'Serveis Web i de transferència de fitxers','25','56.25','Gener');
INSERT INTO UF VALUES ('M08UF3', 'Correu electrònic i missatgeria','25','56.25','Desembre');
INSERT INTO UF VALUES ('M08UF4', 'Serveis d’àudio I vídeo','24','54','Maig');
INSERT INTO UF VALUES ('M09UF1', 'Llenguatges de guions de servidor','33','74.25','Gener');
INSERT INTO UF VALUES ('M09UF2', 'Implantació de gestors de continguts','33','74.25','Desembre');
INSERT INTO UF VALUES ('M10UF1', 'Llenguatges SQL: DCL i extensió procedimental','66','148.5','Maig');
INSERT INTO UF VALUES ('M10UF2', 'Instal·lació i ajustament de SGBD corporatiu','33','74.25','Abril');
INSERT INTO UF VALUES ('M11UF1', 'Seguretat física, lògica i legislació','24','54','Desembre');
INSERT INTO UF VALUES ('M11UF2', 'Seguretat activa i accés remot','24','54','Setembre');
INSERT INTO UF VALUES ('M11UF3', 'Tallafocs i servidors intermediaris','27','60.75','Octubre');
INSERT INTO UF VALUES ('M11UF4', 'Alta disponibilitat','24','54','Novembre');
INSERT INTO UF VALUES ('M12UF1', 'Incorporació al treball','66','148.5','Febrer');
INSERT INTO UF VALUES ('M12UF2', 'Prevenció de riscos laborals','33','74.25','Setembre');
INSERT INTO UF VALUES ('M13UF1', 'Empresa i iniciativa emprenedora','66','148.5','Maig');
INSERT INTO UF VALUES ('M14UF1', 'Projecte d’Administració de Sistemes Informàtics en Xarxa','99','222.75','Desembre');
INSERT INTO UF VALUES ('M15UF1', 'FCT','317','713.25','Maig');
INSERT INTO UF VALUES ('M16UF1', 'Ciberseguretat i ciberinteligencia','33','74.25','Novembre');
INSERT INTO UF VALUES ('M16UF2', 'Hacking ètic','66','148.5','Octubre');
INSERT INTO UF VALUES ('M17UF1', 'Seguretat en dispositius mòbils i IoT','33','74.25','Febrer');
INSERT INTO UF VALUES ('M17UF2', 'Seguretat en serveis','33','74.25','Desembre');
INSERT INTO UF VALUES ('M17UF3', 'Seguretat en aplicacions web','33','74.25','Setembre');
INSERT INTO UF VALUES ('M17UF4', 'Seguretat en xarxes','33','74.25','Febrer');


SELECT * FROM UF;

-- ------------------------------------------------------------------------------------------------------------

INSERT INTO Alumnes VALUES ('04946707Z', 'Mònica','Comas','Puigreig','2001-10-12');
INSERT INTO Alumnes VALUES ('72436194V', 'Anna','González','Mollet',NULL);
INSERT INTO Alumnes VALUES ('47311759K', 'Júlia','Porti','Les Franqueses del Vallès',NULL);
INSERT INTO Alumnes VALUES ('58297534X', 'Marc','Vilar','Mollet','2002-09-27');
INSERT INTO Alumnes VALUES ('55956652M', 'Dani','Montané','Sant Celoni','2002-12-17');
INSERT INTO Alumnes VALUES ('25211866P', 'Sílvia','Garrido','Hospitalet del Llobregat','2001-04-29');
INSERT INTO Alumnes VALUES ('57719265Q', 'Mònica','Molas','La Garriga','2001-06-06');
INSERT INTO Alumnes VALUES ('76417367G', 'Marta','Casas','Badalona',NULL);
INSERT INTO Alumnes VALUES ('96686114V', 'Fran','Molas','Barcelona','2001-07-09');
INSERT INTO Alumnes VALUES ('25252729Z', 'Anna','Ramisa','Sant Celoni','2000-08-23');
INSERT INTO Alumnes VALUES ('60171304N', 'Cristina','Ramos','Hospitalet del Llobregat','2000-06-27');
INSERT INTO Alumnes VALUES ('06143670S', 'Jordi','Porti','Manresa',NULL);
INSERT INTO Alumnes VALUES ('58105288Q', 'Mònica','Reyes','Badalona','2002-02-09');
INSERT INTO Alumnes VALUES ('21980782O', 'Montse','García','Sabadell','2001-12-20');
INSERT INTO Alumnes VALUES ('17374052R', 'Dani','Iglesias','Vic','2002-10-10');
INSERT INTO Alumnes VALUES ('45020885H', 'Marta','Bonilla','Hospitalet del Llobregat','2002-05-06');
INSERT INTO Alumnes VALUES ('35198233S', 'Montse','Porti','Hospitalet del Llobregat','2002-02-20');
INSERT INTO Alumnes VALUES ('75209249V', 'Paula','Porti','Folgueroles',NULL);
INSERT INTO Alumnes VALUES ('87581534H', 'Iván','Porti','La Garriga',NULL);
INSERT INTO Alumnes VALUES ('79403474Q', 'Irene','Vilar','Aiguafreda','2002-02-05');
INSERT INTO Alumnes VALUES ('28384830P', 'Anna','Sánchez','Mollet','2002-09-09');
INSERT INTO Alumnes VALUES ('15681953I', 'Júlia','Ramisa','Les Franqueses del Vallès','2000-04-11');
INSERT INTO Alumnes VALUES ('28352617W', 'Maria','Porti','Canovelles','2001-01-25');
INSERT INTO Alumnes VALUES ('26961377S', 'Marta','García','Arenys de Mar','2001-09-23');
INSERT INTO Alumnes VALUES ('20495382C', 'Sílvia','Jiménez','Sant Celoni','2001-12-18');
INSERT INTO Alumnes VALUES ('12382267F', 'Júlia','Vilar','Vic','2002-06-08');
INSERT INTO Alumnes VALUES ('45186770W', 'Paula','Mayoral','Barcelona','2000-10-17');
INSERT INTO Alumnes VALUES ('78561404Z', 'Marc','Molas','Centelles',NULL);
INSERT INTO Alumnes VALUES ('83043582G', 'Jordi','Reyes','Aiguafreda','2000-04-14');
INSERT INTO Alumnes VALUES ('21141678X', 'Paula','Comas','Sant Celoni','2001-05-21');
INSERT INTO Alumnes VALUES ('88112890W', 'Sílvia','Ramisa','Mollet','2001-09-14');
INSERT INTO Alumnes VALUES ('91798153T', 'Maria','Reyes','Tona','2000-11-21');
INSERT INTO Alumnes VALUES ('19999428T', 'Jordi','Iglesias','Hospitalet del Llobregat','2002-04-24');
INSERT INTO Alumnes VALUES ('30133185S', 'Irene','Sánchez','Badalona',NULL);
INSERT INTO Alumnes VALUES ('66289578Q', 'Sílvia','Mayoral','Arenys de Mar','2001-12-08');
INSERT INTO Alumnes VALUES ('19028548R', 'Cristina','Montané','Barcelona','2000-07-09');
INSERT INTO Alumnes VALUES ('86777106M', 'Cristina','Santos','Torelló',NULL);
INSERT INTO Alumnes VALUES ('14890315S', 'Montse','Ramos','La Roca del Vallès','2001-09-19');
INSERT INTO Alumnes VALUES ('71918754L', 'Dani','Montané','Terrassa','2000-12-29');
INSERT INTO Alumnes VALUES ('78270316X', 'Joan','Ramos','Folgueroles','2002-08-19');
INSERT INTO Alumnes VALUES ('90977554X', 'Montse','Porti','Montcada',NULL);
INSERT INTO Alumnes VALUES ('30895042M', 'Pau','Molas','Folgueroles','2002-12-11');
INSERT INTO Alumnes VALUES ('85345453M', 'Júlia','Jiménez','Manresa','2002-02-04');
INSERT INTO Alumnes VALUES ('32325180F', 'Martí','Montané','Moià','2002-11-24');
INSERT INTO Alumnes VALUES ('21901106T', 'Iván','Porti','Hospitalet del Llobregat','2001-08-18');
INSERT INTO Alumnes VALUES ('90828970L', 'Josep','García','Tona','2001-02-28');
INSERT INTO Alumnes VALUES ('29060769M', 'Iván','Iglesias','Terrassa','2002-01-07');
INSERT INTO Alumnes VALUES ('46268968Q', 'Irene','Comas','Tona','2002-03-29');
INSERT INTO Alumnes VALUES ('58640586J', 'Montse','Grifé','Aiguafreda','2001-01-18');
INSERT INTO Alumnes VALUES ('71080218W', 'Cristina','Jiménez','La Roca del Vallès','2001-07-26');
INSERT INTO Alumnes VALUES ('93924319P', 'Laura','Torra','Sabadell','2001-07-19');
INSERT INTO Alumnes VALUES ('96893770V', 'Fran','Ramos','Barcelona','2001-01-31');
INSERT INTO Alumnes VALUES ('14973921K', 'Guillem','Porti','Canovelles','2000-09-02');
INSERT INTO Alumnes VALUES ('85715234K', 'David','Casas','Manresa','2001-02-28');
INSERT INTO Alumnes VALUES ('99725651R', 'Josep','Mayoral','Manresa','2000-06-17');
INSERT INTO Alumnes VALUES ('99917960E', 'Sergi','Torra','Moià','2002-08-02');
INSERT INTO Alumnes VALUES ('28940007N', 'Iván','Reyes','Manresa','2000-04-10');
INSERT INTO Alumnes VALUES ('59447011C', 'Marc','Torra','Manresa',NULL);
INSERT INTO Alumnes VALUES ('83507953R', 'Irene','Arbós','Arenys de Mar','2002-07-28');
INSERT INTO Alumnes VALUES ('57101662R', 'David','González','Barcelona','2001-03-08');
INSERT INTO Alumnes VALUES ('95512294G', 'Dani','Reyes','Puigreig','2002-03-31');
INSERT INTO Alumnes VALUES ('48480703M', 'Júlia','Vilar','Tona','2001-12-27');
INSERT INTO Alumnes VALUES ('16081393F', 'Paula','Puiggrós','Arenys de Mar','2001-09-29');
INSERT INTO Alumnes VALUES ('03441100Z', 'Júlia','Garrido','Terrassa','2001-10-24');
INSERT INTO Alumnes VALUES ('86767599X', 'Anna','Jiménez','Hospitalet del Llobregat','2002-12-20');
INSERT INTO Alumnes VALUES ('78570513U', 'Martí','Bonilla','Sant Cugat del Vallès',NULL);
INSERT INTO Alumnes VALUES ('37575162R', 'Marta','Iglesias','Centelles','2002-06-17');
INSERT INTO Alumnes VALUES ('91475923O', 'Susanna','Mayoral','Folgueroles','2000-08-20');
INSERT INTO Alumnes VALUES ('60083949Y', 'David','García','La Roca del Vallès','2002-07-01');
INSERT INTO Alumnes VALUES ('00168376O', 'Montse','Montané','Torelló','2002-10-18');
INSERT INTO Alumnes VALUES ('21425228V', 'Jordi','Montané','Sant Cugat del Vallès',NULL);
INSERT INTO Alumnes VALUES ('73445158K', 'Joan','Comas','Terrassa','2002-04-14');
INSERT INTO Alumnes VALUES ('80502986Y', 'Jordi','Santos','Vic','2002-11-14');
INSERT INTO Alumnes VALUES ('27840066O', 'Irene','Grifé','Badalona','2002-02-20');
INSERT INTO Alumnes VALUES ('26773170V', 'Fran','Jiménez','Canovelles','2000-08-29');
INSERT INTO Alumnes VALUES ('38047034G', 'Iván','Casas','Barcelona','2002-01-28');
INSERT INTO Alumnes VALUES ('01298276I', 'Josep','Ramos','Badalona',NULL);
INSERT INTO Alumnes VALUES ('93087290X', 'Fran','Vilar','Hospitalet del Llobregat','2001-08-15');
INSERT INTO Alumnes VALUES ('14729509V', 'Anna','Santos','Montcada','2000-04-10');
INSERT INTO Alumnes VALUES ('27665456D', 'Laura','Casas','Sant Celoni',NULL);
INSERT INTO Alumnes VALUES ('16552637B', 'David','González','Canovelles',NULL);
INSERT INTO Alumnes VALUES ('32409242D', 'Dani','Bonilla','Folgueroles',NULL);
INSERT INTO Alumnes VALUES ('70846928X', 'Joan','Garrido','Puigreig',NULL);
INSERT INTO Alumnes VALUES ('48475787G', 'Joan','Casas','Barcelona','2002-01-11');
INSERT INTO Alumnes VALUES ('18706988Y', 'Laura','Puiggrós','Les Franqueses del Vallès','2002-05-06');
INSERT INTO Alumnes VALUES ('00618599D', 'Iván','González','Les Franqueses del Vallès',NULL);
INSERT INTO Alumnes VALUES ('09129406W', 'Joan','Mayoral','Centelles',NULL);
INSERT INTO Alumnes VALUES ('98247845Y', 'Cristina','Mayoral','Tona','2002-11-15');
INSERT INTO Alumnes VALUES ('84068275G', 'Guillem','García','Sant Cugat del Vallès','2001-07-27');
INSERT INTO Alumnes VALUES ('98380773R', 'Maria','Bonilla','Arenys de Mar','2000-11-25');
INSERT INTO Alumnes VALUES ('61860746S', 'Sergi','Montané','Barcelona','2000-07-26');
INSERT INTO Alumnes VALUES ('48628769O', 'Júlia','Mayoral','Vic','2002-04-07');
INSERT INTO Alumnes VALUES ('83809659M', 'Cristina','Torra','Barcelona',NULL);
INSERT INTO Alumnes VALUES ('82172765F', 'Irene','García','Manresa',NULL);
INSERT INTO Alumnes VALUES ('33025948H', 'Joan','Molas','Aiguafreda',NULL);
INSERT INTO Alumnes VALUES ('62548495V', 'Iván','Porti','Tona','2002-02-14');
INSERT INTO Alumnes VALUES ('61029485X', 'Marta','Santos','Aiguafreda','2002-04-01');
INSERT INTO Alumnes VALUES ('84559960L', 'Sílvia','Garrido','Torelló',NULL);
INSERT INTO Alumnes VALUES ('23339660Z', 'Jordi','Reyes','Canovelles','2001-10-30');
INSERT INTO Alumnes VALUES ('90922754B', 'Marta','Arbós','Torelló','2001-12-16');
INSERT INTO Alumnes VALUES ('40445483L', 'Guillem','Santos','Les Franqueses del Vallès','2001-06-08');
INSERT INTO Alumnes VALUES ('48459154W', 'Maria','Bonilla','Sant Celoni','2000-11-22');
INSERT INTO Alumnes VALUES ('23630634Y', 'Anna','Montané','Aiguafreda','2002-11-25');
INSERT INTO Alumnes VALUES ('73598480Q', 'Fran','Arbós','Puigreig',NULL);
INSERT INTO Alumnes VALUES ('23615783U', 'Mònica','González','Badalona',NULL);
INSERT INTO Alumnes VALUES ('53092196V', 'Maria','Jiménez','Torelló',NULL);
INSERT INTO Alumnes VALUES ('85977390N', 'Sílvia','Iglesias','Sabadell',NULL);
INSERT INTO Alumnes VALUES ('02675779P', 'Montse','Casas','Granollers',NULL);
INSERT INTO Alumnes VALUES ('03684258D', 'Dani','Casas','La Roca del Vallès','2002-04-13');
INSERT INTO Alumnes VALUES ('66027983K', 'Cristina','Porti','Tona',NULL);
INSERT INTO Alumnes VALUES ('04322568U', 'Marta','Vilar','La Roca del Vallès','2002-02-04');
INSERT INTO Alumnes VALUES ('02186705C', 'Marta','Casas','Granollers','2000-06-08');
INSERT INTO Alumnes VALUES ('59574382A', 'Laura','Comas','Terrassa','2000-08-20');
INSERT INTO Alumnes VALUES ('26301268V', 'Laura','Vilar','Vic','2001-06-23');
INSERT INTO Alumnes VALUES ('01545380L', 'Marc','Isern','Moià','2001-05-12');
INSERT INTO Alumnes VALUES ('17574112R', 'David','Molas','Barcelona',NULL);
INSERT INTO Alumnes VALUES ('52444045N', 'Sergi','Grifé','La Roca del Vallès',NULL);
INSERT INTO Alumnes VALUES ('30546684U', 'Paula','Mayoral','Barcelona','2000-11-10');
INSERT INTO Alumnes VALUES ('77560117R', 'Paula','Iglesias','Hospitalet del Llobregat','2002-07-01');
INSERT INTO Alumnes VALUES ('40334019N', 'Júlia','Casas','Canovelles','2000-04-23');
INSERT INTO Alumnes VALUES ('65782238V', 'Sílvia','Ramos','Tona',NULL);
INSERT INTO Alumnes VALUES ('46132595M', 'Joan','Vilar','Tona','2002-08-06');
INSERT INTO Alumnes VALUES ('06748403R', 'Pau','Grifé','Vic','2002-11-20');
INSERT INTO Alumnes VALUES ('05097132K', 'Joan','Iglesias','Manresa',NULL);
INSERT INTO Alumnes VALUES ('97209337W', 'Sílvia','Sánchez','Montcada','2002-04-06');
INSERT INTO Alumnes VALUES ('20055974Z', 'Irene','Ramos','Tona',NULL);
INSERT INTO Alumnes VALUES ('70637394N', 'Paula','Iglesias','Sant Celoni','2002-11-11');
INSERT INTO Alumnes VALUES ('84911214I', 'Dani','Jiménez','Centelles',NULL);
INSERT INTO Alumnes VALUES ('58027220P', 'Anna','Ramos','La Roca del Vallès','2000-09-18');
INSERT INTO Alumnes VALUES ('80945845D', 'Marta','García','Hospitalet del Llobregat','2001-06-14');
INSERT INTO Alumnes VALUES ('94133406Y', 'Sílvia','Santos','Arenys de Mar',NULL);
INSERT INTO Alumnes VALUES ('64426373X', 'Anna','Santos','Les Franqueses del Vallès',NULL);
INSERT INTO Alumnes VALUES ('68182545S', 'Maria','Sánchez','Les Franqueses del Vallès','2000-07-19');
INSERT INTO Alumnes VALUES ('89986499N', 'Mònica','Sánchez','Arenys de Mar','2002-01-19');
INSERT INTO Alumnes VALUES ('89975870G', 'David','Torra','Vic',NULL);
INSERT INTO Alumnes VALUES ('95523344M', 'Paula','Montané','Les Franqueses del Vallès','2001-04-13');
INSERT INTO Alumnes VALUES ('56888689C', 'Jordi','Comas','Torelló','2001-03-28');
INSERT INTO Alumnes VALUES ('54498473K', 'Iván','Torra','Hospitalet del Llobregat',NULL);
INSERT INTO Alumnes VALUES ('07427982O', 'Josep','Ramisa','Mollet','2000-04-25');
INSERT INTO Alumnes VALUES ('18434863K', 'Anna','Mayoral','Hospitalet del Llobregat','2002-03-01');
INSERT INTO Alumnes VALUES ('87831312R', 'Fran','Sánchez','Vic','2002-06-15');
INSERT INTO Alumnes VALUES ('14874622R', 'Laura','Montané','La Garriga','2001-12-23');
INSERT INTO Alumnes VALUES ('72360291M', 'Anna','Grifé','Aiguafreda','2001-11-27');
INSERT INTO Alumnes VALUES ('94919926W', 'Sergi','Ramisa','Centelles','2000-12-24');
INSERT INTO Alumnes VALUES ('61205717Z', 'Cristina','Vilar','Manresa','2002-01-21');
INSERT INTO Alumnes VALUES ('23310177B', 'Júlia','Molas','Sant Cugat del Vallès','2000-08-13');
INSERT INTO Alumnes VALUES ('79238684V', 'Pau','Grifé','Sabadell','2000-05-12');
INSERT INTO Alumnes VALUES ('18500527I', 'Marta','Sánchez','Centelles','2001-11-08');
INSERT INTO Alumnes VALUES ('96285966P', 'Iván','Jiménez','Sant Cugat del Vallès','2000-12-21');
INSERT INTO Alumnes VALUES ('25335043T', 'Susanna','Sánchez','La Roca del Vallès',NULL);
INSERT INTO Alumnes VALUES ('61928276C', 'Martí','González','Canovelles',NULL);
INSERT INTO Alumnes VALUES ('18520245B', 'Júlia','Puiggrós','Barcelona','2001-07-03');
INSERT INTO Alumnes VALUES ('02413726S', 'Cristina','Puiggrós','Torelló','2001-03-04');
INSERT INTO Alumnes VALUES ('12227991E', 'Paula','Mayoral','Moià','2002-03-23');
INSERT INTO Alumnes VALUES ('02163181R', 'Cristina','García','Granollers','2002-08-26');
INSERT INTO Alumnes VALUES ('79482525C', 'Joan','Porti','Montcada','2001-01-17');
INSERT INTO Alumnes VALUES ('60662291G', 'Sergi','García','Montcada',NULL);
INSERT INTO Alumnes VALUES ('06266495T', 'Jordi','Puiggrós','Sant Cugat del Vallès',NULL);
INSERT INTO Alumnes VALUES ('71502238L', 'Susanna','Jiménez','La Garriga','2000-11-29');
INSERT INTO Alumnes VALUES ('53738277C', 'Joan','Casas','Sant Cugat del Vallès','2000-09-12');
INSERT INTO Alumnes VALUES ('69692946K', 'Iván','Santos','Manresa','2001-07-06');
INSERT INTO Alumnes VALUES ('83970992N', 'Maria','Vilar','Moià','2000-12-08');
INSERT INTO Alumnes VALUES ('32179675N', 'Laura','Bonilla','Hospitalet del Llobregat',NULL);
INSERT INTO Alumnes VALUES ('12598697B', 'Paula','Ramos','Montcada','2000-07-25');
INSERT INTO Alumnes VALUES ('47898185G', 'Mònica','Mayoral','Barcelona','2002-11-25');
INSERT INTO Alumnes VALUES ('21872266M', 'Marta','Ferreiro','Vic',NULL);
INSERT INTO Alumnes VALUES ('02717158T', 'David','Porti','Moià','2002-09-15');
INSERT INTO Alumnes VALUES ('85262935N', 'Montse','Ramos','Les Franqueses del Vallès',NULL);
INSERT INTO Alumnes VALUES ('07972858E', 'Pau','Isern','Torelló',NULL);
INSERT INTO Alumnes VALUES ('08479158V', 'Cristina','Vilar','Folgueroles','2002-12-24');
INSERT INTO Alumnes VALUES ('03812417Z', 'Josep','González','Montcada',NULL);
INSERT INTO Alumnes VALUES ('57278590J', 'Sergi','Sánchez','Barcelona',NULL);
INSERT INTO Alumnes VALUES ('14456104Z', 'Mònica','Ramisa','Sabadell',NULL);
INSERT INTO Alumnes VALUES ('91448108A', 'Maria','Ramisa','Aiguafreda','2000-10-04');
INSERT INTO Alumnes VALUES ('32043890Q', 'Montse','Ferreiro','Badalona',NULL);
INSERT INTO Alumnes VALUES ('79610033F', 'Fran','Casas','La Roca del Vallès','2002-06-12');
INSERT INTO Alumnes VALUES ('40252302U', 'Maria','Comas','Tona','2001-10-17');
INSERT INTO Alumnes VALUES ('51326798D', 'Montse','Vilar','Torelló','2002-04-12');
INSERT INTO Alumnes VALUES ('66400111J', 'Laura','García','Arenys de Mar','2000-09-01');
INSERT INTO Alumnes VALUES ('16678940I', 'Marc','Montané','Puigreig','2001-10-14');
INSERT INTO Alumnes VALUES ('29471766M', 'Sílvia','García','Manresa',NULL);
INSERT INTO Alumnes VALUES ('72326455U', 'Susanna','Grifé','Aiguafreda','2001-12-08');
INSERT INTO Alumnes VALUES ('93749175F', 'Sílvia','Garrido','Vic','2001-06-11');
INSERT INTO Alumnes VALUES ('52946670F', 'Martí','González','Les Franqueses del Vallès',NULL);
INSERT INTO Alumnes VALUES ('54807113S', 'Fran','Montané','Arenys de Mar','2000-11-30');
INSERT INTO Alumnes VALUES ('65636627J', 'Dani','Ramisa','Puigreig','2002-06-20');
INSERT INTO Alumnes VALUES ('67888657D', 'Joan','Vilar','Sant Celoni','2002-02-11');
INSERT INTO Alumnes VALUES ('38632391S', 'Laura','Ferreiro','Torelló','2000-10-08');
INSERT INTO Alumnes VALUES ('86740867K', 'Cristina','Isern','Montcada','2000-08-20');
INSERT INTO Alumnes VALUES ('50427703P', 'Anna','Iglesias','Terrassa','2001-03-27');
INSERT INTO Alumnes VALUES ('03101077Q', 'Irene','Sánchez','Granollers','2000-11-30');
INSERT INTO Alumnes VALUES ('41605936I', 'Mònica','Santos','Arenys de Mar','2002-10-22');
INSERT INTO Alumnes VALUES ('14533996K', 'Júlia','Comas','Folgueroles','2002-04-10');
INSERT INTO Alumnes VALUES ('10370274L', 'Anna','Mayoral','Terrassa','2002-08-15');
INSERT INTO Alumnes VALUES ('75492711L', 'Susanna','Sánchez','Vic',NULL);
INSERT INTO Alumnes VALUES ('90155362U', 'Sílvia','Iglesias','Sabadell','2001-12-05');
INSERT INTO Alumnes VALUES ('56249317M', 'Júlia','Jiménez','Manresa','2000-08-31');
INSERT INTO Alumnes VALUES ('44735921Y', 'Joan','Ramos','Sant Celoni',NULL);
INSERT INTO Alumnes VALUES ('66553042R', 'Sergi','Torra','Granollers','2000-11-30');
INSERT INTO Alumnes VALUES ('42900761U', 'Cristina','Jiménez','Hospitalet del Llobregat','2002-11-12');
INSERT INTO Alumnes VALUES ('90556573I', 'David','Casas','Centelles',NULL);
INSERT INTO Alumnes VALUES ('94870985X', 'Júlia','Montané','Torelló',NULL);
INSERT INTO Alumnes VALUES ('26348596O', 'Martí','Grifé','Barcelona','2001-09-17');
INSERT INTO Alumnes VALUES ('81166613V', 'Marc','Molas','Sabadell','2001-07-26');
INSERT INTO Alumnes VALUES ('12246827E', 'Josep','Garrido','Puigreig','2000-07-05');
INSERT INTO Alumnes VALUES ('96223336N', 'Paula','Mayoral','Arenys de Mar',NULL);
INSERT INTO Alumnes VALUES ('37498187C', 'Martí','Molas','Granollers','2002-04-28');
INSERT INTO Alumnes VALUES ('64696444O', 'Marc','Torra','Centelles','2002-05-14');
INSERT INTO Alumnes VALUES ('36104824R', 'Laura','Bonilla','Barcelona','2002-10-17');
INSERT INTO Alumnes VALUES ('07557398Y', 'David','González','Barcelona','2000-07-16');
INSERT INTO Alumnes VALUES ('14840433X', 'Cristina','Puiggrós','Mollet',NULL);
INSERT INTO Alumnes VALUES ('04162046O', 'Sílvia','Arbós','Les Franqueses del Vallès','2001-05-27');
INSERT INTO Alumnes VALUES ('13832637B', 'Cristina','Vilar','Centelles','2001-08-21');
INSERT INTO Alumnes VALUES ('01302730K', 'Dani','Jiménez','La Garriga','2001-05-17');
INSERT INTO Alumnes VALUES ('74459116L', 'Anna','Santos','Aiguafreda','2001-06-05');
INSERT INTO Alumnes VALUES ('47734044J', 'Maria','Arbós','Manresa','2001-06-01');
INSERT INTO Alumnes VALUES ('62914391P', 'Joan','Ramos','Terrassa','2000-08-24');
INSERT INTO Alumnes VALUES ('38184581I', 'Dani','Grifé','Badalona','2002-06-04');
INSERT INTO Alumnes VALUES ('05918147J', 'Irene','Bonilla','Tona','2001-08-24');
INSERT INTO Alumnes VALUES ('72887127U', 'Júlia','García','Manresa','2002-01-30');
INSERT INTO Alumnes VALUES ('03709230M', 'Guillem','Casas','Canovelles','2001-01-07');
INSERT INTO Alumnes VALUES ('00956318P', 'Mònica','Iglesias','Sant Celoni',NULL);
INSERT INTO Alumnes VALUES ('75698288D', 'Joan','Sánchez','Granollers','2001-03-25');
INSERT INTO Alumnes VALUES ('00859914L', 'Sílvia','Ferreiro','La Roca del Vallès','2002-10-12');
INSERT INTO Alumnes VALUES ('77247461F', 'Fran','Sánchez','Granollers','2000-11-24');
INSERT INTO Alumnes VALUES ('48677532T', 'Laura','Torra','Folgueroles',NULL);
INSERT INTO Alumnes VALUES ('06923238S', 'Marc','Santos','Arenys de Mar','2002-06-25');
INSERT INTO Alumnes VALUES ('04812542C', 'Iván','Comas','Granollers','2000-05-20');
INSERT INTO Alumnes VALUES ('73493809P', 'Anna','Mayoral','Sant Cugat del Vallès','2000-11-13');
INSERT INTO Alumnes VALUES ('36808861N', 'Marta','Garrido','Barcelona','2001-08-01');
INSERT INTO Alumnes VALUES ('07890556F', 'Anna','Santos','Manresa',NULL);
INSERT INTO Alumnes VALUES ('73311397R', 'Laura','Mayoral','Folgueroles','2002-12-01');
INSERT INTO Alumnes VALUES ('31928433C', 'Sílvia','Montané','Badalona','2002-10-10');
INSERT INTO Alumnes VALUES ('77716108I', 'Marc','Sánchez','Tona','2001-01-05');
INSERT INTO Alumnes VALUES ('03644489W', 'Laura','Casas','Folgueroles',NULL);
INSERT INTO Alumnes VALUES ('82081184J', 'Sílvia','González','Terrassa',NULL);
INSERT INTO Alumnes VALUES ('05290327G', 'Marc','Grifé','Moià','2002-06-07');
INSERT INTO Alumnes VALUES ('84220922M', 'Martí','Reyes','La Garriga','2000-10-30');
INSERT INTO Alumnes VALUES ('73454025O', 'Marta','Grifé','Terrassa',NULL);
INSERT INTO Alumnes VALUES ('21715951Y', 'Dani','García','Centelles','2002-04-23');
INSERT INTO Alumnes VALUES ('02556506K', 'Sergi','Garrido','Hospitalet del Llobregat','2002-05-24');
INSERT INTO Alumnes VALUES ('29085842A', 'Josep','Ferreiro','Vic',NULL);
INSERT INTO Alumnes VALUES ('75182116H', 'Montse','Santos','Moià',NULL);
INSERT INTO Alumnes VALUES ('73384510J', 'Guillem','Ramisa','Sabadell','2001-08-30');
INSERT INTO Alumnes VALUES ('71096967P', 'Dani','Jiménez','Granollers',NULL);
INSERT INTO Alumnes VALUES ('13528159X', 'Montse','Grifé','Puigreig','2002-05-14');
INSERT INTO Alumnes VALUES ('45905653D', 'Iván','García','Tona','2001-10-28');
INSERT INTO Alumnes VALUES ('85731227P', 'Dani','Sánchez','Canovelles','2002-03-10');
INSERT INTO Alumnes VALUES ('12110593S', 'Jordi','Arbós','Mollet','2001-07-10');
INSERT INTO Alumnes VALUES ('73270544R', 'Susanna','Ferreiro','Hospitalet del Llobregat','2000-05-11');
INSERT INTO Alumnes VALUES ('06522221V', 'Martí','Iglesias','Granollers','2002-07-06');
INSERT INTO Alumnes VALUES ('50044114C', 'Fran','García','Hospitalet del Llobregat','2001-09-02');
INSERT INTO Alumnes VALUES ('59040720R', 'Irene','Molas','Les Franqueses del Vallès','2000-08-26');
INSERT INTO Alumnes VALUES ('27473221C', 'Fran','Montané','Arenys de Mar','2001-12-31');
INSERT INTO Alumnes VALUES ('18874447Y', 'David','Sánchez','Aiguafreda','2001-09-25');
INSERT INTO Alumnes VALUES ('75266769X', 'Irene','Montané','Torelló','2001-12-22');
INSERT INTO Alumnes VALUES ('26924553P', 'Pau','Sánchez','Sant Celoni','2002-05-30');
INSERT INTO Alumnes VALUES ('93108224V', 'Anna','Sánchez','La Garriga','2001-10-30');
INSERT INTO Alumnes VALUES ('06286076W', 'Cristina','González','Aiguafreda','2000-07-01');
INSERT INTO Alumnes VALUES ('04633319U', 'Laura','Molas','Centelles','2001-03-18');
INSERT INTO Alumnes VALUES ('32098394X', 'Anna','Puiggrós','Montcada','2001-10-19');
INSERT INTO Alumnes VALUES ('64730257U', 'Júlia','Torra','Puigreig','2002-10-15');
INSERT INTO Alumnes VALUES ('89519784I', 'Susanna','Reyes','Granollers','2002-07-13');
INSERT INTO Alumnes VALUES ('37235277D', 'Maria','Garrido','Manresa',NULL);
INSERT INTO Alumnes VALUES ('67806978Y', 'David','Iglesias','Sabadell','2000-06-23');
INSERT INTO Alumnes VALUES ('56843992B', 'Guillem','García','Mollet','2002-12-15');
INSERT INTO Alumnes VALUES ('70527726S', 'Joan','González','Tona','2000-06-06');
INSERT INTO Alumnes VALUES ('55776679K', 'Fran','Puiggrós','Sant Celoni','2001-12-20');
INSERT INTO Alumnes VALUES ('33595308G', 'Montse','Porti','Folgueroles','2002-10-15');
INSERT INTO Alumnes VALUES ('80661558I', 'Irene','Molas','Tona','2002-07-23');
INSERT INTO Alumnes VALUES ('72343851G', 'Joan','González','Granollers','2001-01-25');
INSERT INTO Alumnes VALUES ('06755434E', 'Mònica','Montané','Hospitalet del Llobregat',NULL);
INSERT INTO Alumnes VALUES ('27116180L', 'Josep','Porti','Les Franqueses del Vallès','2001-08-28');
INSERT INTO Alumnes VALUES ('98390545S', 'Fran','Puiggrós','Manresa','2000-07-13');
INSERT INTO Alumnes VALUES ('74141360J', 'Mònica','Montané','Granollers',NULL);
INSERT INTO Alumnes VALUES ('80769727E', 'Sílvia','Comas','Montcada','2000-09-02');
INSERT INTO Alumnes VALUES ('16899597I', 'Irene','Ferreiro','Terrassa','2001-02-04');
INSERT INTO Alumnes VALUES ('94382722E', 'Maria','Garrido','Aiguafreda','2000-10-31');
INSERT INTO Alumnes VALUES ('67857202S', 'Fran','Santos','Manresa','2001-11-05');
INSERT INTO Alumnes VALUES ('88408801C', 'Montse','Garrido','Mollet','2002-02-18');
INSERT INTO Alumnes VALUES ('45157943B', 'Dani','Sánchez','Hospitalet del Llobregat','2001-05-13');
INSERT INTO Alumnes VALUES ('10224951I', 'Susanna','Montané','Aiguafreda','2001-01-06');
INSERT INTO Alumnes VALUES ('90713517Q', 'Josep','Ramos','Les Franqueses del Vallès','2001-03-03');
INSERT INTO Alumnes VALUES ('69490750X', 'Irene','Ramos','Tona','2000-11-10');
INSERT INTO Alumnes VALUES ('19552302Z', 'Fran','Comas','Moià','2001-08-26');
INSERT INTO Alumnes VALUES ('89908406T', 'Martí','Vilar','Tona','2000-05-20');
INSERT INTO Alumnes VALUES ('70590455Y', 'Martí','Montané','Sant Celoni','2001-02-13');
INSERT INTO Alumnes VALUES ('17288862C', 'Maria','Torra','Mollet','2000-04-10');
INSERT INTO Alumnes VALUES ('16299207F', 'Montse','Jiménez','Arenys de Mar',NULL);
INSERT INTO Alumnes VALUES ('80431993K', 'Laura','Reyes','Terrassa','2000-12-18');
INSERT INTO Alumnes VALUES ('52055193A', 'Guillem','Ramisa','Terrassa','2000-07-07');
INSERT INTO Alumnes VALUES ('29149780Q', 'Júlia','Comas','Mollet','2001-08-26');
INSERT INTO Alumnes VALUES ('14548466H', 'Maria','Vilar','Barcelona','2001-11-23');
INSERT INTO Alumnes VALUES ('02785279U', 'Sílvia','Montané','Arenys de Mar','2000-04-29');
INSERT INTO Alumnes VALUES ('30810326K', 'Susanna','Torra','La Roca del Vallès','2000-12-04');
INSERT INTO Alumnes VALUES ('96633854J', 'Maria','Reyes','Arenys de Mar','2000-12-13');
INSERT INTO Alumnes VALUES ('02659596O', 'Mònica','Puiggrós','Manresa','2000-07-21');
INSERT INTO Alumnes VALUES ('63362870J', 'Mònica','Arbós','La Garriga','2001-04-02');
INSERT INTO Alumnes VALUES ('86052838A', 'Anna','Ramisa','Folgueroles','2002-03-09');
INSERT INTO Alumnes VALUES ('16430226G', 'Júlia','Mayoral','Sabadell','2002-08-28');
INSERT INTO Alumnes VALUES ('08730791Y', 'Mònica','Bonilla','Moià','2001-06-03');
INSERT INTO Alumnes VALUES ('92341135P', 'Josep','Grifé','Mollet','2001-05-27');
INSERT INTO Alumnes VALUES ('54829246E', 'Anna','Iglesias','Moià',NULL);
INSERT INTO Alumnes VALUES ('25051673J', 'Montse','Ferreiro','Tona',NULL);
INSERT INTO Alumnes VALUES ('86699257Y', 'Pau','Montané','Centelles',NULL);
INSERT INTO Alumnes VALUES ('88515841H', 'Marc','Montané','Granollers','2001-11-18');
INSERT INTO Alumnes VALUES ('94691325P', 'Laura','Vilar','Manresa',NULL);
INSERT INTO Alumnes VALUES ('05393261S', 'David','Arbós','Folgueroles',NULL);
INSERT INTO Alumnes VALUES ('91763888A', 'Martí','Isern','Les Franqueses del Vallès','2001-11-28');
INSERT INTO Alumnes VALUES ('33264162D', 'Júlia','Iglesias','Vic','2002-07-08');
INSERT INTO Alumnes VALUES ('44421429L', 'Dani','Grifé','Torelló','2002-12-12');
INSERT INTO Alumnes VALUES ('01625849O', 'Paula','González','Sabadell',NULL);
INSERT INTO Alumnes VALUES ('02904844B', 'Susanna','Iglesias','La Roca del Vallès',NULL);
INSERT INTO Alumnes VALUES ('71132951S', 'Laura','Arbós','Granollers','2002-03-09');
INSERT INTO Alumnes VALUES ('63330907E', 'Irene','Bonilla','Arenys de Mar','2002-12-04');
INSERT INTO Alumnes VALUES ('62625966U', 'Joan','Mayoral','Granollers','2000-09-30');
INSERT INTO Alumnes VALUES ('05116313V', 'Guillem','Porti','Tona','2001-05-07');
INSERT INTO Alumnes VALUES ('70395037K', 'Fran','Torra','Sant Celoni',NULL);
INSERT INTO Alumnes VALUES ('48674602I', 'Sergi','Isern','Tona','2001-10-26');
INSERT INTO Alumnes VALUES ('88170486H', 'Cristina','Sánchez','Granollers','2002-10-04');
INSERT INTO Alumnes VALUES ('75803680L', 'Sílvia','Torra','Badalona','2002-08-05');
INSERT INTO Alumnes VALUES ('22746830M', 'Cristina','Montané','Moià','2000-10-14');
INSERT INTO Alumnes VALUES ('35914269Q', 'Fran','Montané','Puigreig','2002-07-23');
INSERT INTO Alumnes VALUES ('89521450A', 'Marta','Grifé','Granollers','2001-01-02');
INSERT INTO Alumnes VALUES ('61178256J', 'Jordi','Ferreiro','Sant Cugat del Vallès','2001-08-19');
INSERT INTO Alumnes VALUES ('98535200G', 'Júlia','Casas','Montcada','2002-05-18');
INSERT INTO Alumnes VALUES ('71168638Q', 'Cristina','Reyes','Puigreig','2002-10-23');
INSERT INTO Alumnes VALUES ('03641078C', 'Josep','Vilar','Sant Celoni','2000-05-29');
INSERT INTO Alumnes VALUES ('19935294D', 'Guillem','Vilar','Barcelona','2001-11-10');
INSERT INTO Alumnes VALUES ('15214346M', 'Josep','Grifé','Folgueroles','2001-02-18');
INSERT INTO Alumnes VALUES ('04746932X', 'Paula','Molas','Moià','2002-06-01');
INSERT INTO Alumnes VALUES ('56193853X', 'Marc','Casas','Torelló','2001-06-14');
INSERT INTO Alumnes VALUES ('59467704Z', 'Júlia','Grifé','Puigreig','2000-05-10');
INSERT INTO Alumnes VALUES ('60730198F', 'Guillem','García','Badalona','2001-01-26');
INSERT INTO Alumnes VALUES ('43285003J', 'Anna','González','Sabadell',NULL);
INSERT INTO Alumnes VALUES ('16389784Z', 'Júlia','Torra','La Garriga',NULL);
INSERT INTO Alumnes VALUES ('81919635X', 'Sergi','Torra','Torelló','2001-05-21');
INSERT INTO Alumnes VALUES ('45774831B', 'Cristina','Garrido','Barcelona','2001-10-03');
INSERT INTO Alumnes VALUES ('30152556V', 'Paula','Jiménez','Montcada',NULL);
INSERT INTO Alumnes VALUES ('91609683F', 'Cristina','Iglesias','Centelles',NULL);
INSERT INTO Alumnes VALUES ('77044487D', 'Dani','Santos','Granollers','2001-12-29');
INSERT INTO Alumnes VALUES ('51766107J', 'Sílvia','Comas','Manresa','2002-11-03');
INSERT INTO Alumnes VALUES ('42500188J', 'Sílvia','Arbós','Puigreig','2000-07-14');
INSERT INTO Alumnes VALUES ('91619496N', 'Jordi','Puiggrós','Terrassa','2000-05-15');
INSERT INTO Alumnes VALUES ('91388421Q', 'Laura','Grifé','Sant Cugat del Vallès',NULL);
INSERT INTO Alumnes VALUES ('02943364T', 'Anna','Isern','Canovelles','2001-10-04');
INSERT INTO Alumnes VALUES ('35349959V', 'Guillem','Ramisa','Granollers','2000-08-07');
INSERT INTO Alumnes VALUES ('78655209B', 'Laura','Grifé','La Roca del Vallès',NULL);
INSERT INTO Alumnes VALUES ('58593495S', 'Jordi','Torra','Terrassa','2001-12-29');
INSERT INTO Alumnes VALUES ('25772212W', 'Montse','Ferreiro','Aiguafreda',NULL);
INSERT INTO Alumnes VALUES ('48866926E', 'Maria','Molas','La Roca del Vallès','2001-02-03');
INSERT INTO Alumnes VALUES ('99498560D', 'Josep','Torra','Centelles','2001-06-06');
INSERT INTO Alumnes VALUES ('61896730K', 'Joan','Vilar','Badalona',NULL);
INSERT INTO Alumnes VALUES ('80038470B', 'Martí','González','Mollet','2002-06-15');
INSERT INTO Alumnes VALUES ('46950892C', 'Sergi','Torra','Granollers','2000-09-26');
INSERT INTO Alumnes VALUES ('13983178P', 'Guillem','Ramisa','Montcada',NULL);
INSERT INTO Alumnes VALUES ('49101412J', 'Susanna','Jiménez','Manresa',NULL);
INSERT INTO Alumnes VALUES ('46837709T', 'Irene','Molas','Canovelles','2000-10-13');
INSERT INTO Alumnes VALUES ('23404972G', 'David','Ramisa','La Roca del Vallès','2001-11-25');
INSERT INTO Alumnes VALUES ('60360257V', 'Mònica','García','Puigreig','2000-11-22');
INSERT INTO Alumnes VALUES ('56195871H', 'Cristina','Puiggrós','Hospitalet del Llobregat',NULL);
INSERT INTO Alumnes VALUES ('79505472H', 'Cristina','Torra','Centelles','2000-07-02');
INSERT INTO Alumnes VALUES ('86047703G', 'Martí','González','Sant Celoni',NULL);
INSERT INTO Alumnes VALUES ('18039411U', 'Sílvia','Bonilla','Vic','2001-08-06');
INSERT INTO Alumnes VALUES ('42661874E', 'Sergi','Molas','Terrassa',NULL);
INSERT INTO Alumnes VALUES ('72439381Y', 'Pau','Sánchez','Arenys de Mar','2000-07-10');
INSERT INTO Alumnes VALUES ('04422549U', 'Marc','González','Hospitalet del Llobregat','2000-08-21');
INSERT INTO Alumnes VALUES ('30425686K', 'Montse','Torra','Torelló',NULL);
INSERT INTO Alumnes VALUES ('60112913G', 'Fran','Isern','Les Franqueses del Vallès','2002-05-13');
INSERT INTO Alumnes VALUES ('23377777B', 'Jordi','Torra','Tona','2001-02-19');
INSERT INTO Alumnes VALUES ('50433353X', 'Jordi','Comas','Barcelona',NULL);
INSERT INTO Alumnes VALUES ('78516823L', 'Irene','Montané','Badalona','2001-09-30');
INSERT INTO Alumnes VALUES ('41302433P', 'Mònica','Torra','Granollers','2000-06-25');
INSERT INTO Alumnes VALUES ('89855417L', 'Iván','Torra','Sabadell',NULL);
INSERT INTO Alumnes VALUES ('49831375R', 'Susanna','Ramos','Canovelles','2001-05-21');
INSERT INTO Alumnes VALUES ('82586950Z', 'Anna','Mayoral','Aiguafreda','2002-03-28');
INSERT INTO Alumnes VALUES ('67448170P', 'Dani','Santos','Granollers','2002-05-03');
INSERT INTO Alumnes VALUES ('24110893F', 'Mònica','Reyes','La Garriga','2002-07-18');
INSERT INTO Alumnes VALUES ('60519781K', 'Paula','Casas','Puigreig','2002-09-27');
INSERT INTO Alumnes VALUES ('79134019O', 'Guillem','Ferreiro','La Garriga','2002-10-14');
INSERT INTO Alumnes VALUES ('13640476Z', 'Jordi','Santos','Sant Cugat del Vallès','2000-05-18');
INSERT INTO Alumnes VALUES ('01712114V', 'Sílvia','Casas','La Garriga','2002-01-16');
INSERT INTO Alumnes VALUES ('78702706X', 'Susanna','Torra','La Roca del Vallès','2002-01-05');
INSERT INTO Alumnes VALUES ('38880444P', 'Júlia','Santos','Arenys de Mar','2001-07-14');
INSERT INTO Alumnes VALUES ('52798891C', 'Júlia','Ferreiro','Les Franqueses del Vallès','2002-02-19');
INSERT INTO Alumnes VALUES ('36739032C', 'Pau','Isern','Montcada','2001-06-05');
INSERT INTO Alumnes VALUES ('53317538T', 'Paula','Santos','Sabadell','2002-05-08');
INSERT INTO Alumnes VALUES ('13523806Q', 'Montse','Comas','Sant Cugat del Vallès','2002-06-21');
INSERT INTO Alumnes VALUES ('82471625M', 'Paula','García','Tona',NULL);
INSERT INTO Alumnes VALUES ('22660883T', 'Joan','Santos','Vic','2001-07-09');
INSERT INTO Alumnes VALUES ('57308020K', 'Sergi','Casas','Terrassa','2002-11-15');
INSERT INTO Alumnes VALUES ('71833700Z', 'Montse','González','Barcelona',NULL);
INSERT INTO Alumnes VALUES ('43511545O', 'Cristina','Isern','Granollers','2002-11-02');
INSERT INTO Alumnes VALUES ('46098084T', 'Fran','Ramos','Tona','2000-08-29');
INSERT INTO Alumnes VALUES ('40968854V', 'Jordi','Garrido','Hospitalet del Llobregat','2002-07-31');
INSERT INTO Alumnes VALUES ('18817124L', 'Marc','Sánchez','Terrassa','2000-04-26');
INSERT INTO Alumnes VALUES ('52773855B', 'Montse','Comas','Sant Cugat del Vallès','2000-05-07');
INSERT INTO Alumnes VALUES ('66891979G', 'Susanna','Comas','Canovelles','2000-04-11');
INSERT INTO Alumnes VALUES ('45331429Y', 'Iván','Isern','Vic',NULL);
INSERT INTO Alumnes VALUES ('60003940L', 'Sergi','Sánchez','Torelló','2000-07-29');
INSERT INTO Alumnes VALUES ('61997404B', 'Sílvia','García','Terrassa','2002-12-15');
INSERT INTO Alumnes VALUES ('23784332F', 'Anna','Iglesias','Manresa','2002-01-20');
INSERT INTO Alumnes VALUES ('58998021J', 'Iván','Santos','Hospitalet del Llobregat','2000-10-29');
INSERT INTO Alumnes VALUES ('32498899G', 'Iván','Mayoral','Mollet','2001-11-09');
INSERT INTO Alumnes VALUES ('83759460H', 'Guillem','Vilar','Barcelona','2000-06-18');
INSERT INTO Alumnes VALUES ('35738746J', 'Sílvia','Molas','Arenys de Mar','2002-12-27');
INSERT INTO Alumnes VALUES ('78893257O', 'Cristina','Casas','Sabadell',NULL);
INSERT INTO Alumnes VALUES ('32805581X', 'Júlia','Ramisa','Terrassa','2000-10-02');
INSERT INTO Alumnes VALUES ('46789240F', 'Iván','Reyes','La Roca del Vallès',NULL);
INSERT INTO Alumnes VALUES ('16275476U', 'Júlia','Ramos','Tona','2000-10-18');
INSERT INTO Alumnes VALUES ('96978341X', 'Marc','Garrido','Folgueroles','2002-09-01');
INSERT INTO Alumnes VALUES ('85939053M', 'David','Iglesias','Terrassa','2001-02-16');
INSERT INTO Alumnes VALUES ('19237245X', 'Mònica','Jiménez','Mollet','2002-08-05');
INSERT INTO Alumnes VALUES ('70368357G', 'Sergi','Isern','Montcada',NULL);
INSERT INTO Alumnes VALUES ('44592258K', 'Susanna','Iglesias','Centelles',NULL);
INSERT INTO Alumnes VALUES ('98526170E', 'Joan','Isern','Les Franqueses del Vallès','2002-03-27');
INSERT INTO Alumnes VALUES ('75231555J', 'Montse','Comas','Les Franqueses del Vallès','2002-12-13');
INSERT INTO Alumnes VALUES ('30859355S', 'Irene','Porti','Puigreig',NULL);
INSERT INTO Alumnes VALUES ('28378204X', 'Josep','Ramisa','Montcada','2000-05-22');
INSERT INTO Alumnes VALUES ('08644878H', 'Guillem','Mayoral','Centelles',NULL);
INSERT INTO Alumnes VALUES ('62707230F', 'Anna','Ramos','Hospitalet del Llobregat',NULL);
INSERT INTO Alumnes VALUES ('34097676X', 'Marta','Bonilla','Badalona','2001-10-22');
INSERT INTO Alumnes VALUES ('61793909Z', 'Marc','González','Moià','2000-09-12');
INSERT INTO Alumnes VALUES ('90929536H', 'Laura','Garrido','Mollet','2001-04-03');
INSERT INTO Alumnes VALUES ('26243486K', 'Marc','García','La Garriga','2001-01-10');
INSERT INTO Alumnes VALUES ('76776125A', 'Dani','Bonilla','Sabadell','2001-11-22');
INSERT INTO Alumnes VALUES ('09001689P', 'Fran','Molas','Hospitalet del Llobregat','2000-11-18');
INSERT INTO Alumnes VALUES ('37139505W', 'Marta','Mayoral','Mollet','2001-02-23');
INSERT INTO Alumnes VALUES ('68980871N', 'Jordi','Torra','Moià',NULL);
INSERT INTO Alumnes VALUES ('97097816G', 'Anna','Sánchez','Tona','2000-05-29');
INSERT INTO Alumnes VALUES ('55045628I', 'Joan','Casas','Sabadell','2001-08-23');
INSERT INTO Alumnes VALUES ('29751770V', 'Martí','Grifé','Sant Cugat del Vallès','2001-02-16');
INSERT INTO Alumnes VALUES ('99849100R', 'Iván','Mayoral','La Roca del Vallès',NULL);
INSERT INTO Alumnes VALUES ('24864412H', 'Jordi','Ferreiro','Manresa','2001-07-20');
INSERT INTO Alumnes VALUES ('96134546Q', 'Fran','Molas','Mollet','2001-12-23');
INSERT INTO Alumnes VALUES ('81656908H', 'Júlia','Isern','Torelló',NULL);
INSERT INTO Alumnes VALUES ('61722390R', 'Cristina','Garrido','Badalona','2000-10-22');
INSERT INTO Alumnes VALUES ('21377199Y', 'Dani','Bonilla','Folgueroles','2000-10-23');
INSERT INTO Alumnes VALUES ('62510723A', 'Joan','Reyes','Aiguafreda',NULL);
INSERT INTO Alumnes VALUES ('14176059E', 'Cristina','Isern','Moià','2002-10-30');
INSERT INTO Alumnes VALUES ('29170495V', 'Irene','Ramos','La Roca del Vallès','2001-01-19');
INSERT INTO Alumnes VALUES ('50422964W', 'Anna','Ramos','Barcelona','2000-06-16');
INSERT INTO Alumnes VALUES ('33809655F', 'Josep','Montané','Hospitalet del Llobregat','2002-12-23');
INSERT INTO Alumnes VALUES ('98295815N', 'Iván','Bonilla','Tona','2002-06-15');
INSERT INTO Alumnes VALUES ('70649791I', 'Joan','Ferreiro','La Roca del Vallès',NULL);
INSERT INTO Alumnes VALUES ('82021869M', 'Fran','Sánchez','Manresa','2000-06-30');
INSERT INTO Alumnes VALUES ('11129083O', 'Marc','Montané','Centelles','2001-09-07');
INSERT INTO Alumnes VALUES ('44539840G', 'Montse','Grifé','Granollers','2002-01-13');
INSERT INTO Alumnes VALUES ('04769899Z', 'Anna','Garrido','La Roca del Vallès','2001-03-12');
INSERT INTO Alumnes VALUES ('54552282R', 'Fran','González','Sabadell',NULL);
INSERT INTO Alumnes VALUES ('57242570O', 'Fran','Molas','Mollet','2000-11-21');
INSERT INTO Alumnes VALUES ('29017282B', 'Júlia','Vilar','La Garriga','2002-03-12');
INSERT INTO Alumnes VALUES ('22509535K', 'Mònica','Montané','Sant Cugat del Vallès',NULL);
INSERT INTO Alumnes VALUES ('00272948M', 'Susanna','Garrido','Montcada','2001-05-29');
INSERT INTO Alumnes VALUES ('08942673L', 'Marta','Garrido','Badalona','2001-01-31');
INSERT INTO Alumnes VALUES ('63813276G', 'Laura','Casas','La Garriga','2000-08-08');
INSERT INTO Alumnes VALUES ('46463679V', 'Mònica','Grifé','Arenys de Mar','2000-10-29');
INSERT INTO Alumnes VALUES ('56901609P', 'Cristina','Ramisa','Sant Celoni',NULL);
INSERT INTO Alumnes VALUES ('19274603W', 'Marta','Porti','Hospitalet del Llobregat','2002-11-20');
INSERT INTO Alumnes VALUES ('86331028W', 'Paula','Montané','Manresa',NULL);
INSERT INTO Alumnes VALUES ('19948677C', 'Anna','Bonilla','Puigreig','2002-04-12');
INSERT INTO Alumnes VALUES ('39408529J', 'Montse','Vilar','La Roca del Vallès','2000-09-17');
INSERT INTO Alumnes VALUES ('91046009Y', 'Dani','Torra','Sabadell','2002-05-30');
INSERT INTO Alumnes VALUES ('27538122W', 'Pau','Sánchez','Barcelona','2002-01-07');
INSERT INTO Alumnes VALUES ('71381629L', 'Josep','Iglesias','Sant Cugat del Vallès','2000-06-13');
INSERT INTO Alumnes VALUES ('22074448O', 'Guillem','Jiménez','Sabadell',NULL);
INSERT INTO Alumnes VALUES ('48201000L', 'Sergi','Mayoral','Badalona','2002-12-05');
INSERT INTO Alumnes VALUES ('72069925A', 'Júlia','Ramisa','Canovelles','2001-08-02');
INSERT INTO Alumnes VALUES ('30100161V', 'David','Sánchez','Folgueroles','2002-12-18');
INSERT INTO Alumnes VALUES ('72805606X', 'Irene','Grifé','Sant Cugat del Vallès','2002-01-29');
INSERT INTO Alumnes VALUES ('16801440U', 'Irene','Arbós','Mollet','2002-07-16');
INSERT INTO Alumnes VALUES ('25836411Y', 'Jordi','Puiggrós','Sant Celoni','2001-09-26');
INSERT INTO Alumnes VALUES ('61180507F', 'Anna','Molas','Sant Cugat del Vallès','2000-06-28');
INSERT INTO Alumnes VALUES ('06648089X', 'Cristina','Jiménez','Puigreig','2000-12-04');
INSERT INTO Alumnes VALUES ('66994934V', 'Fran','Bonilla','Tona','2002-06-17');
INSERT INTO Alumnes VALUES ('86214421U', 'Joan','Garrido','Arenys de Mar','2002-05-22');
INSERT INTO Alumnes VALUES ('17302110M', 'Marta','Porti','Mollet','2002-09-29');
INSERT INTO Alumnes VALUES ('27866572Z', 'Laura','Molas','Sant Celoni','2000-12-20');
INSERT INTO Alumnes VALUES ('77818595Q', 'Mònica','Arbós','Tona','2002-05-09');
INSERT INTO Alumnes VALUES ('43613307R', 'Guillem','Arbós','La Roca del Vallès','2001-08-07');
INSERT INTO Alumnes VALUES ('68287392L', 'Dani','Montané','Les Franqueses del Vallès','2002-04-06');
INSERT INTO Alumnes VALUES ('23226913O', 'Maria','Montané','La Roca del Vallès',NULL);
INSERT INTO Alumnes VALUES ('78383800A', 'Josep','Reyes','Vic','2001-03-27');
INSERT INTO Alumnes VALUES ('90410687P', 'Irene','Comas','Torelló','2002-12-11');
INSERT INTO Alumnes VALUES ('28821328M', 'Montse','Bonilla','Mollet','2002-04-10');
INSERT INTO Alumnes VALUES ('09674739S', 'Marta','Ramos','Canovelles',NULL);
INSERT INTO Alumnes VALUES ('31979561I', 'Maria','Isern','Sant Celoni',NULL);
INSERT INTO Alumnes VALUES ('24796916W', 'Marc','Torra','Moià','2000-06-02');
INSERT INTO Alumnes VALUES ('42387542S', 'Guillem','Iglesias','Torelló','2001-02-21');
INSERT INTO Alumnes VALUES ('57108030V', 'Montse','Bonilla','Aiguafreda','2000-04-21');
INSERT INTO Alumnes VALUES ('43665292Y', 'Irene','Grifé','Torelló','2002-07-21');
INSERT INTO Alumnes VALUES ('51447518I', 'Laura','Jiménez','Montcada',NULL);
INSERT INTO Alumnes VALUES ('83714374U', 'Jordi','Sánchez','Arenys de Mar',NULL);
INSERT INTO Alumnes VALUES ('59696605Z', 'Josep','Mayoral','Sant Cugat del Vallès',NULL);
INSERT INTO Alumnes VALUES ('43882108X', 'Anna','Garrido','Moià','2000-05-15');
INSERT INTO Alumnes VALUES ('66150756Z', 'Paula','García','Arenys de Mar',NULL);
INSERT INTO Alumnes VALUES ('51463849G', 'Martí','Garrido','Aiguafreda','2001-08-22');
INSERT INTO Alumnes VALUES ('19090551K', 'Júlia','Santos','Granollers','2000-04-20');
INSERT INTO Alumnes VALUES ('31932155J', 'Susanna','Grifé','Terrassa','2000-08-09');
INSERT INTO Alumnes VALUES ('89553998A', 'Montse','Mayoral','Barcelona','2001-07-02');
INSERT INTO Alumnes VALUES ('31200523I', 'Joan','Comas','Tona',NULL);
INSERT INTO Alumnes VALUES ('47817619Q', 'Montse','Mayoral','Mollet','2001-07-22');
INSERT INTO Alumnes VALUES ('98461152I', 'Sergi','García','La Garriga',NULL);
INSERT INTO Alumnes VALUES ('41128674H', 'Anna','Garrido','Tona','2000-06-04');
INSERT INTO Alumnes VALUES ('64185992P', 'Susanna','Molas','Terrassa','2001-10-17');
INSERT INTO Alumnes VALUES ('38792236X', 'Mònica','Ramos','Sabadell','2001-03-03');
INSERT INTO Alumnes VALUES ('99326582J', 'Guillem','Iglesias','Hospitalet del Llobregat',NULL);
INSERT INTO Alumnes VALUES ('35449289Y', 'Iván','Reyes','La Roca del Vallès','2002-12-01');
INSERT INTO Alumnes VALUES ('35095429D', 'Anna','Reyes','Moià',NULL);
INSERT INTO Alumnes VALUES ('87714596N', 'Josep','Jiménez','Aiguafreda','2000-05-24');
INSERT INTO Alumnes VALUES ('21849529W', 'Joan','Isern','Puigreig','2001-02-28');
INSERT INTO Alumnes VALUES ('13336175J', 'Marta','Grifé','Puigreig','2002-12-09');
INSERT INTO Alumnes VALUES ('70713392Q', 'David','Jiménez','Aiguafreda','2000-10-19');
INSERT INTO Alumnes VALUES ('18246274M', 'Pau','Ramos','Mollet',NULL);
INSERT INTO Alumnes VALUES ('96989068Z', 'Martí','Molas','Montcada','2002-02-03');
INSERT INTO Alumnes VALUES ('43372076V', 'Josep','González','Torelló','2001-10-17');
INSERT INTO Alumnes VALUES ('22246737I', 'Marc','Ramos','Canovelles','2000-09-03');
INSERT INTO Alumnes VALUES ('51021904I', 'Irene','Vilar','Montcada','2002-05-27');
INSERT INTO Alumnes VALUES ('46523353P', 'Mònica','Isern','Mollet','2001-04-25');
INSERT INTO Alumnes VALUES ('93226806M', 'Guillem','Isern','Badalona','2000-06-23');
INSERT INTO Alumnes VALUES ('40229073B', 'Marc','Arbós','Sant Celoni',NULL);
INSERT INTO Alumnes VALUES ('38810223N', 'Júlia','Montané','Aiguafreda','2000-05-09');
INSERT INTO Alumnes VALUES ('84841920H', 'Marc','Montané','Mollet','2002-04-24');
INSERT INTO Alumnes VALUES ('51523459K', 'Josep','Casas','Barcelona',NULL);
INSERT INTO Alumnes VALUES ('42041468F', 'Martí','Grifé','Les Franqueses del Vallès',NULL);
INSERT INTO Alumnes VALUES ('66999267A', 'David','García','Hospitalet del Llobregat','2001-12-04');
INSERT INTO Alumnes VALUES ('14511559S', 'Maria','Montané','La Garriga','2001-01-16');
INSERT INTO Alumnes VALUES ('02351665X', 'Montse','Grifé','Granollers','2001-01-13');
INSERT INTO Alumnes VALUES ('05105127G', 'Cristina','González','Manresa','2000-08-26');
INSERT INTO Alumnes VALUES ('19990874R', 'Mònica','Ferreiro','La Roca del Vallès','2001-05-16');
INSERT INTO Alumnes VALUES ('32877500P', 'Marc','Puiggrós','Sant Celoni','2002-02-01');
INSERT INTO Alumnes VALUES ('57565447U', 'Marc','Molas','Hospitalet del Llobregat','2002-03-26');
INSERT INTO Alumnes VALUES ('83145246S', 'Irene','Porti','Aiguafreda','2001-09-25');
INSERT INTO Alumnes VALUES ('11362828M', 'Fran','Santos','Centelles','2001-10-05');
INSERT INTO Alumnes VALUES ('58517143M', 'Martí','González','Canovelles','2002-08-03');
INSERT INTO Alumnes VALUES ('33974982B', 'Marc','Porti','Arenys de Mar','2001-09-29');
INSERT INTO Alumnes VALUES ('67518120X', 'Paula','Ramisa','Montcada','2000-11-18');
INSERT INTO Alumnes VALUES ('26667317Z', 'Cristina','González','Sant Celoni','2002-04-04');
INSERT INTO Alumnes VALUES ('48140224T', 'Maria','Porti','Arenys de Mar',NULL);
INSERT INTO Alumnes VALUES ('14399448E', 'David','Reyes','Sabadell','2001-04-21');
INSERT INTO Alumnes VALUES ('65773404A', 'Guillem','Puiggrós','Aiguafreda','2001-11-05');
INSERT INTO Alumnes VALUES ('34217122Y', 'Joan','Iglesias','Mollet',NULL);
INSERT INTO Alumnes VALUES ('36386404W', 'Marta','Ramisa','Arenys de Mar','2001-06-26');
INSERT INTO Alumnes VALUES ('26886694O', 'Anna','García','Puigreig','2001-01-25');
INSERT INTO Alumnes VALUES ('60822264Y', 'Pau','Molas','Tona','2000-11-07');
INSERT INTO Alumnes VALUES ('49489973L', 'Laura','Ramos','Folgueroles',NULL);
INSERT INTO Alumnes VALUES ('82147167Z', 'Josep','Porti','Tona','2000-09-03');
INSERT INTO Alumnes VALUES ('57913406O', 'Anna','Mayoral','Les Franqueses del Vallès','2000-10-17');
INSERT INTO Alumnes VALUES ('73213585G', 'Laura','Jiménez','Folgueroles','2002-07-03');
INSERT INTO Alumnes VALUES ('99441513L', 'Irene','Montané','Aiguafreda','2002-07-04');
INSERT INTO Alumnes VALUES ('54073721E', 'Júlia','Comas','Centelles',NULL);
INSERT INTO Alumnes VALUES ('82276180U', 'Marc','Ramos','Manresa','2002-03-29');
INSERT INTO Alumnes VALUES ('49803056M', 'Susanna','Santos','Puigreig','2000-04-21');
INSERT INTO Alumnes VALUES ('99348091C', 'Iván','Mayoral','Les Franqueses del Vallès','2002-02-04');
INSERT INTO Alumnes VALUES ('93706140H', 'Mònica','Ferreiro','Canovelles','2001-06-21');
INSERT INTO Alumnes VALUES ('56794827P', 'Jordi','Reyes','Aiguafreda','2001-08-25');
INSERT INTO Alumnes VALUES ('52341291C', 'Martí','Reyes','Manresa','2000-12-13');
INSERT INTO Alumnes VALUES ('50408862A', 'Martí','Bonilla','Aiguafreda','2000-06-08');
INSERT INTO Alumnes VALUES ('27261167V', 'Fran','Iglesias','Centelles',NULL);
INSERT INTO Alumnes VALUES ('86846689I', 'Mònica','Santos','Canovelles','2002-09-26');
INSERT INTO Alumnes VALUES ('68345986I', 'Marta','Puiggrós','Sant Celoni',NULL);
INSERT INTO Alumnes VALUES ('23569735I', 'Marta','Sánchez','Puigreig',NULL);
INSERT INTO Alumnes VALUES ('61153414Z', 'Maria','Molas','Les Franqueses del Vallès','2000-10-29');
INSERT INTO Alumnes VALUES ('86347750Q', 'Marta','Santos','Sant Celoni','2002-01-29');
INSERT INTO Alumnes VALUES ('01017547F', 'Jordi','Grifé','Les Franqueses del Vallès',NULL);
INSERT INTO Alumnes VALUES ('43266949H', 'Laura','Mayoral','Terrassa','2000-10-29');
INSERT INTO Alumnes VALUES ('85455590E', 'Cristina','García','Badalona','2001-08-17');
INSERT INTO Alumnes VALUES ('24079628P', 'Jordi','Comas','Terrassa','2002-01-31');
INSERT INTO Alumnes VALUES ('35432690W', 'Josep','Ferreiro','Barcelona','2002-07-19');
INSERT INTO Alumnes VALUES ('28636848Q', 'Mònica','Comas','Arenys de Mar','2000-04-03');
INSERT INTO Alumnes VALUES ('78789402C', 'Sílvia','Vilar','La Roca del Vallès','2002-01-26');
INSERT INTO Alumnes VALUES ('17150989X', 'Fran','Bonilla','Sant Cugat del Vallès','2002-11-05');
INSERT INTO Alumnes VALUES ('69769754T', 'Marta','Jiménez','Arenys de Mar','2002-01-30');
INSERT INTO Alumnes VALUES ('44223626J', 'Júlia','Grifé','Barcelona','2001-04-18');
INSERT INTO Alumnes VALUES ('43417967N', 'Mònica','Santos','Terrassa','2001-03-30');
INSERT INTO Alumnes VALUES ('27897039B', 'David','Isern','Les Franqueses del Vallès','2001-06-16');
INSERT INTO Alumnes VALUES ('67130131K', 'Irene','Garrido','Manresa',NULL);
INSERT INTO Alumnes VALUES ('32024202X', 'Laura','Molas','Montcada',NULL);
INSERT INTO Alumnes VALUES ('93213562R', 'Montse','Sánchez','La Roca del Vallès','2002-04-06');
INSERT INTO Alumnes VALUES ('48630629U', 'Pau','Ramisa','Centelles','2002-05-07');
INSERT INTO Alumnes VALUES ('28565622U', 'Anna','Ramos','Vic','2002-09-16');
INSERT INTO Alumnes VALUES ('93174813M', 'Susanna','Jiménez','Vic','2001-11-09');
INSERT INTO Alumnes VALUES ('56268970A', 'Montse','Bonilla','Badalona','2000-06-05');
INSERT INTO Alumnes VALUES ('72995592X', 'Guillem','Mayoral','Sant Celoni','2001-09-27');
INSERT INTO Alumnes VALUES ('20662645S', 'Marc','González','Folgueroles','2002-02-19');
INSERT INTO Alumnes VALUES ('36560396C', 'Josep','Iglesias','Hospitalet del Llobregat','2002-08-22');
INSERT INTO Alumnes VALUES ('48627197C', 'Anna','Porti','La Roca del Vallès','2000-06-08');
INSERT INTO Alumnes VALUES ('10233481V', 'Maria','Jiménez','Puigreig',NULL);
INSERT INTO Alumnes VALUES ('09968484X', 'Dani','Torra','Centelles','2001-11-03');
INSERT INTO Alumnes VALUES ('93415842Y', 'Paula','Ramos','Tona','2000-10-05');
INSERT INTO Alumnes VALUES ('34494630M', 'Jordi','Bonilla','Folgueroles','2002-02-26');
INSERT INTO Alumnes VALUES ('07117494U', 'Pau','Bonilla','La Garriga','2000-07-20');
INSERT INTO Alumnes VALUES ('30589941Z', 'Pau','Casas','Mollet','2002-05-02');
INSERT INTO Alumnes VALUES ('35324826I', 'Guillem','Montané','Canovelles','2002-02-17');
INSERT INTO Alumnes VALUES ('71750942E', 'Dani','Iglesias','Puigreig','2002-01-16');
INSERT INTO Alumnes VALUES ('26493584T', 'Sergi','Bonilla','Les Franqueses del Vallès','2001-08-31');
INSERT INTO Alumnes VALUES ('71499370U', 'Martí','Ferreiro','Tona','2000-06-18');
INSERT INTO Alumnes VALUES ('73644832H', 'Marta','Jiménez','Sabadell',NULL);
INSERT INTO Alumnes VALUES ('78282103C', 'David','Iglesias','Vic','2002-07-05');
INSERT INTO Alumnes VALUES ('19115958Y', 'Sergi','Comas','Terrassa','2002-03-14');
INSERT INTO Alumnes VALUES ('08692955C', 'Laura','Vilar','Moià','2000-08-16');
INSERT INTO Alumnes VALUES ('08871248X', 'Fran','Bonilla','Hospitalet del Llobregat',NULL);
INSERT INTO Alumnes VALUES ('35200251L', 'Mònica','Ferreiro','Vic','2002-07-03');
INSERT INTO Alumnes VALUES ('53162659F', 'Josep','García','Puigreig','2000-06-01');
INSERT INTO Alumnes VALUES ('20761781X', 'Susanna','Sánchez','Canovelles','2002-01-22');
INSERT INTO Alumnes VALUES ('18556936S', 'Guillem','Ramos','Manresa','2002-10-02');
INSERT INTO Alumnes VALUES ('92386019T', 'Maria','Ramos','Mollet',NULL);
INSERT INTO Alumnes VALUES ('67096385D', 'Susanna','Mayoral','Aiguafreda','2002-07-04');
INSERT INTO Alumnes VALUES ('28200373S', 'Maria','Bonilla','Torelló','2000-12-21');
INSERT INTO Alumnes VALUES ('54762175C', 'Anna','Grifé','Vic','2001-06-08');
INSERT INTO Alumnes VALUES ('10035499E', 'Marta','Reyes','La Roca del Vallès','2001-04-30');
INSERT INTO Alumnes VALUES ('49409644K', 'Josep','Torra','Mollet',NULL);
INSERT INTO Alumnes VALUES ('30670282C', 'Pau','Isern','Sant Cugat del Vallès','2001-02-12');
INSERT INTO Alumnes VALUES ('70892300L', 'Laura','Isern','Les Franqueses del Vallès','2001-01-27');
INSERT INTO Alumnes VALUES ('92614187P', 'Fran','Casas','Manresa','2002-02-14');
INSERT INTO Alumnes VALUES ('27178954F', 'Irene','Reyes','Terrassa',NULL);
INSERT INTO Alumnes VALUES ('91969671X', 'Iván','Casas','Centelles',NULL);
INSERT INTO Alumnes VALUES ('95527837M', 'Cristina','Santos','Sant Celoni','2002-12-02');
INSERT INTO Alumnes VALUES ('87266292N', 'Cristina','García','La Garriga','2001-03-14');
INSERT INTO Alumnes VALUES ('63544886G', 'Maria','Arbós','Tona','2002-10-14');
INSERT INTO Alumnes VALUES ('60100020B', 'Susanna','Arbós','Torelló','2001-05-10');
INSERT INTO Alumnes VALUES ('66250653C', 'Susanna','Torra','Sant Cugat del Vallès','2002-11-28');
INSERT INTO Alumnes VALUES ('95713681H', 'Irene','Ramos','Barcelona','2000-12-20');
INSERT INTO Alumnes VALUES ('02520929L', 'Marc','González','Tona','2001-07-03');
INSERT INTO Alumnes VALUES ('25543525W', 'Jordi','Reyes','Sant Celoni','2001-04-05');
INSERT INTO Alumnes VALUES ('02975713K', 'Marta','Porti','Moià',NULL);
INSERT INTO Alumnes VALUES ('02955141L', 'Pau','Ramisa','Moià','2002-05-12');
INSERT INTO Alumnes VALUES ('74694777N', 'Marc','Porti','La Roca del Vallès','2002-04-28');
INSERT INTO Alumnes VALUES ('11308535U', 'Susanna','Bonilla','La Garriga','2000-08-12');
INSERT INTO Alumnes VALUES ('23259881D', 'Dani','Iglesias','Mollet','2002-02-22');
INSERT INTO Alumnes VALUES ('01490445R', 'Sergi','Ferreiro','Granollers','2001-11-23');
INSERT INTO Alumnes VALUES ('18383027P', 'Laura','Molas','Montcada','2002-08-07');
INSERT INTO Alumnes VALUES ('50521535K', 'Iván','Isern','Sant Celoni','2002-08-26');
INSERT INTO Alumnes VALUES ('73713063D', 'Jordi','Iglesias','La Garriga',NULL);
INSERT INTO Alumnes VALUES ('71054984P', 'Mònica','Mayoral','Sabadell',NULL);
INSERT INTO Alumnes VALUES ('87953906Q', 'Anna','Isern','Tona','2000-06-06');
INSERT INTO Alumnes VALUES ('81390241H', 'Júlia','Reyes','Vic','2001-06-30');
INSERT INTO Alumnes VALUES ('71567756R', 'Cristina','Ferreiro','Torelló','2000-04-26');
INSERT INTO Alumnes VALUES ('49946626E', 'Pau','Montané','Sabadell','2002-03-30');
INSERT INTO Alumnes VALUES ('88370724J', 'Guillem','Puiggrós','Sant Cugat del Vallès',NULL);
INSERT INTO Alumnes VALUES ('12581039K', 'Paula','Vilar','Aiguafreda','2002-09-17');
INSERT INTO Alumnes VALUES ('17509938P', 'Fran','Porti','Sant Cugat del Vallès','2000-09-10');
INSERT INTO Alumnes VALUES ('79015992E', 'Guillem','Arbós','Puigreig','2002-03-10');
INSERT INTO Alumnes VALUES ('03401150P', 'Josep','Casas','Centelles','2000-04-21');
INSERT INTO Alumnes VALUES ('50637097S', 'Martí','González','Mollet','2002-01-01');
INSERT INTO Alumnes VALUES ('73716695F', 'Susanna','Reyes','Mollet','2002-01-25');
INSERT INTO Alumnes VALUES ('30559714O', 'Júlia','Ramisa','Manresa','2001-12-30');
INSERT INTO Alumnes VALUES ('90610787L', 'Sílvia','Ramos','Tona',NULL);
INSERT INTO Alumnes VALUES ('63091937N', 'Paula','Porti','Barcelona','2001-04-29');
INSERT INTO Alumnes VALUES ('89365991X', 'Maria','Jiménez','La Garriga',NULL);
INSERT INTO Alumnes VALUES ('59815459O', 'Maria','Ramos','Vic','2001-11-20');
INSERT INTO Alumnes VALUES ('30049508J', 'Josep','González','Folgueroles','2002-06-12');
INSERT INTO Alumnes VALUES ('28015853V', 'David','Porti','La Garriga','2001-12-09');
INSERT INTO Alumnes VALUES ('49519908I', 'David','Arbós','Folgueroles','2001-02-06');
INSERT INTO Alumnes VALUES ('69797479T', 'Sergi','Santos','Tona',NULL);
INSERT INTO Alumnes VALUES ('72355316K', 'Irene','Santos','Montcada',NULL);
INSERT INTO Alumnes VALUES ('06433610J', 'Iván','Reyes','Centelles',NULL);
INSERT INTO Alumnes VALUES ('27394540M', 'Martí','Ramos','Aiguafreda','2000-08-19');
INSERT INTO Alumnes VALUES ('19691138S', 'Guillem','Arbós','Arenys de Mar','2000-07-17');
INSERT INTO Alumnes VALUES ('62051994X', 'Martí','García','Aiguafreda','2002-07-13');
INSERT INTO Alumnes VALUES ('09374209B', 'Dani','Bonilla','Sabadell',NULL);
INSERT INTO Alumnes VALUES ('32359808K', 'Maria','Mayoral','Hospitalet del Llobregat','2001-12-12');
INSERT INTO Alumnes VALUES ('71179249S', 'Paula','Ferreiro','Montcada','2000-10-08');
INSERT INTO Alumnes VALUES ('01482232R', 'Sergi','Jiménez','Moià','2000-10-27');
INSERT INTO Alumnes VALUES ('07110170D', 'Marta','Ramos','Centelles',NULL);
INSERT INTO Alumnes VALUES ('73932866J', 'Paula','Puiggrós','Sant Celoni','2002-04-15');
INSERT INTO Alumnes VALUES ('92208487U', 'Maria','Mayoral','La Garriga',NULL);
INSERT INTO Alumnes VALUES ('13444549R', 'Maria','Puiggrós','Montcada','2001-04-27');
INSERT INTO Alumnes VALUES ('84544443A', 'Martí','Sánchez','Tona',NULL);
INSERT INTO Alumnes VALUES ('25172128L', 'Júlia','Ramos','Hospitalet del Llobregat','2001-11-29');
INSERT INTO Alumnes VALUES ('45036105X', 'Susanna','Ramos','Moià','2001-04-27');
INSERT INTO Alumnes VALUES ('46646980F', 'Pau','Ferreiro','Vic','2002-03-03');
INSERT INTO Alumnes VALUES ('38911227I', 'Marc','García','Aiguafreda','2000-08-04');
INSERT INTO Alumnes VALUES ('88420333B', 'David','Reyes','Sabadell','2001-10-08');
INSERT INTO Alumnes VALUES ('31576200Y', 'Júlia','Ramos','Granollers',NULL);
INSERT INTO Alumnes VALUES ('01675072S', 'Joan','Grifé','Puigreig','2000-08-21');
INSERT INTO Alumnes VALUES ('49151472Y', 'Martí','Porti','Sant Celoni',NULL);
INSERT INTO Alumnes VALUES ('52617967S', 'Sergi','García','La Garriga','2001-04-09');
INSERT INTO Alumnes VALUES ('34109837N', 'Paula','Montané','Canovelles','2000-06-12');
INSERT INTO Alumnes VALUES ('51946250F', 'Pau','Torra','Granollers','2001-12-24');
INSERT INTO Alumnes VALUES ('19202973A', 'Marta','Bonilla','Granollers','2002-07-25');
INSERT INTO Alumnes VALUES ('67993138P', 'Iván','Montané','La Roca del Vallès','2001-07-23');
INSERT INTO Alumnes VALUES ('76837352R', 'Susanna','Sánchez','Mollet','2000-10-30');
INSERT INTO Alumnes VALUES ('70311240W', 'Mònica','Iglesias','Sant Cugat del Vallès','2000-06-03');
INSERT INTO Alumnes VALUES ('85602777T', 'Irene','Grifé','La Roca del Vallès','2000-04-23');
INSERT INTO Alumnes VALUES ('63924272D', 'Irene','Bonilla','Montcada','2001-02-14');
INSERT INTO Alumnes VALUES ('03205856J', 'Anna','Bonilla','Badalona',NULL);
INSERT INTO Alumnes VALUES ('38324688J', 'Jordi','Jiménez','La Roca del Vallès',NULL);
INSERT INTO Alumnes VALUES ('36751120T', 'Anna','Isern','Puigreig','2002-07-11');
INSERT INTO Alumnes VALUES ('65499784P', 'Joan','Jiménez','La Garriga',NULL);
INSERT INTO Alumnes VALUES ('27937352K', 'Anna','Grifé','Arenys de Mar','2000-08-07');
INSERT INTO Alumnes VALUES ('95740096A', 'Susanna','Isern','Vic','2001-03-03');
INSERT INTO Alumnes VALUES ('51848771W', 'David','Grifé','Les Franqueses del Vallès','2001-09-05');
INSERT INTO Alumnes VALUES ('83290159B', 'Jordi','Arbós','Aiguafreda','2001-07-30');
INSERT INTO Alumnes VALUES ('72606783L', 'Marc','Ferreiro','Montcada','2000-09-23');
INSERT INTO Alumnes VALUES ('02079348V', 'Laura','Ramisa','Mollet','2002-10-02');
INSERT INTO Alumnes VALUES ('98177203W', 'Pau','Reyes','La Garriga','2001-03-24');
INSERT INTO Alumnes VALUES ('83239586K', 'Guillem','Santos','Badalona','2002-12-05');
INSERT INTO Alumnes VALUES ('15168000X', 'Júlia','Porti','Sant Cugat del Vallès','2001-11-20');
INSERT INTO Alumnes VALUES ('30253715J', 'Guillem','Mayoral','Badalona',NULL);
INSERT INTO Alumnes VALUES ('13396622T', 'Pau','Sánchez','Granollers','2000-09-14');
INSERT INTO Alumnes VALUES ('73813670G', 'Susanna','Iglesias','Moià','2001-01-05');
INSERT INTO Alumnes VALUES ('21721878M', 'Paula','Molas','Badalona','2001-04-12');
INSERT INTO Alumnes VALUES ('17713608N', 'Fran','Garrido','Tona','2002-12-21');
INSERT INTO Alumnes VALUES ('47481148E', 'Montse','Vilar','Granollers','2002-04-10');
INSERT INTO Alumnes VALUES ('00264480B', 'Paula','Comas','Les Franqueses del Vallès',NULL);
INSERT INTO Alumnes VALUES ('93096399S', 'Susanna','Porti','Canovelles','2000-04-14');
INSERT INTO Alumnes VALUES ('31254487A', 'Júlia','Arbós','Arenys de Mar','2001-12-16');
INSERT INTO Alumnes VALUES ('60410202C', 'Marc','Puiggrós','Montcada','2002-07-10');
INSERT INTO Alumnes VALUES ('74332066A', 'Sergi','Casas','Terrassa','2002-02-04');
INSERT INTO Alumnes VALUES ('88305955Z', 'Marta','Ramisa','Folgueroles','2002-05-09');
INSERT INTO Alumnes VALUES ('91848339H', 'Joan','Puiggrós','Granollers',NULL);
INSERT INTO Alumnes VALUES ('30116361Y', 'Martí','Santos','Arenys de Mar',NULL);
INSERT INTO Alumnes VALUES ('49767652U', 'Josep','Grifé','Aiguafreda','2001-01-13');
INSERT INTO Alumnes VALUES ('14432340D', 'Joan','Arbós','Torelló','2002-12-10');
INSERT INTO Alumnes VALUES ('91572147C', 'Paula','Garrido','Canovelles','2001-08-29');
INSERT INTO Alumnes VALUES ('70408665Y', 'Maria','Santos','Canovelles','2001-10-14');
INSERT INTO Alumnes VALUES ('43022094U', 'Susanna','Bonilla','Les Franqueses del Vallès',NULL);
INSERT INTO Alumnes VALUES ('36887395G', 'Júlia','Reyes','Canovelles',NULL);
INSERT INTO Alumnes VALUES ('01932857B', 'Marta','Vilar','Vic','2001-09-14');
INSERT INTO Alumnes VALUES ('75490482T', 'David','Sánchez','Aiguafreda','2000-10-19');
INSERT INTO Alumnes VALUES ('72386347F', 'Marc','Sánchez','Centelles','2002-06-04');
INSERT INTO Alumnes VALUES ('88936206E', 'Cristina','Santos','Centelles','2001-04-18');
INSERT INTO Alumnes VALUES ('20000938V', 'Sergi','Puiggrós','Barcelona',NULL);
INSERT INTO Alumnes VALUES ('12162818C', 'Sergi','Puiggrós','Terrassa','2001-03-05');
INSERT INTO Alumnes VALUES ('52887031F', 'Marc','García','Canovelles','2002-10-12');
INSERT INTO Alumnes VALUES ('74120066F', 'David','Iglesias','La Roca del Vallès','2001-09-28');
INSERT INTO Alumnes VALUES ('83427550D', 'Anna','Reyes','Aiguafreda','2001-10-29');
INSERT INTO Alumnes VALUES ('59121144U', 'Marta','Casas','Folgueroles','2001-05-14');
INSERT INTO Alumnes VALUES ('85387779H', 'Pau','Garrido','Manresa','2000-11-04');
INSERT INTO Alumnes VALUES ('15440785Y', 'David','Arbós','Mollet',NULL);
INSERT INTO Alumnes VALUES ('41018429X', 'Guillem','Vilar','Aiguafreda','2001-08-21');
INSERT INTO Alumnes VALUES ('50191586P', 'Júlia','Ramisa','Granollers','2002-07-01');
INSERT INTO Alumnes VALUES ('47726380L', 'Sergi','Grifé','Hospitalet del Llobregat','2000-05-14');
INSERT INTO Alumnes VALUES ('25817660S', 'Cristina','Isern','Sabadell','2001-04-12');
INSERT INTO Alumnes VALUES ('77771285Q', 'Dani','Puiggrós','Folgueroles','2001-01-07');
INSERT INTO Alumnes VALUES ('34378401Q', 'Montse','Casas','Barcelona','2002-01-03');
INSERT INTO Alumnes VALUES ('49673411E', 'Pau','Isern','Moià',NULL);
INSERT INTO Alumnes VALUES ('62470606T', 'Cristina','Ramisa','Sant Cugat del Vallès',NULL);
INSERT INTO Alumnes VALUES ('62245863Y', 'Paula','Porti','Granollers','2001-11-28');
INSERT INTO Alumnes VALUES ('88820069I', 'Pau','Isern','La Garriga',NULL);
INSERT INTO Alumnes VALUES ('31622168P', 'David','Ramisa','Moià','2001-07-02');
INSERT INTO Alumnes VALUES ('29025416V', 'Susanna','Comas','Montcada','2001-11-03');
INSERT INTO Alumnes VALUES ('17193905C', 'Sílvia','Reyes','Mollet','2001-10-28');
INSERT INTO Alumnes VALUES ('64344724Q', 'Irene','Molas','Manresa','2000-08-16');
INSERT INTO Alumnes VALUES ('50903144D', 'Martí','Comas','Les Franqueses del Vallès','2002-07-15');
INSERT INTO Alumnes VALUES ('98117406U', 'Maria','Ferreiro','Puigreig','2002-04-20');
INSERT INTO Alumnes VALUES ('44339318T', 'Guillem','Porti','Aiguafreda',NULL);
INSERT INTO Alumnes VALUES ('99617783E', 'David','Reyes','La Garriga',NULL);
INSERT INTO Alumnes VALUES ('51988925V', 'Fran','Santos','Terrassa','2001-09-29');
INSERT INTO Alumnes VALUES ('81589790P', 'Joan','Arbós','La Garriga','2000-05-22');
INSERT INTO Alumnes VALUES ('29473190W', 'Guillem','Grifé','La Roca del Vallès','2002-08-17');
INSERT INTO Alumnes VALUES ('26509373R', 'Anna','Grifé','Hospitalet del Llobregat','2002-10-11');
INSERT INTO Alumnes VALUES ('49135100D', 'David','Torra','Sant Cugat del Vallès','2001-07-24');
INSERT INTO Alumnes VALUES ('35932620R', 'Pau','García','Les Franqueses del Vallès','2001-01-13');
INSERT INTO Alumnes VALUES ('50972609O', 'Júlia','Iglesias','Canovelles','2001-10-27');
INSERT INTO Alumnes VALUES ('23259311D', 'Pau','Santos','Montcada','2001-08-17');
INSERT INTO Alumnes VALUES ('44657717X', 'Montse','Jiménez','Puigreig','2002-06-26');
INSERT INTO Alumnes VALUES ('37755757F', 'Irene','Mayoral','Mollet',NULL);
INSERT INTO Alumnes VALUES ('26710531U', 'Anna','Arbós','Sabadell',NULL);
INSERT INTO Alumnes VALUES ('44086331H', 'Sergi','Ramos','Puigreig',NULL);
INSERT INTO Alumnes VALUES ('91083025A', 'Josep','Iglesias','Canovelles',NULL);
INSERT INTO Alumnes VALUES ('25394330Y', 'Anna','Ramisa','Centelles','2000-04-17');
INSERT INTO Alumnes VALUES ('00084512H', 'Anna','Sánchez','Hospitalet del Llobregat','2001-03-25');
INSERT INTO Alumnes VALUES ('67666004O', 'Laura','Arbós','Canovelles','2002-03-15');
INSERT INTO Alumnes VALUES ('49983701Y', 'Maria','Porti','Aiguafreda','2001-04-07');
INSERT INTO Alumnes VALUES ('85465254Y', 'Laura','Mayoral','Vic','2002-11-09');
INSERT INTO Alumnes VALUES ('36890014Y', 'Sergi','Santos','Folgueroles','2001-05-12');
INSERT INTO Alumnes VALUES ('62350189Q', 'Martí','García','Folgueroles','2001-06-23');
INSERT INTO Alumnes VALUES ('72502429A', 'Irene','Torra','Barcelona','2000-05-03');
INSERT INTO Alumnes VALUES ('88989533J', 'Josep','Ramos','Les Franqueses del Vallès','2000-09-11');
INSERT INTO Alumnes VALUES ('16116468A', 'Iván','Comas','Manresa',NULL);
INSERT INTO Alumnes VALUES ('21635449C', 'Maria','Sánchez','Moià','2001-09-12');
INSERT INTO Alumnes VALUES ('65392887L', 'David','Montané','Canovelles','2002-01-15');
INSERT INTO Alumnes VALUES ('67590982T', 'Mònica','Ferreiro','Terrassa','2002-05-28');
INSERT INTO Alumnes VALUES ('41439235B', 'Anna','Sánchez','Granollers','2001-01-17');
INSERT INTO Alumnes VALUES ('06953264J', 'David','Iglesias','Terrassa','2001-08-22');
INSERT INTO Alumnes VALUES ('29256501R', 'Paula','Arbós','Puigreig','2002-02-08');
INSERT INTO Alumnes VALUES ('96070744M', 'Sílvia','González','Folgueroles','2001-06-18');
INSERT INTO Alumnes VALUES ('65637092H', 'Jordi','Casas','La Roca del Vallès','2001-12-30');
INSERT INTO Alumnes VALUES ('37545639G', 'Marta','Ramos','La Roca del Vallès','2000-10-01');
INSERT INTO Alumnes VALUES ('77406639Q', 'Martí','Jiménez','Sant Cugat del Vallès','2001-09-28');
INSERT INTO Alumnes VALUES ('07406091M', 'Iván','Ferreiro','Puigreig','2001-11-29');
INSERT INTO Alumnes VALUES ('84810922R', 'Martí','Mayoral','Tona',NULL);
INSERT INTO Alumnes VALUES ('06385219A', 'Montse','Porti','Sant Cugat del Vallès','2002-07-25');
INSERT INTO Alumnes VALUES ('50938794U', 'Iván','Ferreiro','Hospitalet del Llobregat',NULL);
INSERT INTO Alumnes VALUES ('96313328O', 'Martí','Comas','Vic','2002-06-18');
INSERT INTO Alumnes VALUES ('77185526A', 'Maria','Grifé','Folgueroles','2000-05-21');
INSERT INTO Alumnes VALUES ('00780025I', 'Sílvia','Iglesias','La Garriga',NULL);
INSERT INTO Alumnes VALUES ('73363671D', 'Dani','Molas','Hospitalet del Llobregat','2000-12-22');
INSERT INTO Alumnes VALUES ('88898999G', 'Jordi','Grifé','Puigreig',NULL);
INSERT INTO Alumnes VALUES ('28813805E', 'Fran','Casas','Terrassa','2001-12-19');
INSERT INTO Alumnes VALUES ('02748627S', 'Irene','González','Granollers','2000-07-11');
INSERT INTO Alumnes VALUES ('50655741H', 'Cristina','Reyes','Montcada','2000-04-01');
INSERT INTO Alumnes VALUES ('41306417F', 'Maria','Puiggrós','Montcada','2000-05-10');
INSERT INTO Alumnes VALUES ('94575851O', 'Marc','Molas','Badalona',NULL);
INSERT INTO Alumnes VALUES ('58887335M', 'Laura','Santos','Terrassa',NULL);
INSERT INTO Alumnes VALUES ('98424149U', 'Marta','Isern','Granollers',NULL);
INSERT INTO Alumnes VALUES ('81764495A', 'Mònica','Grifé','Aiguafreda','2001-01-13');
INSERT INTO Alumnes VALUES ('62489727W', 'Sergi','García','Folgueroles',NULL);
INSERT INTO Alumnes VALUES ('45760504K', 'Susanna','Reyes','Folgueroles','2002-12-22');
INSERT INTO Alumnes VALUES ('15005757J', 'Pau','González','Puigreig','2002-05-10');
INSERT INTO Alumnes VALUES ('98376782O', 'Sergi','Montané','Aiguafreda',NULL);
INSERT INTO Alumnes VALUES ('93668326L', 'Dani','Casas','Granollers','2000-09-09');
INSERT INTO Alumnes VALUES ('94018979U', 'Pau','González','Arenys de Mar',NULL);
INSERT INTO Alumnes VALUES ('29943762R', 'Josep','González','Sant Celoni',NULL);
INSERT INTO Alumnes VALUES ('25666314T', 'Susanna','Porti','Puigreig','2001-07-09');
INSERT INTO Alumnes VALUES ('97078288Z', 'Mònica','González','Sant Celoni','2001-08-12');
INSERT INTO Alumnes VALUES ('84913907S', 'Mònica','Bonilla','Barcelona','2001-05-27');
INSERT INTO Alumnes VALUES ('19353836I', 'Guillem','Ferreiro','Moià','2002-02-16');
INSERT INTO Alumnes VALUES ('92547331V', 'Laura','Ferreiro','Badalona','2002-09-12');
INSERT INTO Alumnes VALUES ('84489250F', 'Mònica','Isern','Les Franqueses del Vallès',NULL);
INSERT INTO Alumnes VALUES ('22284528C', 'Laura','Porti','Tona','2001-03-23');
INSERT INTO Alumnes VALUES ('98250680S', 'Fran','Santos','Barcelona','2002-01-25');
INSERT INTO Alumnes VALUES ('41327057I', 'Josep','Garrido','Manresa','2000-08-11');
INSERT INTO Alumnes VALUES ('44949415E', 'Maria','Casas','Centelles','2002-02-01');
INSERT INTO Alumnes VALUES ('50183500O', 'Laura','Iglesias','Granollers','2000-09-26');
INSERT INTO Alumnes VALUES ('03292197M', 'Fran','Ramisa','La Roca del Vallès',NULL);
INSERT INTO Alumnes VALUES ('18004865Z', 'Dani','Ferreiro','Les Franqueses del Vallès','2002-03-19');
INSERT INTO Alumnes VALUES ('60341719H', 'Pau','Puiggrós','Hospitalet del Llobregat',NULL);
INSERT INTO Alumnes VALUES ('85232380J', 'David','González','Folgueroles','2000-12-20');
INSERT INTO Alumnes VALUES ('03387317Z', 'Martí','García','Granollers','2000-04-18');
INSERT INTO Alumnes VALUES ('47642092A', 'Josep','Vilar','Manresa','2001-12-16');
INSERT INTO Alumnes VALUES ('69703447S', 'Pau','Sánchez','Folgueroles','2000-09-13');
INSERT INTO Alumnes VALUES ('04149737C', 'Júlia','Arbós','Barcelona','2002-11-22');
INSERT INTO Alumnes VALUES ('94702855A', 'Sergi','Sánchez','Sant Cugat del Vallès','2000-09-17');
INSERT INTO Alumnes VALUES ('98666915L', 'Cristina','Santos','Moià','2002-07-16');
INSERT INTO Alumnes VALUES ('68537728W', 'Júlia','Bonilla','Manresa',NULL);
INSERT INTO Alumnes VALUES ('55748696O', 'Josep','Sánchez','Torelló','2001-03-24');
INSERT INTO Alumnes VALUES ('65062510A', 'Júlia','Sánchez','Arenys de Mar',NULL);
INSERT INTO Alumnes VALUES ('71324379D', 'Guillem','Grifé','Puigreig',NULL);
INSERT INTO Alumnes VALUES ('07625398H', 'Sílvia','Santos','Les Franqueses del Vallès','2000-10-12');
INSERT INTO Alumnes VALUES ('61257371L', 'Sílvia','Casas','Barcelona','2000-09-14');
INSERT INTO Alumnes VALUES ('69475621I', 'Paula','Sánchez','Tona','2002-11-30');
INSERT INTO Alumnes VALUES ('85088891D', 'Marc','González','Arenys de Mar','2000-11-21');
INSERT INTO Alumnes VALUES ('48539742U', 'Paula','Reyes','La Garriga','2002-02-14');
INSERT INTO Alumnes VALUES ('21732302J', 'Mònica','Ramisa','Barcelona',NULL);
INSERT INTO Alumnes VALUES ('15647808D', 'Montse','Jiménez','Arenys de Mar','2001-05-24');
INSERT INTO Alumnes VALUES ('13170704K', 'Júlia','Ramisa','La Roca del Vallès',NULL);
INSERT INTO Alumnes VALUES ('74213328H', 'Sílvia','Garrido','Aiguafreda',NULL);
INSERT INTO Alumnes VALUES ('81120928X', 'Joan','Puiggrós','Tona',NULL);
INSERT INTO Alumnes VALUES ('60141515O', 'Martí','Jiménez','Moià',NULL);
INSERT INTO Alumnes VALUES ('66038401M', 'Montse','Iglesias','La Roca del Vallès','2002-02-20');
INSERT INTO Alumnes VALUES ('75318945U', 'Paula','Ramos','Tona','2000-07-21');
INSERT INTO Alumnes VALUES ('76703576L', 'Paula','Arbós','Vic','2000-10-25');
INSERT INTO Alumnes VALUES ('44556246U', 'Cristina','Comas','Vic','2001-04-09');
INSERT INTO Alumnes VALUES ('28598345L', 'Jordi','Montané','Badalona','2002-04-29');
INSERT INTO Alumnes VALUES ('91386823Z', 'Sílvia','Ramos','Torelló','2002-09-18');
INSERT INTO Alumnes VALUES ('33239738B', 'Maria','Ferreiro','Tona',NULL);
INSERT INTO Alumnes VALUES ('71391617W', 'Pau','Puiggrós','Sabadell',NULL);
INSERT INTO Alumnes VALUES ('49909367O', 'Pau','Isern','Terrassa','2001-03-19');
INSERT INTO Alumnes VALUES ('26040982H', 'Dani','Ferreiro','Tona','2002-07-22');
INSERT INTO Alumnes VALUES ('27858865Z', 'Martí','Jiménez','Moià',NULL);
INSERT INTO Alumnes VALUES ('09408585D', 'Mònica','González','Moià','2002-02-06');
INSERT INTO Alumnes VALUES ('83730282I', 'Jordi','Isern','Vic',NULL);
INSERT INTO Alumnes VALUES ('88790386H', 'Pau','Ramos','Vic','2001-01-06');
INSERT INTO Alumnes VALUES ('80249634G', 'Guillem','Molas','Moià','2001-11-12');
INSERT INTO Alumnes VALUES ('79929522X', 'Pau','Ferreiro','La Roca del Vallès','2001-01-09');
INSERT INTO Alumnes VALUES ('57669721P', 'Marta','García','La Roca del Vallès','2001-09-29');
INSERT INTO Alumnes VALUES ('33032480A', 'Marc','Vilar','Granollers',NULL);
INSERT INTO Alumnes VALUES ('38818595M', 'Irene','Ramos','Les Franqueses del Vallès',NULL);
INSERT INTO Alumnes VALUES ('89828737S', 'Montse','Jiménez','Sant Celoni','2000-07-09');
INSERT INTO Alumnes VALUES ('05471201Q', 'Cristina','Mayoral','Manresa','2000-08-27');
INSERT INTO Alumnes VALUES ('94398758Y', 'Irene','Ferreiro','Sant Cugat del Vallès','2001-06-12');
INSERT INTO Alumnes VALUES ('44264373Z', 'Dani','Montané','Les Franqueses del Vallès','2001-11-02');
INSERT INTO Alumnes VALUES ('50927162J', 'Joan','Jiménez','Aiguafreda','2002-07-22');
INSERT INTO Alumnes VALUES ('46427357D', 'Joan','Reyes','Sant Cugat del Vallès','2002-12-22');
INSERT INTO Alumnes VALUES ('05083587V', 'Marc','Ramos','Aiguafreda','2000-12-27');
INSERT INTO Alumnes VALUES ('55309340V', 'Joan','Torra','Vic','2001-03-03');
INSERT INTO Alumnes VALUES ('39263437X', 'Guillem','Comas','Vic',NULL);
INSERT INTO Alumnes VALUES ('14215140U', 'Mònica','Bonilla','Centelles','2000-11-28');
INSERT INTO Alumnes VALUES ('87697231S', 'David','González','Granollers','2001-10-12');
INSERT INTO Alumnes VALUES ('56263474P', 'Irene','Jiménez','Canovelles',NULL);
INSERT INTO Alumnes VALUES ('26021625P', 'Iván','Isern','Badalona',NULL);
INSERT INTO Alumnes VALUES ('28449709G', 'Iván','Ramos','Manresa','2001-03-31');
INSERT INTO Alumnes VALUES ('97869758O', 'Jordi','Puiggrós','Vic','2002-08-05');
INSERT INTO Alumnes VALUES ('90098088C', 'Martí','Grifé','Folgueroles','2001-11-10');
INSERT INTO Alumnes VALUES ('68097316F', 'Marta','Garrido','Vic','2000-11-08');
INSERT INTO Alumnes VALUES ('94333926F', 'Laura','Torra','Manresa','2000-07-05');
INSERT INTO Alumnes VALUES ('58105473A', 'Josep','Bonilla','Centelles','2000-12-15');
INSERT INTO Alumnes VALUES ('69898586S', 'Sílvia','García','La Garriga','2002-05-06');
INSERT INTO Alumnes VALUES ('47535816J', 'Maria','Torra','Arenys de Mar','2000-10-23');
INSERT INTO Alumnes VALUES ('09730866Y', 'Marta','Casas','Hospitalet del Llobregat',NULL);
INSERT INTO Alumnes VALUES ('39100332K', 'Martí','Grifé','Centelles','2001-11-17');
INSERT INTO Alumnes VALUES ('76046665K', 'Marta','Iglesias','Granollers','2001-12-11');
INSERT INTO Alumnes VALUES ('63190053M', 'Pau','Santos','Arenys de Mar',NULL);
INSERT INTO Alumnes VALUES ('14548565G', 'Montse','Grifé','Montcada','2002-04-07');
INSERT INTO Alumnes VALUES ('47807142X', 'Júlia','Isern','Centelles','2000-11-05');
INSERT INTO Alumnes VALUES ('72231808O', 'Anna','Molas','Manresa','2001-03-30');
INSERT INTO Alumnes VALUES ('39110573C', 'Pau','Puiggrós','Tona','2000-09-28');
INSERT INTO Alumnes VALUES ('52629945E', 'David','Puiggrós','Mollet','2001-07-27');
INSERT INTO Alumnes VALUES ('80137383R', 'Anna','Comas','Sant Cugat del Vallès','2001-08-02');
INSERT INTO Alumnes VALUES ('82223069H', 'Laura','Grifé','Centelles','2002-11-24');
INSERT INTO Alumnes VALUES ('52561581F', 'Josep','Garrido','Centelles','2002-04-07');
INSERT INTO Alumnes VALUES ('79093270Z', 'Josep','Grifé','La Garriga','2001-02-09');
INSERT INTO Alumnes VALUES ('92963666P', 'David','Comas','Puigreig','2002-11-19');
INSERT INTO Alumnes VALUES ('97867866F', 'Mònica','Mayoral','Badalona','2001-07-01');
INSERT INTO Alumnes VALUES ('34883827R', 'Guillem','Montané','Folgueroles',NULL);
INSERT INTO Alumnes VALUES ('06812185B', 'Guillem','Mayoral','Montcada','2000-12-26');
INSERT INTO Alumnes VALUES ('33833993O', 'Paula','Ferreiro','Granollers','2002-07-03');
INSERT INTO Alumnes VALUES ('78307594P', 'Fran','Santos','Badalona','2002-01-21');
INSERT INTO Alumnes VALUES ('83698615F', 'Iván','González','Badalona','2000-10-22');
INSERT INTO Alumnes VALUES ('78194298K', 'Iván','Mayoral','Arenys de Mar',NULL);
INSERT INTO Alumnes VALUES ('78959829Z', 'Paula','Grifé','Badalona','2002-01-15');
INSERT INTO Alumnes VALUES ('37694567J', 'Joan','Montané','Manresa',NULL);
INSERT INTO Alumnes VALUES ('90569610Z', 'Martí','Jiménez','Canovelles',NULL);
INSERT INTO Alumnes VALUES ('16924345V', 'David','Mayoral','Centelles',NULL);
INSERT INTO Alumnes VALUES ('24245789G', 'Júlia','Molas','Montcada','2002-09-25');
INSERT INTO Alumnes VALUES ('59466699P', 'Pau','Comas','Tona','2002-08-20');
INSERT INTO Alumnes VALUES ('45534026R', 'Júlia','Ramos','Sant Cugat del Vallès','2001-01-29');
INSERT INTO Alumnes VALUES ('23568683J', 'Montse','Garrido','La Garriga',NULL);
INSERT INTO Alumnes VALUES ('59442977W', 'Cristina','Iglesias','Granollers','2000-07-11');
INSERT INTO Alumnes VALUES ('95055273I', 'Maria','Vilar','Mollet',NULL);
INSERT INTO Alumnes VALUES ('66133063B', 'Marc','Arbós','Centelles','2002-07-20');
INSERT INTO Alumnes VALUES ('28083645G', 'Marc','Torra','Aiguafreda','2002-09-18');
INSERT INTO Alumnes VALUES ('95099623C', 'Guillem','Isern','Granollers','2001-01-07');
INSERT INTO Alumnes VALUES ('35376276V', 'David','García','Folgueroles','2002-11-21');
INSERT INTO Alumnes VALUES ('40693151Q', 'Irene','Santos','Barcelona',NULL);
INSERT INTO Alumnes VALUES ('09046783R', 'Guillem','Santos','Manresa','2000-08-19');
INSERT INTO Alumnes VALUES ('99323812I', 'Cristina','Santos','Puigreig','2001-05-24');
INSERT INTO Alumnes VALUES ('94251940Q', 'Júlia','Arbós','Sabadell','2002-01-08');
INSERT INTO Alumnes VALUES ('91116033Z', 'Dani','Casas','Sant Celoni','2000-09-20');
INSERT INTO Alumnes VALUES ('08562340U', 'Anna','Torra','Hospitalet del Llobregat',NULL);
INSERT INTO Alumnes VALUES ('64112932H', 'Sílvia','Bonilla','La Garriga',NULL);
INSERT INTO Alumnes VALUES ('16350322E', 'Susanna','Arbós','Canovelles','2000-07-11');
INSERT INTO Alumnes VALUES ('05487364D', 'Laura','Iglesias','Sabadell','2002-04-19');
INSERT INTO Alumnes VALUES ('29371682E', 'Maria','Porti','Hospitalet del Llobregat','2002-11-25');
INSERT INTO Alumnes VALUES ('57728237X', 'Sergi','Garrido','Sabadell','2002-09-26');
INSERT INTO Alumnes VALUES ('37320991B', 'Maria','Ramos','Arenys de Mar','2002-01-26');
INSERT INTO Alumnes VALUES ('93509412T', 'Dani','Comas','Canovelles','2001-07-24');
INSERT INTO Alumnes VALUES ('79896403X', 'Jordi','Mayoral','Hospitalet del Llobregat','2002-07-29');
INSERT INTO Alumnes VALUES ('35446703R', 'Anna','Santos','Folgueroles','2002-01-12');
INSERT INTO Alumnes VALUES ('46535495L', 'Júlia','Iglesias','Tona','2002-07-06');
INSERT INTO Alumnes VALUES ('72218351B', 'Martí','Iglesias','Aiguafreda',NULL);
INSERT INTO Alumnes VALUES ('66744622G', 'Sílvia','Jiménez','Sant Cugat del Vallès','2002-09-08');
INSERT INTO Alumnes VALUES ('06872353J', 'Anna','Comas','Folgueroles','2000-08-21');
INSERT INTO Alumnes VALUES ('77234352A', 'Anna','Arbós','La Roca del Vallès',NULL);
INSERT INTO Alumnes VALUES ('67874849H', 'Anna','Mayoral','Sant Celoni','2001-12-16');
INSERT INTO Alumnes VALUES ('24537372L', 'Cristina','Arbós','Folgueroles','2001-01-16');
INSERT INTO Alumnes VALUES ('63941727G', 'Sílvia','Garrido','Montcada','2002-10-19');
INSERT INTO Alumnes VALUES ('55191522M', 'Pau','Puiggrós','Manresa','2001-05-01');
INSERT INTO Alumnes VALUES ('90502502P', 'Sergi','Ramos','Montcada',NULL);
INSERT INTO Alumnes VALUES ('15167727B', 'Josep','Porti','Sabadell','2000-04-18');
INSERT INTO Alumnes VALUES ('26860664L', 'Josep','Ferreiro','Granollers','2001-07-22');
INSERT INTO Alumnes VALUES ('67644433X', 'Sergi','Grifé','Tona','2001-12-28');
INSERT INTO Alumnes VALUES ('79925345J', 'Mònica','Porti','Vic',NULL);
INSERT INTO Alumnes VALUES ('35476198Y', 'Iván','Reyes','Montcada','2001-01-18');
INSERT INTO Alumnes VALUES ('77413410N', 'Iván','Molas','Centelles','2001-03-08');
INSERT INTO Alumnes VALUES ('80326377Y', 'Montse','Reyes','Aiguafreda',NULL);
INSERT INTO Alumnes VALUES ('20479097K', 'Iván','Casas','Sant Celoni','2002-06-05');
INSERT INTO Alumnes VALUES ('12340166Y', 'Sílvia','Garrido','Terrassa','2001-11-10');
INSERT INTO Alumnes VALUES ('45476510U', 'Josep','Molas','Folgueroles','2001-07-06');
INSERT INTO Alumnes VALUES ('95418908J', 'Mònica','Ferreiro','Terrassa','2002-11-10');
INSERT INTO Alumnes VALUES ('86056232F', 'Dani','Ferreiro','Granollers',NULL);
INSERT INTO Alumnes VALUES ('81300590I', 'Dani','Porti','Sabadell','2001-02-10');
INSERT INTO Alumnes VALUES ('13174785S', 'Laura','Jiménez','Granollers',NULL);
INSERT INTO Alumnes VALUES ('14814687F', 'Paula','Bonilla','Sant Celoni','2001-05-07');
INSERT INTO Alumnes VALUES ('43596365Y', 'Susanna','Ramos','Hospitalet del Llobregat',NULL);
INSERT INTO Alumnes VALUES ('47627986T', 'Guillem','Sánchez','Manresa','2000-08-01');
INSERT INTO Alumnes VALUES ('50058303H', 'Júlia','Porti','Montcada',NULL);
INSERT INTO Alumnes VALUES ('82470232T', 'Maria','Santos','Sant Cugat del Vallès','2001-03-16');
INSERT INTO Alumnes VALUES ('74886782O', 'Montse','Montané','Badalona','2002-08-19');
INSERT INTO Alumnes VALUES ('86915216L', 'Susanna','Comas','Sant Cugat del Vallès','2002-04-15');
INSERT INTO Alumnes VALUES ('96945041V', 'Cristina','Bonilla','Aiguafreda','2000-05-31');
INSERT INTO Alumnes VALUES ('10878597S', 'Anna','Arbós','Canovelles',NULL);
INSERT INTO Alumnes VALUES ('14565127Y', 'Anna','Bonilla','Badalona','2000-05-14');
INSERT INTO Alumnes VALUES ('17117619J', 'Martí','García','Mollet','2001-01-04');
INSERT INTO Alumnes VALUES ('03509951Z', 'Mònica','Porti','Montcada','2001-02-28');
INSERT INTO Alumnes VALUES ('33013428G', 'Marta','Vilar','Sant Cugat del Vallès',NULL);
INSERT INTO Alumnes VALUES ('70749738T', 'Mònica','Santos','Centelles',NULL);
INSERT INTO Alumnes VALUES ('99321572J', 'Fran','Ferreiro','Moià','2002-08-22');
INSERT INTO Alumnes VALUES ('28270964N', 'Pau','Ramos','Montcada','2001-02-12');
INSERT INTO Alumnes VALUES ('92526700D', 'Susanna','Jiménez','Granollers','2002-01-18');
INSERT INTO Alumnes VALUES ('88551780W', 'Dani','Molas','La Garriga','2000-06-28');
INSERT INTO Alumnes VALUES ('19894282J', 'Dani','Ferreiro','Manresa',NULL);
INSERT INTO Alumnes VALUES ('08636627H', 'Guillem','Jiménez','Terrassa','2002-08-11');
INSERT INTO Alumnes VALUES ('26468497L', 'Maria','Vilar','La Garriga',NULL);
INSERT INTO Alumnes VALUES ('09176346O', 'David','Reyes','Arenys de Mar','2000-08-07');
INSERT INTO Alumnes VALUES ('72640138A', 'Fran','Iglesias','Manresa',NULL);
INSERT INTO Alumnes VALUES ('42002408N', 'Sergi','Ramos','La Garriga',NULL);
INSERT INTO Alumnes VALUES ('67185436U', 'Marta','Ramos','Badalona','2002-06-23');
INSERT INTO Alumnes VALUES ('44755718R', 'Sílvia','Ferreiro','Arenys de Mar','2002-07-08');
INSERT INTO Alumnes VALUES ('26447638N', 'Susanna','Porti','La Garriga',NULL);
INSERT INTO Alumnes VALUES ('96864264B', 'Iván','Torra','Tona','2002-08-08');
INSERT INTO Alumnes VALUES ('25592312M', 'Júlia','Casas','Aiguafreda','2002-07-19');
INSERT INTO Alumnes VALUES ('45144868B', 'Pau','Bonilla','Badalona','2002-08-21');
INSERT INTO Alumnes VALUES ('75465369H', 'Iván','García','Sant Cugat del Vallès','2002-01-22');
INSERT INTO Alumnes VALUES ('58962785J', 'Josep','Santos','Terrassa','2002-11-15');
INSERT INTO Alumnes VALUES ('12720149F', 'Marta','Ramos','Mollet','2002-07-24');
INSERT INTO Alumnes VALUES ('17489872M', 'Pau','Iglesias','Sant Cugat del Vallès','2001-07-16');
INSERT INTO Alumnes VALUES ('34175742F', 'Sergi','Bonilla','Canovelles','2001-11-09');
INSERT INTO Alumnes VALUES ('62796338G', 'David','González','Manresa','2000-04-17');
INSERT INTO Alumnes VALUES ('01512638K', 'David','Molas','Folgueroles','2000-05-22');
INSERT INTO Alumnes VALUES ('82905013C', 'Sergi','Vilar','Vic',NULL);
INSERT INTO Alumnes VALUES ('76287186L', 'Josep','Ramisa','Barcelona','2002-09-05');
INSERT INTO Alumnes VALUES ('94243101S', 'Júlia','Garrido','Sabadell','2002-02-19');
INSERT INTO Alumnes VALUES ('19456430N', 'Martí','Iglesias','Folgueroles','2002-11-30');
INSERT INTO Alumnes VALUES ('75477002H', 'Júlia','Bonilla','La Roca del Vallès','2001-07-13');
INSERT INTO Alumnes VALUES ('31410938X', 'Marc','Arbós','Aiguafreda','2001-09-12');
INSERT INTO Alumnes VALUES ('35271140R', 'Júlia','Vilar','Tona',NULL);

-- 1. Obtenir el dni, ciutat, nom i cognom de tots els alumnes que són de fora de Granollers i Mollet.
-- Mostrar els resultats ordenats alfabèticament per nom/cognom alumne i ciutat.
select DNI, ciutat, nom, cognom from alumnes
where ciutat!='Granollers' and ciutat!='Mollet'
order by nom, cognom, ciutat asc;

-- 2. Obtenir un llistat complet de les UFs amb un preu superior a 100€ i ordenar les mateixes en base al seu codi. 
-- A més a més, el preu s’ha d’expressar amb el següent format  “#.###,00” i indicant que els preus són en “€”. 
-- Per exemple  1234.34 s’hauria de visualitzar com 1.234,34€
select Codi, Nom, Hores, concat(Format (preu,2,'de_DE'), '€') as Preu, Mes from uf
where preu>100
order by codi asc;

-- 3. Obtenir el total d’alumnes que no tenen el cognom González.
select count(DNI) from alumnes
where Cognom!='González';

-- 4. Mostra un llistat desglossat mes a mes, on es calculin el total d’hores de UFs que s’imparteixen en cadascun d’ells.
--  El llistat s’ha d’ordenar en coherència al calendari acadèmic és a dir  Setembre, Octubre, Novembre, ..., i acabant al Maig. 
-- Per fer aquesta ordenació caldrà fer ús de la instrucció CASE de MySQL: https://www.w3schools.com/SQL/func_mysql_case.asp
select Sum(Hores) as HorasTotals, Mes from UF
group by Mes
Order By field(Mes,'Gener','Febrer','Març','Abril','Maig','Setembre','Octubre','Novembre','Desembre'); 

SELECT mes, SUM(hores) AS TotalHores FROM UF
GROUP BY mes
ORDER BY CASE 
    WHEN mes = 'Setembre' THEN 1
    WHEN mes = 'Octubre' THEN 2
    WHEN mes = 'Novembre' THEN 3
    WHEN mes = 'Desembre' THEN 4
    WHEN mes = 'Gener' THEN 5
    WHEN mes = 'Febrer' THEN 6
    WHEN mes = 'Març' THEN 7
    WHEN mes = 'Abril' THEN 8
    WHEN mes = 'Maig' THEN 9
    WHEN mes = 'Juny' THEN 10
END asc;
-- 5. Obtenir el total d’alumnes per ciutat, exceptuant en el recompte els alumnes que s’anomenin Marc o Maria. 
-- El llistat s’ha de mostrar ordenat per ciutat en ordre alfabètic.
select count(*) as 'Total Alumnes' from alumnes
where Nom!='Marc' and Nom!='Maria'
order by Nom asc;

-- 6. Obtenir el cost total de les UFs que s’imparteixen durant els mesos d’octubre, novembre, gener, abril i maig. 
-- Els valors dels preus s’han d’expressar seguint el format ja vist  “#.###,00”. 

Select concat(Format (Sum(preu),2,'de_DE'), '€') as PreuTotal from uf
where Mes='Octubre' or Mes='Novembre' or Mes='Gener' or Mes='Abril' or Mes='Maig';
 
-- 7. Mostra un llistat d’alumnes on en una única columna es mostri cognom, seguit d’una coma i a continuació el nom. 
-- Aquesta columna s’ha d’anomenar “Alumne” i un possible resultat seria  González, David.
-- El llistat ha de contenir únicament les dades dels alumnes que siguin de Granollers, Sabadell o Terrassa 
-- i que a més a més hagin nascut o al 2000 o al 2001. Les dades s’han d’ordenar per la columna “Alumne”, la ciutat i la data de naixement.

select Concat(Cognom, ', ', Nom) as 'Alumne', dataNaix From Alumnes
where (Ciutat='Granollers' or Ciutat='Sabadell' or Ciutat='Terrassa') and (year(dataNaix)=2000 or year(dataNaix)=2001)
order by Alumne, Ciutat, dataNaix;

-- 8. Obtenir un llistat que mostri les dades de totes les unitats formatives amb una duració superior a les 33 hores lectives 
-- i que el seu nom comenci per la lletra “I” o bé per la lletra “P”.

Select * from UF
Where (Hores>33) and (Nom like 'I%' or Nom Like'P%');

-- 9. Determineu el cost màxim, mínim i promig del conjunt de UFs que tenen una duració estimada d’entre 33 i 66 hores.
--  Associeu noms descriptius a les columnes obtingudes. Els valors dels preus s’han d’expressar seguint el format ja vist  “#.###,00”.

Select Format (avg(Preu),2,'de_DE') as Mitjana, Format (Max(Preu),2,'de_DE') as Maxim, Format (min(Preu),2,'de_DE') as Minim From UF
Where Hores>=33 and Hores<=66;

-- 10. Obtenir el llistat amb el nom en majúscules de totes les ciutats associades als nostres alumnes. 
-- Les dades s’han d’ordenar alfabèticament.

Select UPPER(Ciutat) From Alumnes
group by Ciutat
Order by Ciutat Asc;

-- 11. Obtenir el cost màxim de les UFs amb una duració prevista d’entre 33 i 66 hores lectives o bé que el seu preu de cost 
-- sigui inferior a 150€. Els valors dels preus s’han d’expressar seguint el format ja vist  “#.###,00”.

Select Format (Max(Preu),2,'de_DE') as Maxim From UF
Where (Hores>=33 and Hores<=66) or (Preu<150);


-- 12. Obtenir un llistat de les UFs que tenen un cost entre 150 i 500€ ordenat per preu i nom. 
-- L’ordre ha de ser de major preu a menor i ordenat alfabèticament en cas de coincidència de preus. 
-- Els valors dels preus s’han d’expressar seguint el format ja vist  “#.###,00”.

Select Nom,  Format (Preu,2,'de_DE') as Preu from UF
Where Preu>=150 and Preu<=500
Order by Preu desc, Nom asc;

-- 13. Obtenir un llistat de totes les UFs corresponents al mòdul M11. Únicament es requereix obtenir el codi, 
-- el nom de la UF i les hores previstes. Ordenar el llistat pel número de UF. 

Select Codi, Nom, Hores from UF
Where Codi like 'M11%'
Order by Codi;

-- 14.  A partir d’ara l’alumne té un codi de 9 caràcters

Alter Table alumnes add column Codi varchar(9);

-- 15. Tenint en compte que acabes de crear el camp codi i per tant no tens informació. 
-- Mostra com es veuria el codi seguint el següent algoritme de codificació:
-- CODI = primera lletra del nom + primera lletra del cognom + guió + any de naixement + dia de naixement
-- Llavors, es vol veure el nom i cognom de l'alumne amb el nou codi.

-- AS-200125

SELECT nom,cognom,IFNULL(CONCAT(LEFT(nom,1), LEFT(Cognom,1),"-",YEAR(dataNaix),DAY(dataNaix)),'Sense Codi') as codi FROM Alumnes;


-- 16. Determina el nom de totes les unitats formatives 
-- excepte les que tinguin per codi M02UF1, M03UF1, M03UF2 o M05UF1 o el seu codi contingui UF3.

Select Nom From UF
where Codi='M02UF1' or Codi='M03UF1' or Codi='M03UF2' or Codi='M05UF1' or Codi like '%UF3%';

-- 17. Determina el preu de la unitat formativa més cara i més econòmica que tingui 33 hores. 
-- Identificar les columnes com a «econòmica» i «més cara».

Select Max(preu) as Mes_Cara, min(preu) as Economica from UF
where Hores=33;

-- 18. Obtenir el nom de totes les UFs que no tenen un volum de 33 hores lectives i que comencen durant el mes d’abril.

Select nom from UF
where Hores!=33 and Mes!='Abril';

-- 19. Determinar el nom de les unitats formatives on el preu hora sigui major de 5€ i comencin al gener o març.
--  Ordenar per aquest import de forma descendent.

Select Nom from UF
Where (Preu/Hores)>2 and (Mes='Gener' or Mes='Març');

-- 20. ES vol tenir un històric de qualificacions entre unitats formatives i notes de cadascun dels alumnes. 
-- Realitza les instruccions necessàries per tal de poder donar solució a això. Cal saber la data de la nota.
drop table qualificacions;
create table if not exists Qualificacions(
	alumneDNI char(9),
    ufCodi char(6),
    nota DECIMAL(4,2),
    Dataq date,
    primary key (alumneDNI,ufCodi),
    Constraint verifNota check (nota between 1 and 10),
    constraint fk_qualificacio_alumnes FOREIGN KEY (alumneDNI) REFERENCES alumnes(DNI)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT fk_qualificacio_codi FOREIGN KEY (ufCodi) REFERENCES uf(Codi)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

-- 21. Realitzar una consulta que em retorni el text «la unitat formativa codi - nom té hores hores que equival a X crèdits» . 
-- Per a fer el càlcul s'ha de considerar que un crèdit són 10 hores. 

Select Concat('La Unitat Formativa Codi ',(Codi),' ',(nom), 'tè ', (Hores), ' Hores que equival a ',(Hores/10), ' Credits') as Cosa from UF;

-- 22. Just fa 7 dies (tenint en compte now(), vas treure un 7,80 en la UF, M2UF1 del teu cicle. No cal determinar el cost.

insert into alumnes Values('DNI1234',NULL,NULL,NULL,NULL,NULL);

insert into qualificacions Values ('DNI1234','M2UF1',7.80);

-- 23. Obtenir un llistat que mostri les dades de tots els alumnes que el seu cognom comenci per la lletra “G” o bé 
-- aquest tingui una longitud de 6 caràcters. El llistat s’ha de mostrar ordenat per cognom i a continuació per nom.

Select * From Alumnes
Where Cognom like 'G%' or length(Cognom)=6;

-- 24. Obtenir el nom de la (o les) UF(s) amb major volum d’hores de tot el conjunt.

Select Nom from UF
where Hores=317;

-- 25. Mostrar un llistat on es mostrin les dades de totes les UFs, incloent els crèdits ECTS equivalents, 
-- considerant que un 1 crèdit ECTS equival a 25 hores lectives. Els crèdits s’han de mostrar arrodonits a 1 decimal i els valors 
-- dels preus s’han d’expressar seguint el format ja vist  “#.###,00”. El llistat s’ha de mostrar ordenat per codi de UF.

Select Codi, Nom, Hores, Format (Preu,2,'de_DE') as Preu, Mes, concat(Format((Hores/25),1,'de_DE')) as 'Credit ECTS'from UF Format
Order by Codi;

-- 26. Mostra les 5 millors notes de l'alumne amb DNI: 'DNI3'. Cal veure de quin codi de mòdul pertany. 
-- No es vol tenir en compte aquelles qualificacions que son anteriors al 2018 inclòs.

Select * From qualificacions
where alumneDNI='DNI3' and dataq>2018
order by nota desc
limit 5;
-- El limite es para que se vea solo 5 registros como maximo

-- 27. Fer un llistat del nom complet de tots els alumnes de Granollers. 
-- Has de mostrar el nom i cognom junt amb el DNI. Ex: ‘DNI:11111111 – Nom: David Porti’

Select Concat('DNI: ',(DNI), ' - Nom: ',(Nom), ' ', (Cognom)) as 'DNI Nom Cognom' From Alumnes
where Ciutat='Granollers';

-- 28. Fer un llistat de totes alumnes que viuen fora la ciutat de Granollers que el seu nom o cognom comencin per A o B y 
-- hagin nascut y que aquest any siguin majors d’edat.

Select * from Alumnes
Where (Ciutat!='Granollers') and (Nom like 'A%' or Nom like 'B%') and year(dataNaix)<=2005;

-- 29. Fer un llistat de totes alumnes que no viuen ni a Granollers ni a Cardedeu amb DNI acabat amb k o z.

Select * from Alumnes
Where (Ciutat!='Granollers' or Ciutat!='Cardedeu') and (DNI like '%k' or DNI like '%z');

-- 30. Mostra quin és la longitud més gran del nom (num caràcters) dels alumnes per cada una de les ciutats.

Select ciutat, length(max(nom)) from alumnes
group by ciutat;

-- 31. Mostra els alumnes que han nascut el mateix mes y any que l'alumne Marta Bonilla.

select * from alumnes
where year(datanaix)= (Select Year(dataNaix) from alumnes where nom='Marta' and cognom='Bonilla'); -- and month(datanaix)= (Select month(datanaix) from alumnes where nom='Marta' and cognom='Bonilla');

-- 32. Mostra la mitja de preu de les unitats formatives que tenen el mateix inici de trimestre que la uf amb codi m04UF2 o M04UF3.

select mes from uf where codi in ('M04UF2', 'M04UF3');

select avg(preu) from UF
where mes IN (select mes from uf where codi in ('M04UF2', 'M04UF3'))
Group by mes;

-- 33. Mostra quants alumnes tenen el mateix nom que l'alumne amb 21980782O.

select nom from alumnes where DNI='21980782O';

select count(nom) from alumnes
where nom=(select nom from alumnes where DNI='21980782O');

-- 34. Mostra el nom dels alumnes que han nascut el mateix any que els de Granollers.

select year(dataNaix) from alumnes where ciutat='Granollers';

select nom from alumnes where year(dataNaix) in (select year(dataNaix) from alumnes where ciutat='Granollers');

-- 35. Mostra quantes ufs tenen més de 15h o no han iniciat al febrer o setembre.

select * from UF
where hores>15 or mes not in ('febrer','setembre');

-- 36. Mostra quantes unitats formatives son més cares que les ufs amb codi 'M02UF1' o 'M02UF2'.

select preu from uf where codi in ('M02UF1','M02UF2');

select nom, preu from UF
where preu in (select preu from uf where codi in ('M02UF1','M02UF2'));

-- 37. Mostra el nom dels alumnes de Granollers que han viscut més dies 
-- que la mitja dels alumnes nascuts entre el 2000 y 2005.

select avg(DATEDIFF(NOW(),dataNaix)) as Dies from alumnes
where year(dataNaix) between 2000 and 2005;

select nom from alumnes
where ciutat='Granollers' and DATEDIFF(NOW(),dataNaix) > (select avg(DATEDIFF(NOW(),dataNaix)) as Dies from alumnes where year(dataNaix) between 2000 and 2005);

 -- 38. Mostra el codi i nom de les UFs que han iniciat el Gener, Febrer o Març, que ténen entre 
 -- 10 i 300 hores i el seu preu es inferior d'aquelles UFS que contene una a, el seu codi no inicia amb 'DA'.















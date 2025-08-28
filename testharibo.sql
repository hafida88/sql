--1-- Lister toutes les BDD
Exercice1:
mariadb -u root -p 
show databases;



--2-- Créer une base de données SQL nommée HARIBO
Exercice2:
CREATE DATABASE Haribo;



--3--
/**
* Créer une table user qui comporte 4 champs :
* - id_user => nombre qui s'auto-incrémente, requis et clé primaire
* - name => 100 caractères, requis
* - color_eyes => 30 caractères, requis
* - gender => homme / femme / autre , requis
*/
Exercice3
USE haribo;
CREATE TABLE user (
id_user INT AUTO_INCREMENT PRIMARY KEY,
lastname  VARCHAR (100),
color_eyes VARCHAR (100),
gender VARCHAR (100)
);
 SHOW TABLE
--4--
/**
* Insérer dans cette table les informations de votre groupe (données ci-dessous) :
* Vera marron f
* Hafida marron f
* Kylian marron h
* Priscille marron f
* Pauline marron f
* Ilyes marron a
* Balamini marron h
* Kevin vert h
* Mohamed marron h
* Lamia marron f
* Catherine marron f
*/
Exercice4


INSERT INTO user (lastname, color_eyes, gender) VALUES
('vera', 'marron', 'f'),
('Hafida','marron','f'),
('vera', 'marron', 'f'),
('kylian','marron','h'),
('Priscille', 'marron', 'f'),
('Pauline', 'marron', 'f'),
('Ilyes', 'marron', 'h'),
('Balamini', 'marron', 'h'),
('kevin', 'vert', 'h'),
('Mohamed', 'marron', 'h'),
('Lamia','marron','f'),
('Catherine', 'marron', 'f');




--5--
/**
* Créer une table candy qui comporte 3 champs :
* - id_candy => nombre qui s'auto-incrémente, requis et clé primaire
* - name => 100 caractères, requis
* - flavor => 100 caractères, requis

*/
Exercice5:
CREATE TABLE `candy`(
id_candy INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100),
flavor VARCHAR(100)
);


CREATE TABLE candy (
    id_candy INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    flavor VARCHAR(100) NOT NULL
);

Pour suprimer une table 
DROP TABLE nom_de_la_table;


--6--
/**
* Insérer dans cette table des bonbons Haribo (données ci-dessous) :
* 'dragibus', 'cola'
* 'tagada', 'fraise'
* 'bams', 'banane'
* 'rotella', 'reglisse'
* 'floppys', 'sucre'
* 'rainbollows', 'marshmallow'
* 'bigharri', 'cerise'
* 'oursor', 'fruits'
* 'croco', 'fruits'
* 'oeufoplat', 'guimauve')
* 'flanbotti', 'caramel'
*/

INSERT INTO `candy` (`name`, `flavor`) VALUES 
('dragibus', 'cola'),
('tagada', 'fraise'),
('bams', 'banane'),
('rotella', 'reglisse'),
('floppys', 'banane'),
('rainbollows', 'marshmallow'),
('bigharri', 'cerise'),
('oeufoplat', 'guimauve'),
('flanbotti', 'carramel')
;

chatgpt
INSERT INTO candy (name, flavor) VALUES
('dragibus', 'cola'),
('tagada', 'fraise'),
('bams', 'banane'),
('rotella', 'reglisse'),
('floppys', 'sucre'),
('rainbollows', 'marshmallow'),
('bigharri', 'cerise'),
('oursor', 'fruits'),
('croco', 'fruits'),
('oeufoplat', 'guimauve'),
('flanbotti', 'caramel');

--7--
/**
* créer une table eat qui comporte 5 champs :
* - id_eat => nombre qui s'auto-incrémente, requis et clé primaire
* - id_user => champs de la table user (clé étrangère table user)
* - id_candy => champs de la table bonbon (clé étrangère table candy)
* - date_eat => type date, requis
* - quantity => nombre, requis
*/
Exercice7:
CREATE TABLE `eat` (
    `id_eat`INT AUTO_INCREMENT PRIMARY KEY,
    `id_user` INT,
    `id_candy` INT,
    `date_eat` Date,
    `quantity`INT,

    FOREIGN KEY (id_user) REFERENCES user(id_user),
    FOREIGN KEY (id_candy) REFERENCES candy(id_candy)

);





chatgpt
CREATE TABLE eat (
    id_eat INT AUTO_INCREMENT PRIMARY KEY,
    id_user INT NOT NULL,
    id_candy INT NOT NULL,
    date_eat DATE NOT NULL,
    quantity INT NOT NULL,
    CONSTRAINT fk_user FOREIGN KEY (id_user) REFERENCES user(id),
    CONSTRAINT fk_candy FOREIGN KEY (id_candy) REFERENCES candy(id_candy)
);



SELECT * FROM `candy`;



--8--
/**
* insérer dans la table eat des informations sur qui a consommé quel bonbon, quand et dans quelles quantités (données ci-dessous) :
(4,7,'2025-08-20', 5),
(1,1,'2025-08-05', 5),
(2,2,'2025-08-03', 5),
(3,3,'2025-08-04', 5),
(5,4,'2025-08-15', 5),
(6,5,'2025-08-18', 5),
(7,6,'2025-08-22', 5),
(8,8,'2025-08-19', 5),
(9,9,'2025-08-21', 5),
(10,10,'2025-08-01', 5),
(11,11,'2025-08-01', 5)
*/


Exercice8:




INSERT INTO `eat` (`id_user`,`id_candy`,`date_eat`,`quantity` ) VALUES
(4,7,'2025-08-20', 5),
(1,1,'2025-08-05', 5),
(2,2,'2025-08-03', 5),
(3,3,'2025-08-04', 5),
(5,4,'2025-08-15', 5),
(6,5,'2025-08-18', 5),
(7,6,'2025-08-22', 5),
(8,8,'2025-08-19', 5),
(9,9,'2025-08-21', 5),
(10,10,'2025-08-01', 5),
(11,11,'2025-08-01', 5);



--9-- Lister les tables de la BDD *Haribo*
Exercice9:
SHOW tables;

--10-- voir les colones de la table *candy*
SHOW COLUMNS FROM `candy`;


--11-- Sélectionner tous les champs de tous les enregistrements de la table *user*
Exercice11:
SELECT * FROM `user`;


--12-- Rajouter un nouveau user *Patriiiick* en forçant la numérotation de l'id par la valeur 150
exercice12
INSERT INTO `user` (`id_user`, `name`,`color_eyes`, `gender`) 
VALUES (150,'patrik', 'noir', 'h');

--13-- Rajouter un nouveau user *Mila* SANS forcer la numérotation de l'id
exercice13
INSERT INTO `user` (`name`,`color_eyes`, `gender`) 
VALUES ('Mila', 'orange', 'f');


--14-- Changer le prénom du user qui a l'id 150 de *Patriiiick* à *Patrick*
UPDATE `user` 
set `name`= 'Patriiiick'
WHERE `id_user` = 150;

UPDATE `user` 
set `name`= 'Patrick'
WHERE `id_user` = 150;



--15-- Rajouter dans la table eat que Patrick a mangé 5 Tagada purpule le 15 septembre 2023

INSERT INTO `eat` (`id_user`,`id_candy`,`date_eat`,`quantity` ) VALUES
(150,2,'2023-09-15', 5);


--16-- Sélectionner tous les noms des bonbons
SELECT `` FROM `candy`;


--17-- Sélectionner tous les noms des bonbons en enlevant les doublons


Exercice17: pas fait

DELETE t1
FROM candy t1
JOIN candy t2
  ON t1.name = t2.name
 AND t1.id > t2.id;

Si le doublon n’est pas seulement sur name mais par exemple sur (name, flavor) :
candies est ta table.

id est la clé primaire ou un identifiant unique.

t1.id > t2.id garantit qu’on ne garde que la plus petite valeur de id et qu’on supprime les autres doublons.

 DELETE t1
FROM candies t1
JOIN candies t2
  ON t1.name = t2.name
 AND t1.flavor = t2.flavor
 AND t1.id > t2.id;

--18-- Récupérer les couleurs des yeux des users (Sélectionner plusieurs champs dans une table)
SELECT DISTINCT color_eyes
FROM `user`
ORDER BY name;



SELECT `color_eyes` FROM `user`; bon reponse



--19-- Dédoublonner un résultat sur plusieurs champs

pas compris la question 

SELECT DISTINCT name, color_eyes
FROM user;



--20-- Sélectionner l'user qui a l'id 5
SELECT *
FROM user
WHERE id_user = 5;



--21-- Sélectionner tous les users qui ont les yeux marrons
SELECT * FROM `user` WHERE color_eyes = 'marron';






--22-- Sélectionner tous les users dont l'id est plus grand que 9
exerice 22:
SELECT * FROM `user` WHERE (id_user) > 9 ;


--23-- Sélectionner tous les users SAUF celui dont l'id est 13 (soyons supersticieux !) :!\ il y a 2 façons de faire
SELECT * FROM `user` WHERE (id_user) = 13;
--24-- Sélectionner tous les users qui ont un id inférieur ou égal à 10


SELECT * FROM `user` WHERE id_user <= 10;


--25-- Sélectionner tous les users dont l'id est compris entre 7 et 11

exercie25
SELECT * FROM `user` WHERE id_user BETWEEN 7 AND 11;


--26-- Sélectionner les users dont le prénom commence par un *S*
SELECT * FROM `user` WHERE name LIKE 'p%';


--27-- Trier les users femmes par id décroissant
exercice 27
SELECT * FROM `user` WHERE `gender` = 'F' ORDER BY id_user DESC;


--28-- Trier les users hommes par prénom dans l'ordre alphabétique

SELECT * FROM `user` WHERE `gender` = 'h' ORDER BY name ASC;



--29-- Trier les users en affichant les femmes en premier et en classant les couleurs des yeux dans l'ordre alphabétique

exercice 29

SELECT name, color_eyes
FROM `user`
ORDER BY FIELD(gender, 'f', 'h', 'a'), color_eyes ASC;

SELECT * FROM `user`;

UPDATE `user` 
set `gender`= 'h'
WHERE `id_user` = 6;





--30-- Limiter l'affichage d'une requête de sélection de tous les users aux 3 premires résultats
exercice 30:
SELECT * FROM `user`LIMIT 3;

--31-- Limiter l'affichage d'une requête de sélection de tous les users à partir du 3ème résultat et des 5 suivants


--32-- Afficher les 4 premiers users qui ont les yeux marron


--33-- Pareil mais en triant les prénoms dans l'ordre alphabétique


--34-- Compter le nombre de users


--35-- Compter le nombre de users hommes mais en changeant le nom de la colonne de résultat par *nb_users_H*


--36-- Compter le nombre de couleurs d'yeux différentes
exercice36

SELECT color_eyes, COUNT(*) AS nb_users
FROM `user`
GROUP BY color_eyes;


--37-- Afficher le prénom et les yeux du user qui a l'id le plus petit


--38-- Afficher le prénom et les yeux du user qui a l'id le plus grand /!\ 
--c'est une requête imbriquée qu'il faut faire (requête sur le résultat d'une autre requête)


--39-- Afficher les users qui ont les yeux bleu et vert


--40-- A l'inverse maintenant, afficher les users qui n'ont pas les yeux bleu ni vert


--41-- récupérer tous les users qui ont mangé des bonbons, avec le détail de leurs consommations


--42-- récupérer que les users qui ont mangé des bonbons, avec le détail de leurs consommations


--43-- prénom du user, le nom du bonbon, la date de consommation pour tous les users qui ont mangé au moins une fois


--44-- Afficher les quantités consommées par les users (uniquement ceux qui ont mangé !)


--45-- Calculer combien de bonbons ont été mangés au total par chaque user et afficher le nombre de fois où ils ont mangé


--46-- Afficher combien de bonbons ont été consommés au total


--47-- Afficher le total de *Tagada* consommées


--48-- Afficher les prénoms des users qui n'ont rien mangé


--49-- Afficher les saveurs des bonbons (sans doublons)


--50-- Afficher le prénom du user qui a mangé le plus de bonbons


une commande pour trier par colonne 
SELECT DISTINCT name
FROM `candy`
ORDER BY name;


combien dutilisateur combien de color_eyes


SELECT color_eyes, COUNT(*) AS nb_users
FROM `user`
GROUP BY color_eyes;

pour modifier les attribus de la table ou, la structure de lan table 
ALTER TABLE `user` AUTO_INCREMENT=150;

INSERT INTO `user` (`name`) 
VALUES ('Patriiiick');

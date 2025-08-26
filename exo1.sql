/*
#Exercice 0 : Connection à la base de donnée
*/
mariadb -u root -p 
USE mydatabase

/*
#Exercice 1 : Création d une base de données et de tables

    Créez une table nommée client avec les champs suivants :

    Id(clé primaire).
    Nom.
    Prénom.
    Adresse email.
    Date d inscription.

    Insérez 2 clients dans la table pour tester.
    
*/

/*
#Exercice 2 : Création d une base de données et de tables

    Créez une table nommée commande avec les champs suivants :

    Id (clé primaire).
    Id_client (clé étrangère).
    Date de la commande.
    Montant total.

    Insérez quelques valeurs dans la tables commande pour tester la configuration.
    
*/

/*
#Exercice 3 : Modification des données dans une table
    Ajoutez une colonne dans la table Client pour stocker le numéro de téléphone des clients.
*/
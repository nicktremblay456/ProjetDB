-- Suppression de données
-- Script qui permet de supprimer les éléments suivants:

-- Suppression physique d'éléments de la table étudiant
delete from students where StudentID > 10;

-- Suppression physique de la table Téléphone
set sql_safe_updates = 0;
delete from phones;
set sql_safe_updates = 1;

-- Suppression logique d'élément de la table Adresse
update address
set IsDeleted = 1
where AddressID = 1;
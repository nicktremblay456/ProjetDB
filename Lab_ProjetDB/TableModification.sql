-- Script qui permet de modifier la table étudiant

-- Ajouter le champ "DiplomeObtenu" dans la table étudiant
alter table students
add DegreeObtained bool default false;

-- Ajouter le champ "AnnéDiplomation"
alter table students
add GraduationDate date;

-- Ajouter le champ "compté" dans la table adresse
alter table address
add Shire varchar(50);

-- Ajouter le champ "Maison" dans la table telephone
alter table phones
add HousePhoneNumber varchar(8) check (HousePhoneNumber like '___-____');
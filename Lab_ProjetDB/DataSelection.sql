-- Script qui permet d'extraire les éléments suivants:

-- Obtenir la liste de tous les étudiants qui possède un numéro de telephone commençant par 514
select * from phones, students
where Indicative = 514;

-- Obtenir la liste de la table étudiant et de la table téléphone
select * from students, phones;

-- Obtenir la liste des nom, prenom et numéro d'adresse dans une seule ordonné par order alphabétique sur le prénom
select FirstName, LastName, AddressNumber
from students
inner join address
on students.StudentID = address.StudentID
order by FirstName asc;

-- Obtenir la liste (nom, prenom, code permanent) ou les étudiants sont agés de 30 et plus et sont a temps partiel
select FirstName, LastName, PermanentCode
from students
where Age >= 30 and Status = "Part-Time";

-- Obtenir la liste des numéros qui on un numéro débutant par 819
select PhoneNumber from phones
where Indicative = 819;

-- Obtenir les noms, prénoms et numéro de téléphone des étudiants qui ont réussis plus de 12 crédits
select FirstName, LastName, PhoneNumber
from students
inner join phones
on students.StudentID = phones.StudentID
where TotalCredit > 12;

-- Obtenir les nom, prénom et code permanent des étudiants qui habite la ville de ‘québec’ ou la ville de ‘montréal’
select FirstName, LastName, PermanentCode
from students
inner join address
on students.StudentID = address.StudentID
where City = "Québec" or City = "Montréal";

-- Obtenir les nom, prénom, code permanent des étudiants qui n’habite pas le Canada
select FirstName, LastName, PermanentCode
from students
inner join address
on students.StudentID = address.StudentID
where Country != "Canada";

-- Obtenir les rue et les villes des adresses où le code postal se termine par ‘R3W’
select AddressNumber
from address
where right(PostalCode, 3) = "R3W";

-- Obtenir tous les étudiants qui ont une adresse dans la table adresse
select * from students
where StudentID = address.StudentID;

-- Obtenir toutes les adresses ainsi que tous les numéros de téléphone
select AddressNumber, PhoneNumber
from address, phones
where address.AddressID = phones.StudentID;

-- Obtenir les nom, prénom et numéro des étudiants qui possèdent une adresse.
-- Si un étudiant ne possède pas d’adresse il ne doit pas être affiché.
select FirstName, LastName
from students
where students.StudentID = address.StudentID;

-- Obtenir les nom, prénom et code permanent des étudiants qui ont plus de 30 ans.
select FirstName, LastName, PermanentCode
from students
where age > 30;

-- Obtenir les nom, prénom, code permanent et numéro de telephone des étudiants qui ont plus de 35 ans.
select FirstName, LastName, PermanentCode, PhoneNumber
from students
inner join phones
on students.StudentID = phones.StudentID
where Age > 36;
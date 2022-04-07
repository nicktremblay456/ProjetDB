-- Modification de données
-- Script qui permet de modifier les informations suivantes:

-- Le numéro de téléphone d'un étudiant
update phones
set PhoneNumber = "547-8080"
where PhoneID = 1;

-- Changer le status d'un étudiant
update students
set Status = "Full Time"
where StudentID = 1;

-- Changer l'adresse d'un étudiant
update address
set AddressNumber = 1001
where AddressID = 1;

-- Changer le code postal et le numéro dans la même requête
update address
set PostalCode = "G1R 4G8", AddressNumber = 2020
where AddressID = 5;

-- Affecter une adresse à un autre étudiant
update address
set AddressNumber = 1234
where AddressID = 2;
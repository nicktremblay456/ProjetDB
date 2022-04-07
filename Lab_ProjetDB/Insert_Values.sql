-- Students
insert into students (FirstName, LastName, Age, Status, TotalCredit, PermanentCode, BirthDate)
values("Joe", "Blow", 72, "Part-Time", 12, "BJOE4578545", "1950-01,01"),
("Lucky", "Luke", 85, "Part-Time", 3, "LUCL2504584", "1937-05-06"),
("Woody", "Allen", 85, "Full Time", 21, "WOOA8545788", "1933-07-08"),
("Mickey", "Mouse", 22, "Full Time", 30, "MICM7878802", "1990-11-08"),
("Donald", "Duck", 28, "Part-Time", 2, "DOND4512458", "1990-11-09"),
("Quentin", "Tarrantino", 58, "Part-Time", 18, "QEUT2054854", "1965-05-06"),
("Jim", "Morisson", 37, "Full Time", 3, "JIM7878545", "1949-01-01"),
("Elton", "John", 33, "Part-Time", 33, "ELTJ2004584", "1970-12-15"),
("Ringo", "Star", 47, "Full Time", 54, "RINS8545332", "1932-07-22"),
("John", "Lennon", 62, "Part-Time", 9, "JOHL7802027", "1982-11-18"),
("Donald", "Trump", 100, "Full Time", 0, "DONT0254875", "1950-02-09"),
("Eddy", "Van Halen", 65, "Part-Time", 21, "EDYV3652698", "1965-05-06");

-- Address
insert into address (StudentID, AddressNumber, PostalCode, City)
values(1, 1234, "G3C 4R5", "Jonquiere"),
(2, 2345, "G4F V3R", "Jonquiere"),
(3, 3456, "F3F R3W", "Montréal"),
(4, 4567, "G5Y 7U8", "Montréal"),
(5, 5678, "2W3 R3W", "Québec"),
(6, 6789, "G5Y R3W", "Québec"),
(7, 7890, "G3C 4R5", "Arvida"),
(8, 0987, "G4F V3R", "Arvida"),
(9, 9876, "F3F R3W", "Alma"),
(10, 8765, "G5Y 7U8", "Alma"),
(11, 7654, "2W3 R3W", "Kénogami"),
(12, 6543, "G5Y R3W", "Kénogami");

-- Phones
insert into phones (StudentID, Indicative, PhoneNumber)
values(1, 581, "663-2545"),
(2, 514, "452-2125"),
(3, 418, "777-4585"),
(4, 418, "785-2251"),
(5, 819, "452-0215"),
(6, 819, "784-5252"),
(7, 418, "555-2360"),
(8, 541, "875-5850"),
(9, 819, "458-0258"),
(10, 819, "785-5541"),
(11, 514, "774-5582"),
(12, 514, "302-5520");
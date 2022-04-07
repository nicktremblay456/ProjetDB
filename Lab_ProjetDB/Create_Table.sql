create table students (
	StudentID int not null auto_increment unique,
    FirstName varchar(50) not null,
    LastName varchar(50) not null,
    Age int not null,
    Status varchar(25) not null,
    TotalCredit int not null,
    PermanentCode varchar(50) not null,
    BirthDate Date not null,
    
    primary key(StudentID),
    check (Status = "Part-Time" or Status = "Full Time")
);

create table phones (
	PhoneID int not null auto_increment unique,
    Indicative int not null,
    PhoneNumber varchar(25) not null,
    
    primary key (PhoneID),
    foreign key(PhoneID) references students(StudentID),
    check (PhoneNumber like '___-____')
);

create table address (
	AddressID int not null auto_increment unique,
    AddressNumber int not null,
    PostalCode varchar(25) not null,
    City varchar(25) not null,
    IsDeleted int default 0,
    
    primary key(AddressID),
    foreign key(AddressID) references students(StudentID),
    check (PostalCode like '___ ___'),
    check (IsDeleted = 0 or IsDeleted = 1)
);
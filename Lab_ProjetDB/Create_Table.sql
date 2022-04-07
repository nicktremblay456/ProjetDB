create table students (
	StudentID int auto_increment,
    FirstName varchar(50) not null,
    LastName varchar(50) not null,
    Age int not null,
    Status varchar(25) not null,
    TotalCredit int not null,
    PermanentCode varchar(50) not null,
    BirthDate Date not null,
    
    primary key(StudentID),
    check (Status = "Part-Time" or Status = "Full Time")
)Engine = INNODB;

create table phones (
	PhoneID int auto_increment,
    Indicative int not null,
    PhoneNumber varchar(25) not null,
    
    primary key (PhoneID),
    foreign key(PhoneID) references students(StudentID),
    check (PhoneNumber like '___-____')
)Engine = INNODB;

create table address (
	AddressID int auto_increment,
    AddressNumber int not null,
    PostalCode varchar(25) not null,
    City varchar(25) not null,
	Country varchar(25) not null default "Canada",
    IsDeleted int default 0,
    
    primary key(AddressID),
    foreign key(AddressID) references students(StudentID),
    check (PostalCode like '___ ___'),
    check (IsDeleted = 0 or IsDeleted = 1)
)Engine = INNODB;
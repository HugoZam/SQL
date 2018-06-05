drop database MovieRentals;
create database MovieRentals;

USE MovieRentals;
create table Customer(
FullName varchar(30),
Email varchar(40),
Phone int ,
totalPurchase int,
CONSTRAINT email_PK primary key (Email)
);
create table Video(
vID int,
MovieName varchar(50),
RealeaseYear year,
cost int,
genre varchar(50),
CONSTRAINT vID_PK primary key (vID)
);
create table Actor(
aID int,
ActorName varchar(30),
DateofBirth date,
CONSTRAINT aID_PK primary key (aID)

);
create table Price(
PriceCode int,
cost int,
CONSTRAINT PriceCode_PK primary key (PriceCode)
);
create table Rents(
rentalFee int,
lateFee int, 
currentdate date,  
dueDate date, 
returnDate date,
Email varchar(40) ,
vID int, 
PriceCode int, 
CONSTRAINT vID_PK primary key(Email,vID),
FOREIGN KEY (Email) REFERENCES Customer(Email),
FOREIGN KEY (vID) REFERENCES Video(vID),
FOREIGN KEY (PriceCode) REFERENCES Price(PriceCode)

);
create table Performs(
vID int,
aID int,
CONSTRAINT vIDnaID_PK primary key(vID,aID),
FOREIGN KEY (vID) REFERENCES Video(vID),
FOREIGN KEY (aID) REFERENCES Actor(aID)
);


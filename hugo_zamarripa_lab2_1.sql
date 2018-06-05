drop database Concerts;
create database Concerts;
USE Concerts;
CREATE TABLE PerformanceTypes (
PerformanceTypeName VARCHAR(30),
PRIMARY KEY (PerformanceTypeName)
);

CREATE TABLE Performers(
PerformerID INT,
FirstName VARCHAR(30),
LastName VARCHAR(30),
Address VARCHAR(50), 
PerformanceTypeName VARCHAR(30),
CONSTRAINT pID_PK PRIMARY KEY (PerformerID),
FOREIGN KEY (PerformanceTypeName) REFERENCES PerformanceTypes(PerformanceTypeName)

);
CREATE TABLE Arenas(
ArenaID SMALLINT,
ArenaName VARCHAR(30),
City VARCHAR(30),
Capacity INT,
CONSTRAINT arenaID_PK PRIMARY KEY (ArenaID)

);
CREATE TABLE Concerts(

ConcertDate DATETIME NULL ,
PerformerID INT,
ArenaID SMALLINT,
UNIQUE KEY (ConcertDate,PerformerID, ArenaID), 
FOREIGN KEY (PerformerID) REFERENCES Performers(PerformerID),
FOREIGN KEY (ArenaID) REFERENCES Arenas(ArenaID)


);
CREATE TABLE Dancers (
PerformerID int , 
FirstName varchar(10),
 LastName varchar(15) ,
 Address varchar(30), 
 PerformanceTypeName varchar(10), 
 DateOfBirth date, 
 CONSTRAINT perfID_PK primary key (PerformerID),
 foreign key(PerformanceTypeName) references PerformanceTypes (PerformanceTypeName)
 );
INSERT INTO PerformanceTypes (PerformanceTypeName)
VALUE ('Singer' );
INSERT INTO PerformanceTypes (PerformanceTypeName)
VALUE ('Comedian');
INSERT INTO PerformanceTypes (PerformanceTypeName)
VALUE ('Dancer');
ALTER TABLE Performers
ADD DateOfBirth DATE;
INSERT INTO Performers (PerformerID, FirstName, LastName, Address, PerformanceTypeName)
VALUES (1, 'John', 'Doe', 'Annapolis MD', 'Singer') ;
INSERT INTO Performers (PerformerID, FirstName, LastName, Address, PerformanceTypeName)
VALUES (2, 'Matt', 'Smith', 'Baltimore, MD', 'Dancer') ;
INSERT INTO Performers (PerformerID, FirstName, LastName, Address, PerformanceTypeName)
VALUES (3, 'James', 'Brown', 'Baltimore, MD', 'Dancer') ;
INSERT INTO Performers (PerformerID, FirstName, LastName, Address, PerformanceTypeName)
VALUES (4, 'Jennifer', 'Shade', 'Baltimore, MD', 'Dancer') ;
UPDATE Performers
SET DateOfBirth = '1990-03-02'
WHERE PerformerID = 1;
DELETE FROM Performers
WHERE PerformerID = 2;
/*DELETE FROM PerformanceTypes
WHERE PerformanceTypeName = 'Singer';*/
/*UPDATE PerformanceTypes
SET PerformanceTypeName = 'Dance performer'
WHERE PerformanceTypeName = 'Dancer';*/
INSERT INTO Arenas (ArenaID)
VALUE(1);
INSERT INTO Arenas (ArenaID)
VALUE(2);
INSERT INTO Arenas (ArenaID)
VALUE(3);
INSERT INTO Concerts(ConcertDate, ArenaID)
VALUE(NULL, 1);
INSERT INTO Concerts(ConcertDate, ArenaID)
VALUE(NULL, 1);
INSERT INTO Concerts(ConcertDate, ArenaID)
VALUE(NULL, 2);
INSERT INTO Concerts(ConcertDate, ArenaID)
VALUE(NULL, 2);
UPDATE Arenas SET capacity=50000
 WHERE ArenaID 
 IN (SELECT ArenaID FROM Concerts GROUP BY ArenaID HAVING COUNT(ArenaID)>=2);
insert into Dancers(PerformerID, FirstName,LastName, Address,PerformanceTypeName,DateOfBirth) 
values (3, 'Matt', 'Smith','Baltimore, MD','Dancer',NULL);
insert into Dancers (PerformerID, FirstName,LastName, Address,PerformanceTypeName,DateOfBirth) 
values (4, 'James', 'Brown','New York, NY','Dancer',NULL);
insert into Dancers (PerformerID, FirstName,LastName, Address,PerformanceTypeName,DateOfBirth) 
values (5, 'Jennifer', 'Shade','Seattle, WA','Dancer',NULL);
DROP DATABASE IF EXISTS zoo;
CREATE DATABASE IF NOT EXISTS zoo;
Use zoo;
DROP TABLE  IF EXISTS Animal;
create table Animal
(
  aID INT(3),
  AName VARCHAR (30) NOT NULL,
  ACategory VARCHAR (18),
  TimeToFeed INT(4),  
  CONSTRAINT Animal_PK PRIMARY KEY(AID)
);
INSERT INTO Animal VALUES(1, 'Galapagos Penguin', 'exotic', 1);
INSERT INTO Animal VALUES(2, 'Emperor Penguin', 'rare', 1);
INSERT INTO Animal VALUES(3, 'Sri Lankan sloth bear', 'exotic', 3);
INSERT INTO Animal VALUES(4, 'Grizzly bear', 'common', 3);
INSERT INTO Animal VALUES(5, 'Giant Panda bear', 'exotic', 2);
INSERT INTO Animal VALUES(6, 'Florida black bear', 'rare', 2);
INSERT INTO Animal VALUES(7, 'Siberian tiger', 'rare', 4);
INSERT INTO Animal VALUES(8, 'Bengal tiger', 'common', 3);
INSERT INTO Animal VALUES(9, 'South China tiger', 'exotic', 3);
INSERT INTO Animal VALUES(10, 'Alpaca', 'common', 1);
INSERT INTO Animal VALUES(11, 'Llama', NULL, 4);
SELECT AName,TimeToFeed FROM Animal 
WHERE TimeToFeed < 3;

SELECT AName, ACategory  FROM Animal
WHERE ACategory = 'rare';

SELECT AName FROM ANIMAL
WHERE ANAme LIKE '%bear';

SELECT AName,ACategory FROM ANIMAL
WHERE TimeToFeed BETWEEN 1 AND 3; 

SELECT AName,ACategory FROM ANIMAL
WHERE ANAme LIKE '%tiger' 
	AND ACategory NOT LIKE 'common';
SELECT AName FROM ANIMAL
WHERE ANAme NOT LIKE '%tiger'

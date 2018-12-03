CREATE DATABASE Finalproject_db;

USE Finalproject_db;

CREATE TABLE Beds (
 
  Bed_id INTEGER(11) AUTO_INCREMENT NOT NULL,
  First_name VARCHAR(30) NOT NULL,
  Last_name VARCHAR(30) NOT NULL,
  
  PRIMARY KEY (id)
);

-- Creates new rows containing data in all named columns --
INSERT INTO Beds (Bed_id, First_name, Last_Name)
VALUES (6001,"John", "Doe");

INSERT INTO Beds (Bed_id, First_name, Last_Name)
VALUES (6002,"Mary", "Sue");

INSERT INTO Beds (Bed_id, First_name, Last_Name)
VALUES (6003,"Kuddy", "Klue");

INSERT INTO Beds (Bed_id, First_name, Last_Name)
VALUES (6004,"Ryu", "Hassegawa");

INSERT INTO Beds (Bed_id, First_name, Last_Name)
VALUES (6005,"Earth", "Donovan");


SELECT * FROM Beds;
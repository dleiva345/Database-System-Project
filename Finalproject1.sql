CREATE DATABASE Finalproject1_db;

USE Finalproject1_db;

CREATE TABLE Beds (
 
  Bed_id INTEGER(11) AUTO_INCREMENT NOT NULL,
  First_name VARCHAR(30) NOT NULL,
  Last_name VARCHAR(30) NOT NULL,
  Doctors_name VARCHAR(30) NOT NULL,
  Nurse_name VARCHAR(30) NOT NULL,
  
  PRIMARY KEY (Bed_id)
);

-- Creates new rows containing data in all named columns --
INSERT INTO Beds (Bed_id, First_name, Last_Name, Doctors_name, Nurse_name)
VALUES (6001,"John", "Doe", "Meredith Grey", "Ann Perkins");

INSERT INTO Beds (Bed_id, First_name, Last_Name, Doctors_name, Nurse_name)
VALUES (6002,"Mary", "Sue", "Dereck Shepherd", "Kitty Foreman");

INSERT INTO Beds (Bed_id, First_name, Last_Name, Doctors_name, Nurse_name)
VALUES (6003,"Kuddy", "Klue", "Mark Sloan", "Ann Perkins");

INSERT INTO Beds (Bed_id, First_name, Last_Name, Doctors_name, Nurse_name)
VALUES (6004,"Ryu", "Hassegawa", "Jackson Avery","Kitty Foreman");

INSERT INTO Beds (Bed_id, First_name, Last_Name, Doctors_name, Nurse_name)
VALUES (6005,"Earth", "Donovan","Meredith Grey", "Ann Perkins");


SELECT * FROM Beds;
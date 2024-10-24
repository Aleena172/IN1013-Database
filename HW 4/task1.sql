mysql> CREATE DATABASE pet_database;


mysql> USE pet_database;

 mysql>CREATE TABLE petPet (
    -> petname VARCHAR(50) NOT NULL,
    -> owner VARCHAR(50) NOT NULL,
    -> species VARCHAR(50),
    -> gender ENUM('Male', 'Female', 'Other') NOT NULL,
    -> birth DATE,
    -> death DATE,
    -> PRIMARY KEY (petname),
    -> UNIQUE (petname)
    -> );


mysql> CREATE TABLE petEvent (
    -> petname VARCHAR(50) NOT NULL,
    -> eventdate DATE NOT NULL,
    -> eventtype VARCHAR(100) NOT NULL,
    -> remark TEXT,
    -> PRIMARY KEY (petname, eventdate),
    -> FOREIGN KEY (petname) REFERENCES petPet(petname)
    -> );


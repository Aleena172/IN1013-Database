mysql> DROP DATABASE IF EXISTS pet_database;

mysql> CREATE DATABASE pet_database;

mysql> USE pet_database;

mysql> CREATE TABLE petPet (
    -> petname VARCHAR(20) NOT NULL,
    ->  owner VARCHAR(45) NOT NULL,
    -> species VARCHAR(45),
    -> gender ENUM('M', 'F') NULL,
    -> birth DATE,
    -> death DATE,
    -> PRIMARY KEY (petname),
    -> UNIQUE (petname)
    -> );

mysql> CREATE TABLE petEvent (
    -> petname VARCHAR(20) NOT NULL,
    -> eventdate DATE NOT NULL,
    -> eventtype VARCHAR(15) NOT NULL,
    -> remark TEXT(255),
    -> PRIMARY KEY (petname, eventdate),
    -> FOREIGN KEY (petname) REFERENCES petPet(petname)
    -> );

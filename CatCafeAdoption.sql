/*
Student name: Aleena Bhatti              
Student ID: 240023456            
*/

DROP DATABASE IF EXISTS catcafeadoption_database;
CREATE DATABASE catcafeadoption_database;
USE catcafeadoption_database;

/* SECTION 1 - CREATE TABLE STATEMENTS */

CREATE TABLE Adopter (
    Adopter_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Address VARCHAR(255),
    Phone_Number VARCHAR(20),
    Email_Address VARCHAR(255),
    Preferred_Breed VARCHAR(50),
    Preferred_Age INT,
    Preferred_Health VARCHAR(50)
);

CREATE TABLE Cat_Cafe (
    Cafe_ID INT PRIMARY KEY,
    Cafe_Name VARCHAR(255),
    Phone_Number VARCHAR(20),
    Address VARCHAR(255),
    Visit_History INT
);

CREATE TABLE Worker (
    Worker_ID INT PRIMARY KEY,
    Worker_Name VARCHAR(255),
    Supervisor_ID INT,
    Address VARCHAR(255),
    Phone_Number VARCHAR(20),
    Email_Address VARCHAR(255),
    Assigned_Cats INT,
    Role VARCHAR(50),
    Added_Note VARCHAR(255),
    Assigned_Cafe INT
);

CREATE TABLE Cat (
    Cat_ID INT PRIMARY KEY,
    Cat_Name VARCHAR(255),
    Breed VARCHAR(50),
    Age INT,
    Nature VARCHAR(50),
    Health_Status INT,
    Vaccination_Dates DATE,
    Behavioral_Notes VARCHAR(255),
    Adoption_Status VARCHAR(50),
    Worker_ID INT,
    Adoption_History VARCHAR(255),
    Adopter_ID INT,
    Cafe_ID INT
);

CREATE TABLE Health_Record (
    Health_Record_ID INT PRIMARY KEY,
    Vaccination_Date DATE,
    Vaccination_Type VARCHAR(50),
    Behavioral_Note VARCHAR(255),
    Cat_ID INT
);

CREATE TABLE Potential_Adopter (
    Adopter_ID INT PRIMARY KEY,
    Visit_History INT,
    Interest_Level VARCHAR(50),
    Last_Visit_Date DATE
);

CREATE TABLE Existing_Adopter (
    Adopter_ID INT PRIMARY KEY,
    Adoption_History INT,
    Return_History VARCHAR(255),
    Adopted_Cats INT
);

CREATE TABLE Cat_Worker (
    Cat_ID INT,
    Worker_ID INT,
    PRIMARY KEY (Cat_ID, Worker_ID)
);


/* SECTION 2 - INSERT STATEMENTS */

INSERT INTO Adopter (Adopter_ID, Name, Address, Phone_Number, Email_Address, Preferred_Breed, Preferred_Age, Preferred_Health)
VALUES
(1, 'John Rolands', '123 Chadwell Heath Ln, London E6 3DW', '02083817480', 'johnrolands@gmail.com', 'Moggies', 3, 'Healthy'),
(2, 'Fahim Khan', '456 Palm Ave, London E7 8AD', '07779466789', 'fahim.khan@yahoo.co.uk', 'British Shorthair', 2, 'Healthy'),
(3, 'Sana Lin', '789 Pine St, London E9 5LU', '07867654321', 'slin@outlook.com', 'Bengal', 4, 'Healthy'),
(4, 'Kelsi Winn', '101 Maple St, London E1 4NE', '02071234567', 'kelsiwinn@example.com', 'Russian Blue', 1, 'Healthy'),
(5, 'Aisha Mohammed', '202 Birch St, London E12 5ET', '07871123456', 'aisha.mohammed@example.com', 'Savannah', 5, 'Healthy'),
(6, 'Raj Patel', '303 Cedar St, London E15 3PH', '07770234567', 'raj.patel@example.com', 'Ragdoll', 2, 'Healthy'),
(7, 'David Jensen', '404 Willow St, London E3 5AL', '07773345678', 'david.jensen@example.com', 'Siamese', 3, 'Healthy'),
(8, 'Laura Martin', '101 Maplewood Rd, London E2 2AA', '07781372456', 'laura.martin@aol.com', 'Maine Coon', 3, 'Healthy'),
(9, 'Tom Wong', '202 Oak Ave, London E5 3LF', '07894365021', 'tom.wong@yahoo.com', 'Persian', 2, 'Healthy'),
(10, 'Emma Clarke', '404 Riverbank St, London E7 4XY', '07782311247', 'emma.clarke@icloud.com', 'Bengal', 1, 'Healthy');

INSERT INTO Cat_Cafe (Cafe_ID, Cafe_Name, Phone_Number, Address, Visit_History)
VALUES
(1, 'Whiskers Cafe', '02079460110', '119 Catford Road, London SE6 4XJ', 25),
(2, 'Kitty Corner', '02079460440', '76 Kingsland Road, London E8 4AA', 29),
(3, 'Cuddly Cats Cafe', '02079460550', '59 Whitechapel Road, London E1 7DD', 52),
(4, 'The Cat Lounge', '02079460660', '87 High Road Leytonstone, London E11 3AA', 46),
(5, 'Feline Paradise', '02079460770', '123 Green Lane, London E5 5XJ', 60),
(6, 'Meow Cafe', '02079460880', '456 Broad Street, London E7 6AD', 35),
(7, 'Catty Corner', '02079460990', '789 River View, London E8 9ZQ', 72),
(8, 'Paws & Whiskers', '02079461000', '45 Highgate Rd, London E8 8GG', 40),
(9, 'The Purring Cafe', '02079461111', '23 West End, London E1 5DF', 10),
(10, 'Purrrfect Cafe', '02079461222', '56 Shore Road, London E9 1AB', 15);

INSERT INTO Worker (Worker_ID, Worker_Name, Supervisor_ID, Address, Phone_Number, Email_Address, Assigned_Cats, Role, Added_Note, Assigned_Cafe)
VALUES
(1, 'Alice Green', NULL, '123 Brick Lane, London E1 6RU', '02079460770', 'alice.green@example.com', 5, 'Manager', 'N/A', 1),
(2, 'Bilal Ahmed', 1, '456 Hackney Road, London E2 7NX', '02079460880', 'bilal.ahmed@example.com', 4, 'Supervisor', 'N/A', 2),
(3, 'Charlie Brown', 1, '789 Old Street, London EC1V 9LU', '02079460990', 'charlie.brown@example.com', 3, 'Staff', 'N/A', 3),
(4, 'Anika Rehman', 2, '101 Shoreditch High Street, London E1 6JX', '02079461000', 'anika.rehman@example.com', 2, 'Staff', 'N/A', 4),
(5, 'Emily Davis', 1, '555 Camden Road, London NW1 9DR', '02079461111', 'emily.davis@example.com', 3, 'Staff', 'N/A', 1),
(6, 'Omar Sheikh', 2, '678 Regent Street, London W1B 5SP', '02079461222', 'omar.sheikh@example.com', 2, 'Staff', 'N/A', 2),
(7, 'Sophia Black', 3, '345 Oxford Street, London W1C 2JT', '02079461333', 'sophia.black@example.com', 1, 'Assistant', 'N/A', 3),
(8, 'Luke White', 1, '234 Kingsway, London E1 5TL', '02079461444', 'luke.white@example.com', 4, 'Supervisor', 'N/A', 1),
(9, 'Fiona Green', 2, '567 Market Rd, London E9 1GH', '02079461555', 'fiona.green@example.com', 2, 'Staff', 'N/A', 2),
(10, 'James Brown', 1, '678 Park Lane, London E4 3PT', '02079461666', 'james.brown@example.com', 3, 'Staff', 'N/A', 3);

INSERT INTO Cat (Cat_ID, Cat_Name, Breed, Age, Nature, Health_Status, Vaccination_Dates, Behavioral_Notes, Adoption_Status, Worker_ID, Adoption_History, Adopter_ID, Cafe_ID)
VALUES
(1, 'Mittens', 'British Shorthair', 2, 'Playful', 1, '2023-01-10', 'Loves to cuddle', 'Available', 2, 'N/A', NULL, 1),
(2, 'Whiskers', 'Maine Coon', 3, 'Friendly', 1, '2023-02-15', 'Very sociable', 'Available', 3, 'N/A', NULL, 2),
(3, 'Shadow', 'Bengal', 1, 'Curious', 1, '2023-03-12', 'Active and adventurous', 'Available', 4, 'N/A', NULL, 3),
(4, 'Fluffy', 'Persian', 5, 'Calm', 1, '2023-04-18', 'Enjoys quiet environments', 'Available', 5, 'N/A', NULL, 4),
(5, 'Tiger', 'Savannah', 4, 'Energetic', 1, '2023-05-20', 'Loves to climb', 'Available', 6, 'N/A', NULL, 1),
(6, 'Smokey', 'Russian Blue', 2, 'Gentle', 1, '2023-06-25', 'Shy but affectionate', 'Available', 7, 'N/A', NULL, 2),
(7, 'Bella', 'Siamese', 3, 'Vocal', 1, '2023-07-30', 'Very talkative', 'Available', 1, 'N/A', NULL, 3),
(8, 'Luna', 'Ragdoll', 2, 'Laid-back', 1, '2023-08-12', 'Loves to be pampered', 'Available', 3, 'N/A', NULL, 4),
(9, 'Toby', 'Maine Coon', 4, 'Playful', 1, '2023-09-22', 'Enjoys chasing toys', 'Available', 4, 'N/A', NULL, 1),
(10, 'Milo', 'British Shorthair', 3, 'Friendly', 1, '2023-10-30', 'Cuddly and affectionate', 'Available', 5, 'N/A', NULL, 2);

INSERT INTO Health_Record (Health_Record_ID, Vaccination_Date, Vaccination_Type, Behavioral_Note, Cat_ID)
VALUES
(1, '2023-01-10', 'Rabies', 'Playful', 1),
(2, '2023-02-15', 'Feline Leukemia', 'Sociable', 2),
(3, '2023-03-12', 'Rabies', 'Adventurous', 3),
(4, '2023-04-18', 'Rabies', 'Calm', 4),
(5, '2023-05-20', 'Feline Distemper', 'Energetic', 5),
(6, '2023-06-25', 'Feline Leukemia', 'Shy but affectionate', 6),
(7, '2023-07-30', 'Rabies', 'Talkative', 7),
(8, '2023-08-12', 'Feline Distemper', 'Laid-back', 8),
(9, '2023-09-22', 'Feline Leukemia', 'Chasing Toys', 9),
(10, '2023-10-30', 'Rabies', 'Cuddly', 10);

NSERT INTO Potential_Adopter (Adopter_ID, Visit_History, Interest_Level, Last_Visit_Date)
VALUES
(1, 3, 'High', '2024-01-10'),
(2, 2, 'Medium', '2024-02-12'),
(3, 5, 'High', '2024-03-14'),
(4, 1, 'Low', '2024-04-16'),
(5, 4, 'High', '2024-05-18'),
(6, 2, 'Medium', '2024-06-20'),
(7, 3, 'High', '2024-07-22'),
(8, 1, 'Low', '2024-08-23'),
(9, 4, 'Medium', '2024-09-25'),
(10, 2, 'High', '2024-10-30');

INSERT INTO Existing_Adopter (Adopter_ID, Adoption_History, Return_History, Adopted_Cats)
VALUES
(1, 2, 'No returns', 2),
(2, 1, 'Returned one cat', 1),
(3, 3, 'No returns', 3),
(4, 4, 'Returned one cat', 1),
(5, 1, 'No returns', 1),
(6, 3, 'No returns', 3),
(7, 4, 'Returned one cat', 1),
(8, 2, 'No returns', 1),
(9, 1, 'Returned two cats', 2),
(10, 5, 'No returns', 2);

INSERT INTO Cat_Worker (Cat_ID, Worker_ID)
VALUES
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 1),
(8, 2),
(9, 3),
(10, 4);


/* SECTION 3 - UPDATE STATEMENTS - The queries must be explained in natural (English) language first, and then followed up by respective statements */

/* 1) Update Oliver's status to adopted (by Fahim Khan)*/
UPDATE Cat
SET Adoption_Status = 'Adopted', Adopter_ID = 2, Adoption_History = 'Adopted by Fahim Khan'
WHERE Cat_Name = 'Oliver';

/* 2) Update the age of every cat in the Cat table by increasing their current age by 1 */
UPDATE Cat
SET Age = Age + 1;


/* SECTION 4 - SINGLE TABLE SELECT STATEMENTS - The queries must be explained in natural (English) language first, and then followed up by respective SELECTs*/

/* 1)  List all cat cafe's along with their visit history*/
SELECT Cafe_Name, Address, Visit_History
FROM Cat_Cafe;

/* 2)  List all potential adopters with high intrest levels*/
SELECT Adopter_ID, Visit_History, Interest_Level
FROM Potential_Adopter
WHERE Interest_Level = 'High';

/* 3) Show all workers assigned to the cat cafes*/
SELECT Worker_Name, Assigned_Cafe
FROM Worker;

/* 4)  List Cats with theri special behavioral notes*/
SELECT Cat_Name, Breed, Behavioral_Notes
FROM Cat
WHERE Behavioral_Notes IS NOT NULL;

/* 5)  Show all adopters that are interested in a specific breed (Bengal)*/
SELECT Name, Preferred_Breed, Preferred_Age
FROM Adopter
WHERE Preferred_Breed = 'Bengal';

/* 6) Show all the cat in a specific cat cafe (Kitty Coner)*/
SELECT Cat_Name, Breed, Cafe_ID
FROM Cat
WHERE Cafe_ID = (SELECT Cafe_ID FROM Cat_Cafe WHERE Cafe_Name = 'Kitty Corner');


/* SECTION 5 - MULTIPLE TABLE SELECT STATEMENTS - The queries must be explained in natural (English) language first, and then followed up by respective SELECTs */

/* 1)  List all workers along with the cafe they are assigned to */
SELECT Worker.Worker_Name, Cat_Cafe.Cafe_Name
FROM Worker
JOIN Cat_Cafe
ON Worker.Assigned_Cafe = Cat_Cafe.Cafe_ID;

/* 2) List workers along with the cats they are responsible for*/
SELECT Worker.Worker_Name, Cat.Cat_Name
FROM Worker
JOIN Cat
ON Worker.Worker_ID = Cat.Worker_ID;

/* 3) List all cats that haven't been adopted yet */
SELECT Cat.Cat_Name, Cat.Adoption_Status
FROM Cat
WHERE Cat.Adoption_Status = 'Available';

/* 4) List all cats and their health records*/
SELECT Cat.Cat_Name, Health_Record.Vaccination_Type, Health_Record.Vaccination_Date
FROM Cat
JOIN Health_Record 
ON Cat.Cat_ID = Health_Record.Cat_ID;

/* 5)List all potential adopters and their interest levels */
SELECT Adopter.Name, Potential_Adopter.Interest_Level
FROM Adopter
JOIN Potential_Adopter
ON Adopter.Adopter_ID = Potential_Adopter.Adopter_ID;

/* 6) List cats alongside their assigned workers*/
SELECT Cat.Cat_Name, Worker.Worker_Name
FROM Cat
JOIN Worker 
ON Cat.Worker_ID = Worker.Worker_ID;


/* SECTION 6 - DELETE ROWS - The queries must be explained in natural (English) language first, and then followed up by respective statements */

/*1) Delete woker (Sophia Black) who is no longer emoloyed*/
DELETE FROM Worker
WHERE Worker_ID = 7;

/*2) Delete a potential adopter ()from the potential adopters table*/
DELETE FROM Potential_Adopter
WHERE Adopter_ID = 6; 


/* SECTION 7 - DROP TABLES */
DROP TABLE Cat_Worker;
DROP TABLE Health_Record;
DROP TABLE Potential_Adopter;
DROP TABLE Existing_Adopter;
DROP TABLE Adopter;
DROP TABLE Cat;
DROP TABLE Cat_Cafe;
DROP TABLE Worker;

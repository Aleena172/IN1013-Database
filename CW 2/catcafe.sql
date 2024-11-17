/*
Student name: Aleena Bhatti              
Student ID: 240023456            
*/

DROP DATABASE IF EXISTS catcafe_database;
CREATE DATABASE catcafe_database;
USE catcafe_database;

/* SECTION 1 - CREATE TABLE STATEMENTS */

CREATE TABLE Adopter (
    Adopter_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Address VARCHAR(255),
    Phone_Number VARCHAR(20),
    Email_Address VARCHAR(255),
    Preferred_Breed VARCHAR(50),
    Preferred_Age INT,
    Preferred_Health VARCHAR(50),
    Visit_History INT,
    Interest_Level VARCHAR(50),
    Adoption_History INT,
    Return_History VARCHAR(255)
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
    Address VARCHAR(255),
    Phone_Number VARCHAR(20),
    Email_Address VARCHAR(255),
    Role VARCHAR(50),
    Assigned_Cafe INT,
    FOREIGN KEY (Assigned_Cafe) REFERENCES Cat_Cafe(Cafe_ID)
);

CREATE TABLE Cat (
    Cat_ID INT PRIMARY KEY,
    Cat_Name VARCHAR(255),
    Breed VARCHAR(50),
    Age INT,
    Nature VARCHAR(50),
    Health_Status VARCHAR(50),
    Vaccination_Date DATE,
    Behavioral_Notes VARCHAR(255),
    Adoption_Status VARCHAR(50),
    Worker_ID INT,
    Adopter_ID INT,
    Cafe_ID INT,
    FOREIGN KEY (Worker_ID) REFERENCES Worker(Worker_ID),
    FOREIGN KEY (Adopter_ID) REFERENCES Adopter(Adopter_ID),
    FOREIGN KEY (Cafe_ID) REFERENCES Cat_Cafe(Cafe_ID)
);

CREATE TABLE Health_Record (
    Health_Record_ID INT PRIMARY KEY,
    Cat_ID INT,
    Vaccination_Type VARCHAR(50),
    Vaccination_Date DATE,
    Behavioral_Note VARCHAR(255),
    FOREIGN KEY (Cat_ID) REFERENCES Cat(Cat_ID)
);

CREATE TABLE Cat_Worker (
    Cat_ID INT,
    Worker_ID INT,
    PRIMARY KEY (Cat_ID, Worker_ID),
    FOREIGN KEY (Cat_ID) REFERENCES Cat(Cat_ID),
    FOREIGN KEY (Worker_ID) REFERENCES Worker(Worker_ID)
);


/* SECTION 2 - INSERT STATEMENTS */

INSERT INTO Adopter (Adopter_ID, Name, Address, Phone_Number, Email_Address, Preferred_Breed, Preferred_Age, Preferred_Health, Visit_History, Interest_Level, Adoption_History, Return_History)
VALUES
(1, 'John Rolands', '123 Chadwell Heath Ln, London E6 3DW', '02083817480', 'johnrolands@gmail.com', 'Moggies', 3, 'Healthy', 3, 'High', 2, 'No returns'),
(2, 'Fahim Khan', '456 Palm Ave, London E7 8AD', '07779466789', 'fahim.khan@yahoo.co.uk', 'British Shorthair', 2, 'Healthy', 2, 'Medium', 1, 'Returned one cat'),
(3, 'Sana Lin', '789 Pine St, London E9 5LU', '07867654321', 'slin@outlook.com', 'Bengal', 4, 'Healthy', 5, 'High', 3, 'No returns'),
(4, 'Kelsi Winn', '101 Maple St, London E1 4NE', '02071234567', 'kelsiwinn@example.com', 'Russian Blue', 1, 'Healthy', 1, 'Low', 4, 'Returned one cat'),
(5, 'Aisha Mohammed', '202 Birch St, London E12 5ET', '07871123456', 'aisha.mohammed@example.com', 'Savannah', 5, 'Healthy', 4, 'High', 1, 'No returns'),
(6, 'Raj Patel', '303 Cedar St, London E15 3PH', '07770234567', 'raj.patel@example.com', 'Ragdoll', 2, 'Healthy', 2, 'Medium', 3, 'No returns'),
(7, 'David Jensen', '404 Willow St, London E3 5AL', '07773345678', 'david.jensen@example.com', 'Siamese', 3, 'Healthy', 3, 'High', 4, 'Returned one cat'),
(8, 'Laura Martin', '101 Maplewood Rd, London E2 2AA', '07781372456', 'laura.martin@aol.com', 'Maine Coon', 3, 'Healthy', 1, 'Low', 2, 'No returns'),
(9, 'Tom Wong', '202 Oak Ave, London E5 3LF', '07894365021', 'tom.wong@yahoo.com', 'Persian', 2, 'Healthy', 4, 'Medium', 1, 'Returned two cats'),
(10, 'Emma Clarke', '404 Riverbank St, London E7 4XY', '07782311247', 'emma.clarke@icloud.com', 'Bengal', 1, 'Healthy', 2, 'High', 5, 'No returns');

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

INSERT INTO Worker (Worker_ID, Worker_Name, Address, Phone_Number, Email_Address, Role, Assigned_Cafe)
VALUES
(1, 'Alice Green', '123 Brick Lane, London E1 6RU', '02079460770', 'alice.green@example.com', 'Manager', 1),
(2, 'Bilal Ahmed', '456 Hackney Road, London E2 7NX', '02079460880', 'bilal.ahmed@example.com', 'Supervisor', 2),
(3, 'Charlie Brown', '789 Old Street, London EC1V 9LU', '02079460990', 'charlie.brown@example.com', 'Staff', 3),
(4, 'Anika Rehman', '101 Shoreditch High Street, London E1 6JX', '02079461000', 'anika.rehman@example.com', 'Staff', 4),
(5, 'Emily Davis', '555 Camden Road, London NW1 9DR', '02079461111', 'emily.davis@example.com', 'Staff', 1),
(6, 'Omar Sheikh', '678 Regent Street, London W1B 5SP', '02079461222', 'omar.sheikh@example.com', 'Staff', 2),
(7, 'Sophia Black', '345 Oxford Street, London W1C 2JT', '02079461333', 'sophia.black@example.com', 'Assistant', 3),
(8, 'Luke White', '234 Kingsway, London E1 5TL', '02079461444', 'luke.white@example.com', 'Supervisor', 1),
(9, 'Fiona Green', '567 Market Rd, London E9 1GH', '02079461555', 'fiona.green@example.com', 'Staff', 2),
(10, 'James Brown', '678 Park Lane, London E4 3PT', '02079461666', 'james.brown@example.com', 'Staff', 3);

INSERT INTO Cat (Cat_ID, Cat_Name, Breed, Age, Nature, Health_Status, Vaccination_Date, Behavioral_Notes, Adoption_Status, Worker_ID, Adopter_ID, Cafe_ID)
VALUES
(1, 'Mittens', 'British Shorthair', 2, 'Playful', 'Healthy', '2023-01-10', 'Loves to cuddle', 'Available', 1, NULL, 1),
(2, 'Whiskers', 'Bengal', 3, 'Curious', 'Healthy', '2022-12-12', 'Enjoys exploring', 'Adopted', 2, 3, 2),
(3, 'Shadow', 'Persian', 5, 'Calm', 'Healthy', '2023-06-05', 'Very relaxed', 'Available', 3, NULL, 3),
(4, 'Simba', 'Savannah', 4, 'Energetic', 'Healthy', '2023-04-15', 'Needs space to run', 'Adopted', 4, 5, 4),
(5, 'Bella', 'Maine Coon', 2, 'Affectionate', 'Healthy', '2023-03-11', 'Likes to be pampered', 'Available', 5, NULL, 5),
(6, 'Oliver', 'Siamese', 3, 'Chatty', 'Healthy', '2023-05-20', 'Very vocal', 'Available', 6, NULL, 6),
(7, 'Luna', 'Ragdoll', 1, 'Docile', 'Healthy', '2023-08-25', 'Prefers quiet spaces', 'Adopted', 7, 6, 7),
(8, 'Mochi', 'Russian Blue', 4, 'Playful', 'Healthy', '2023-02-10', 'Very active', 'Available', 8, NULL, 8),
(9, 'Cleo', 'Sphynx', 2, 'Affectionate', 'Healthy', '2023-09-14', 'Seeks constant attention', 'Adopted', 9, 10, 9),
(10, 'Leo', 'Tabby', 1, 'Mischievous', 'Healthy', '2023-07-21', 'Always getting into trouble', 'Available', 10, NULL, 10);

INSERT INTO Health_Record (Health_Record_ID, Cat_ID, Vaccination_Type, Vaccination_Date, Behavioral_Note)
VALUES
(1, 1, 'Rabies', '2023-01-10', 'Loves to cuddle'),
(2, 2, 'Feline Distemper', '2022-12-12', 'Enjoys exploring'),
(3, 3, 'Rabies', '2023-06-05', 'Very relaxed'),
(4, 4, 'Leukemia', '2023-04-15', 'Needs space to run'),
(5, 5, 'Feline Herpesvirus', '2023-03-11', 'Likes to be pampered'),
(6, 6, 'Rabies', '2023-05-20', 'Very vocal'),
(7, 7, 'Feline Distemper', '2023-08-25', 'Prefers quiet spaces'),
(8, 8, 'Rabies', '2023-02-10', 'Very active'),
(9, 9, 'Leukemia', '2023-09-14', 'Seeks constant attention'),
(10, 10, 'Rabies', '2023-07-21', 'Always getting into trouble');

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
SET Adoption_Status = 'Adopted', Adopter_ID = 2
WHERE Cat_Name = 'Oliver';

/* 2) Update the age of every cat in the Cat table by increasing their current age by 1 */
UPDATE Cat
SET Age = Age + 1;


/* SECTION 4 - SINGLE TABLE SELECT STATEMENTS - The queries must be explained in natural (English) language first, and then followed up by respective SELECTs*/

/* 1)  List all cat cafe's along with their visit history*/
SELECT Cafe_Name, Address, Visit_History
FROM Cat_Cafe;

/* 2)  List all adopters with high intrest levels*/
SELECT Name, Interest_Level, Visit_History
FROM Adopter
WHERE Interest_Level = 'High'

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

/* 5)List all adopters and their interest levels */
SELECT Name, Interest_Level
FROM Adopter;

/* 6) List cats alongside their assigned workers*/
SELECT Cat.Cat_Name, Worker.Worker_Name
FROM Cat
JOIN Worker 
ON Cat.Worker_ID = Worker.Worker_ID;


/* SECTION 6 - DELETE ROWS - The queries must be explained in natural (English) language first, and then followed up by respective statements */

/*1) Delete woker (Sophia Black-ID 7) who is no longer emoloyed*/
DELETE FROM Worker
WHERE Worker_ID = 7;

/*2) Delete a potential adopter (Adopter ID 6) from the potential adopters table*/
DELETE FROM Potential_Adopter
WHERE Adopter_ID = 6; 


/* SECTION 7 - DROP TABLES */
DROP TABLE Cat_Worker;
DROP TABLE Health_Record;
DROP TABLE Cat;
DROP TABLE Worker;
DROP TABLE Cat_Cafe;
DROP TABLE Adopter;
/*
Student name: Aleena Bhatti              
Student ID: 240023456            
*/

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
    FOREIGN KEY (Worker_ID) REFERENCES Worker(Worker_ID) ON DELETE SET NULL,
    FOREIGN KEY (Adopter_ID) REFERENCES Adopter(Adopter_ID) ON DELETE SET NULL,
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
(10, 'Purrrfect Cafe', '02079461222', '56 Shore Road, London E9 1AB', 30);

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
(9, 'Fiona Green', '567 Market Rd, London E9 1GH', '02079461555', 'fiona.green@example.com', 'Manager', 4),
(10, 'Mohammad Ali', '345 Fleet Street, London EC4Y 1BG', '02079461666', 'mohammad.ali@example.com', 'Assistant', 5);

INSERT INTO Cat (Cat_ID, Cat_Name, Breed, Age, Nature, Health_Status, Vaccination_Date, Behavioral_Notes, Adoption_Status, Worker_ID, Adopter_ID, Cafe_ID)
VALUES
(1, 'Fluffy', 'Maine Coon', 3, 'Playful', 'Healthy', '2023-01-15', 'Loves to be petted', 'Adopted', 1, 1, 1),
(2, 'Whiskers', 'Siamese', 1, 'Curious', 'Healthy', '2023-02-12', 'Likes to explore', 'Adopted', 2, 1, 2),
(3, 'Tommy', 'Persian', 4, 'Shy', 'Healthy', '2023-03-15', 'Prefers solitude', 'Available', 3, NULL, 3),
(4, 'Bella', 'Maine Coon', 3, 'Gentle', 'Healthy', '2023-04-20', 'Loves to sit by the window', 'Adopted', 4, 2, 4),
(5, 'Snowball', 'Ragdoll', 5, 'Friendly', 'Healthy', '2023-05-10', 'Gets along well with others', 'Available', 5, NULL, 5),
(6, 'Sasha', 'Bengal', 2, 'Active', 'Healthy', '2023-06-02', 'Loves to climb', 'Adopted', 6, 2, 1),
(7, 'Luna', 'Maine Coon', 3, 'Affectionate', 'Healthy', '2023-07-10', 'Enjoys cuddling', 'Available', 7, NULL, 2),
(8, 'Felix', 'Siamese', 1, 'Friendly', 'Healthy', '2023-08-15', 'Likes to socialize', 'Adopted', 8, 3, 3),
(9, 'Oliver', 'Persian', 4, 'Calm', 'Healthy', '2023-09-12', 'Enjoys lounging', 'Available', 9, NULL, 4),
(10, 'Zoe', 'Ragdoll', 5, 'Gentle', 'Healthy', '2023-10-01', 'Loves to follow people around', 'Adopted', 10, 4, 5);


INSERT INTO Health_Record (Health_Record_ID, Cat_ID, Vaccination_Type, Vaccination_Date, Behavioral_Note)
VALUES
(1, 1, 'Rabies', '2023-01-05', 'Playful and curious'),
(2, 2, 'Feline Leukemia', '2023-02-10', 'Social and friendly'),
(3, 3, 'Feline Distemper', '2023-03-15', 'Shy but affectionate'),
(4, 4, 'Rabies', '2023-04-20', 'Gentle and calm'),
(5, 5, 'Feline Leukemia', '2023-05-10', 'Active and energetic'),
(6, 6, 'Rabies', '2023-06-02', 'Loves climbing and exploring'),
(7, 7, 'Feline Distemper', '2023-07-10', 'Affectionate and cuddly'),
(8, 8, 'Feline Leukemia', '2023-08-15', 'Friendly and loves socializing'),
(9, 9, 'Rabies', '2023-09-12', 'Calm and relaxed'),
(10, 10, 'Feline Distemper', '2023-10-01', 'Loves following people');

INSERT INTO Cat_Worker (Cat_ID, Worker_ID)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);


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

/*1) Delete Cat cafe (Cat_Cafe ID 9) as it has the lowest visit hist  */
DELETE FROM Cat_Cafe
WHERE Cafe_ID = 9;

/*2) Delete a  adopter (Adopter ID 6) from the  adopters table*/
DELETE FROM Adopter 
WHERE Adopter_ID = 6;


/* SECTION 7 - DROP TABLES */
DROP TABLE Cat_Worker;
DROP TABLE Health_Record;
DROP TABLE Cat;
DROP TABLE Worker;
DROP TABLE Cat_Cafe;
DROP TABLE Adopter;

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
    Name VARCHAR(50),
    Address VARCHAR(255),
    Phone_Number VARCHAR(15) UNIQUE,
    Email_Address VARCHAR(255) UNIQUE,
    Preferred_Breed VARCHAR(50),
    Preferred_Age TINYINT,
    Preferred_Health VARCHAR(10)
);

CREATE TABLE Cat_Cafe (
    Cafe_ID INT PRIMARY KEY,
    Cafe_Name VARCHAR(50) UNIQUE NOT NULL,
    Phone_Number VARCHAR(15) UNIQUE NOT NULL,
    Address VARCHAR(255),
    Visit_History INT
);

CREATE TABLE Worker (
    Worker_ID INT PRIMARY KEY,
    Worker_Name VARCHAR(50),
    Supervisor_ID INT,
    Address VARCHAR(255),
    Phone_Number VARCHAR(15) UNIQUE,
    Email_Address VARCHAR(60) UNIQUE,
    Assigned_Cats INT,
    Role VARCHAR(20),
    Added_Note VARCHAR(100),
    Assigned_Cafe INT,
    FOREIGN KEY (Supervisor_ID) REFERENCES Worker(Worker_ID),
    FOREIGN KEY (Assigned_Cafe) REFERENCES Cat_Cafe(Cafe_ID)
);

CREATE TABLE Cat (
    Cat_ID INT PRIMARY KEY,
    Cat_Name VARCHAR(50) UNIQUE NOT NULL,
    Breed VARCHAR(30),
    Age TINYINT,
    Nature VARCHAR(30),
    Health_Status INT,
    Vaccination_Dates DATE,
    Behavioral_Notes VARCHAR(100),
    Adoption_Status INT,
    Worker_ID INT,
    Adoption_History INT,
    Adopter_ID INT,
    Cafe_ID INT,
    FOREIGN KEY (Worker_ID) REFERENCES Worker(Worker_ID),
    FOREIGN KEY (Adopter_ID) REFERENCES Adopter(Adopter_ID),  
    FOREIGN KEY (Cafe_ID) REFERENCES Cat_Cafe(Cafe_ID)
);

CREATE TABLE Health_Record (
    Health_Record_ID INT PRIMARY KEY,
    Vaccination_Date DATE,
    Vaccination_Type VARCHAR(100),
    Behavioral_Note VARCHAR(100),
    Cat_ID INT,
    FOREIGN KEY (Cat_ID) REFERENCES Cat(Cat_ID) 
);

CREATE TABLE Potential_Adopter (
    Adopter_ID INT PRIMARY KEY,
    Visit_History INT,
    Interest_Level VARCHAR(10),
    Last_Visit_Date DATE,
    FOREIGN KEY (Adopter_ID) REFERENCES Adopter(Adopter_ID)
);

CREATE TABLE Existing_Adopter (
    Adopter_ID INT PRIMARY KEY,
    Adoption_History INT UNIQUE,
    Return_History VARCHAR(100),
    Adopted_Cats INT,
    FOREIGN KEY (Adopter_ID) REFERENCES Adopter(Adopter_ID)
);

CREATE TABLE Cat_Worker (
    Cat_ID INT,
    Worker_ID INT,
    PRIMARY KEY (Cat_ID, Worker_ID),
    FOREIGN KEY (Cat_ID) REFERENCES Cat(Cat_ID),
    FOREIGN KEY (Worker_ID) REFERENCES Worker(Worker_ID)
);


/* SECTION 2 - INSERT STATEMENTS */


                     
/* SECTION 3 - UPDATE STATEMENTS - The queries must be explained in natural (English) language first, and then followed up by respective statements */

/*
1)

*/

/*
2)

*/


/* SECTION 4 - SINGLE TABLE SELECT STATEMENTS - The queries must be explained in natural (English) language first, and then followed up by respective SELECTs*/


/* 
1)  

*/



/* 
2)  

*/




/* 
3)  

*/



/* 
4)  

*/




/* 
5)  

*/



/* 
6)  

*/



/* SECTION 5 - MULTIPLE TABLE SELECT STATEMENTS - The queries must be explained in natural (English) language first, and then followed up by respective SELECTs */


/* 
1)  

*/



/* 
2)  

*/



/* 
3)  

*/


 

/* 
4)  

*/



/* 
5)  

*/



/* 
6)  

*/


/* SECTION 6 - DELETE ROWS - The queries must be explained in natural (English) language first, and then followed up by respective statements */

/*
1)

*/

/*
2)

*/


/* SECTION 7 - DROP TABLES */


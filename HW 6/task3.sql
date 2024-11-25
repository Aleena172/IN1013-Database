--1
SELECT DISTINCT first_name, surname
FROM restStaff
JOIN restBill ON staff_no = waiter_no
WHERE cust_name = "Tanya Singh";

--2
SELECT room_date
FROM restRoom_management
JOIN restStaff ON restRoom_management.headwaiter = staff_no
WHERE first_name = "Charles" AND room_name = "Green" AND room_date BETWEEN 160201 AND 160229;

--3
SELECT DISTINCT first_name, surname
FROM restStaff
WHERE headwaiter = (
    SELECT headwaiter
    FROM restStaff
    WHERE first_name = "Zoe" AND surname = "Ball" 
);

--4
SELECT cust_name, bill_total, first_name, surname
FROM restBill
JOIN restStaff ON waiter_no = staff_no
ORDER BY bill_total DESC;

--5
SELECT DISTINCT first_name, surname
FROM restStaff
JOIN restBill ON staff_no = waiter_no
WHERE table_no IN (
    SELECT DISTINCT table_no
    FROM restBill
    WHERE bill_no IN (14,17)
    );

--6
SELECT first_name, surname
FROM restStaff
wHERE staff_no = (SELECT headwaiter FROM restRoom_management WHERE room_name = 'Blue' AND room_date = 160312)
OR headwaiter = (SELECT headwaiter FROM restRoom_management WHERE room_name = 'Blue' AND room_date = 160312);


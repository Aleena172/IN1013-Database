--1
SELECT DISTINCT cust_name
FROM restBill
JOIN restStaff ON waiter_no = staff_no
WHERE bill_total > 450.00
AND headwaiter = (SELECT staff_no FROM restStaff WHERE first_name = 'Charles');

--2
SELECT first_name, surname
FROM restBill
JOIN restStaff ON staff_no = waiter_no
WHERE cust_name = 'Nerida Smith' AND bill_date = 160111;

--3
SELECT cust_name
FROM restBill
WHERE bill_total = (SELECT MIN(bill_total) FROM restBill);

--4
SELECT first_name, surname
FROM restStaff
LEFT JOIN restBill ON staff_no = waiter_no
WHERE waiter_no IS NULL; 

--5*
SELECT cust_name, first_name AS headwaiter_first_name, surname AS headwaiter_surname, room_name
FROM restBill
INNER JOIN restRest_table ON restBill.table_no=restRest_table.table_no
INNER JOIN restRoom_management ON restRoom_management.room_name=restRest_table.room_name
INNER JOIN restStaff ON restRoom_management.headwaiter=restStaff.staff_no
WHERE bill_total = (SELECT max(bill_total) 
FROM restBill) AND room_date=bill_date;









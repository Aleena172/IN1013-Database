--1
SELECT first_name AS waiter_first_name, surname AS waiter_surname, bill_date, COUNT(bill_no) AS number_of_bills
FROM restBill 
JOIN restStaff  ON waiter_no = staff_no
GROUP BY first_name, surname, bill_date
HAVING COUNT(bill_no) >= 2;

--2
SELECT restRest_table.room_name, COUNT(restRest_table.table_no) AS number_of_large_tables
FROM restRest_table
WHERE restRest_table.no_of_seats>6
GROUP BY  restRest_table.room_name;

--3
SELECT restRest_table.room_name, SUM(restBill.bill_total) AS total_bills
FROM restBill 
JOIN restRest_table ON restBill.table_no = restRest_table.table_no
GROUP BY restRest_table.room_name;
--4
SELECT headwaiters.first_name AS headwaiter_first_name, headwaiters.surname AS headwaiter_surname, SUM(restBill.bill_total) AS total_bill_amount
FROM restStaff AS headwaiters
JOIN restStaff AS waiters ON headwaiters.staff_no = waiters.headwaiter
JOIN restBill ON waiters.staff_no = restBill.waiter_no
GROUP BY headwaiters.first_name, headwaiters.surname
ORDER BY total_bill_amount DESC;

--5
SELECT cust_name, AVG(bill_total) AS average_spent
FROM restBill
GROUP BY cust_name
HAVING AVG(bill_total) > 400;

--6
SELECT restStaff.first_name AS waiter_first_name, restStaff.surname AS waiter_surname, restBill.bill_date, COUNT(restBill.bill_no) AS number_of_bills
FROM restBill
JOIN restStaff ON restBill.waiter_no = restStaff.staff_no
GROUP BY restStaff.first_name, restStaff.surname, restBill.bill_date
HAVING COUNT(restBill.bill_no) >= 3;

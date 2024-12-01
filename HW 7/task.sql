--1
CREATE VIEW samsBill
AS SELECT first_name, surname, bill_date, cust_name, bill_total
FROM restBill
JOIN restStaff ON waiter_no = staff_no
WHERE first_name = "Sam" AND surname = "Pitt";

--2
SELECT first_name, surname, bill_date, cust_name, bill_total
FROM samsBill
WHERE bill_total > 400;

--3
CREATE VIEW roomTotals
AS SELECT room_name, SUM(bill_total) AS total_sum
FROM restBill
JOIN restRest_table ON restBill.table_no = restRest_table.table_no
GROUP BY restRest_table.room_name;

--4
CREATE VIEW teamTotals
AS SELECT
FROM restBill
-- 1
CREATE VIEW samsBills
AS
(SELECT first_name,surname,bill_date,cust_name,bill_total
FROM restStaff S
INNER JOIN restBill B
ON S.staff_no = B.waiter_no
WHERE first_name = "Sam" AND surname = "Pitt");

SELECT * FROM samsBills;

-- 2
SELECT * FROM samsBills
WHERE (bill_total >= 400);

--3
CREATE VIEW roomTotals (room_name,total_sum)
AS
(SELECT room_name,SUM(bill_total) 
FROM restRest_table T
INNER JOIN restBill B
ON T.table_no = B.table_no
WHERE bill_total > 1
GROUP BY room_name);

SELECT * FROM roomTotals;

-- 4
CREATE VIEW teamTotals (headwaiter_name,total_sum)
AS
(SELECT CONCAT(first_name,'',surname),SUM(bill_total) 
FROM restStaff S
INNER JOIN restBill B
ON S.staff_no = B.waiter_no
WHERE headwaiter = NULL
GROUP BY CONCAT(first_name,'',surname));

SELECT * FROM teamTotals;

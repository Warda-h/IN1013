/* 1
SELECT cust_name
FROM restBill R1
INNER JOIN restStaff R2
ON R1.waiter_no = R2.staff_no
WHERE (bill_total >= 450 AND headwaiter = NULL AND first_name = "Charles");

/* 2
SELECT first_name,surname
FROM restBill R1
INNER JOIN restStaff R2
ON R1.waiter_no = R2.staff_no
WHERE (cust_name = "Nerida " AND bill_date = 160111 AND headwaiter = NULL);

/* 3
SELECT cust_name
FROM restBill R1
INNER JOIN restStaff R2
ON R1.waiter_no = R2.staff_no
WHERE bill_total IN
	(SELECT MIN(bill_total)
	  FROM restBill);

/* 4
SELECT first_name,surname
FROM restStaff R1
INNER JOIN restBill R2
ON R1.staff_no = R2.waiter_no  
WHERE staff_no NOT IN
	(SELECT DISTINCT(waiter_no)
	  FROM restBill);

/* 5
SELECT cust_name,first_name,surname,room_name
FROM restBill R1
INNER JOIN restStaff R2
ON R1.waiter_no = R2.staff_no
INNER JOIN restRest_table R3
ON R1.table_no = R3.table_no
WHERE bill_total IN
	(SELECT MAX(bill_total)
	  FROM restBill); 
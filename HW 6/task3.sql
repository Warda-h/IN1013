/* 1
SELECT first_name, surname
FROM restStaff R1
INNER JOIN restBill R2
ON R1.staff_no = R2.waiter_no
WHERE (cust_name = "Tanya Singh");

/* 2
SELECT bill_date
FROM restBill R1
INNER JOIN restStaff R2
ON R2.staff_no = R1.waiter_no
INNER JOIN restRest_table R3
ON R1.table_no = R3.table_no
WHERE (room_name = "Green" AND bill_date = 160200 AND first_name = "Charles"); 

/* 3 
SELECT R2.first_name,R2.surname
FROM restStaff R1
INNER JOIN restStaff R2
ON R1.headwaiter = R2.headwaiter
WHERE (R2.headwaiter = "Zoe");

/* 4
SELECT cust_name,bill_total,first_name,surname
FROM restBill R1
INNER JOIN restStaff R2
ON R1.waiter_no = R2.staff_no
ORDER BY bill_total ASC;

/* 5
SELECT first_name, surname
FROM restStaff R1
INNER JOIN restBill R2
ON R1.staff_no = R2.waiter_no
WHERE (bill_no = 00014 AND bill_no = 00017);

/* 6
SELECT first_name, surname
FROM restStaff R1
INNER JOIN restBill R2
ON R1.staff_no = R2.waiter_no
INNER JOIN restRest_table R3
ON R2.table_no = R3.table_no
WHERE (room_name = "Blue" AND bill_date = 160312);
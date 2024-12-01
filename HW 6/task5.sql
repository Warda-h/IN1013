/* 1
SELECT first_name,surname,bill_date,COUNT(bill_no)
FROM restStaff R1
INNER JOIN restBill R2
ON R1.staff_no = R2.waiter_no
GROUP BY bill_date,first_name,surname
HAVING COUNT(bill_no) >= 2;

/* 2
SELECT room_name, COUNT(*)
FROM restRest_table
WHERE no_of_seats >= 6
GROUP BY room_name;

/* 3
SELECT room_name, bill_total
FROM restRest_table R1
INNER JOIN restBill R2
ON R1.table_no = R2.table_no
GROUP BY room_name,bill_total;

/* 4
SELECT first_name,surname,SUM(bill_total)
FROM restStaff R1
INNER JOIN restBill R2
ON R1.staff_no = R2.waiter_no
WHERE headwaiter = NULL
GROUP BY first_name,surname;

/* 5
SELECT cust_name, AVG(bill_total)
FROM restBill
GROUP BY cust_name
HAVING AVG(bill_total) >= 400;

/* 6
SELECT first_name,surname,COUNT(bill_no)
FROM restStaff R1
INNER JOIN restBill R2
ON R1.staff_no = R2.waiter_no
GROUP BY bill_date,first_name,surname
HAVING COUNT(bill_no) >= 3;

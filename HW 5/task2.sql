-- 1

SELECT SUM(bill_total) as Income
FROM restBill;

-- 2

SELECT SUM(bill_total) as 'Feb Income'
FROM restBill
WHERE (bill_date > 160200 and bill_date < 160300);

-- 3

SELECT AVG(bill_total)
FROM restBill
WHERE table_no = 002;

-- 4

SELECT MIN(no_of_seats) as Min,
MAX(no_of_seats) as Max,
AVG(no_of_seats) as Avg
FROM restRest_table
WHERE room_name = 'Blue';

-- 5

SELECT COUNT(DISTINCT(table_no))
FROM restBill
WHERE (waiter_no = 004 or waiter_no = 002);
SELECT product_id
FROM Products
WHERE low_fats = 'Y'
AND recyclable = 'Y';

# Write your MySQL query statement below
SELECT name
FROM Customer
WHERE referee_id <> 2
OR referee_id IS NULL; 


# Write your MySQL query statement below
SELECT name, population, area
FROM World
WHERE area >= 3000000 
OR population >= 25000000;

# Write your MySQL query statement below
SELECT author_id AS id
FROM Views
WHERE author_id = viewer_id
GROUP BY author_id
ORDER BY author_id ASC;

# Write your MySQL query statement below
SELECT tweet_id
FROM Tweets
WHERE CHAR_LENGTH(content) > 15;

# Write your MySQL query statement below
SELECT unique_id, name
FROM EmployeeUNI
RIGHT JOIN Employees
ON Employees.id = EmployeeUNI.id ;

# Write your MySQL query statement below
SELECT product_name, year, price
FROM Sales
JOIN Product
ON Product.product_id = Sales.product_id;

# Write your MySQL query statement below
SELECT Visits.customer_id, COUNT(Visits.visit_id) AS count_no_trans 
from Visits 
LEFT JOIN Transactions
ON Visits.visit_id = Transactions.visit_id  
WHERE Transactions.transaction_id IS NULL 
GROUP BY Visits.customer_id; 

# Write your MySQL query statement below
SELECT w1.id
FROM Weather w1
JOIN Weather w2
ON w1.recordDate = DATE_ADD(w2.recordDate, INTERVAL 1 DAY)
WHERE w1.temperature > w2.temperature;

# Write your MySQL query statement below
SELECT e.name, b.bonus
FROM Employee e
LEFT JOIN Bonus b
ON b.empId = e.empId
WHERE b.bonus < 1000
OR b.bonus IS NULL;

# Write your MySQL query statement below
SELECT id, movie, description, rating
FROM Cinema
WHERE description <> "boring"
AND id % 2 <> 0
ORDER BY rating DESC;

SELECT u.product_id, COALESCE(ROUND(SUM(p.price*u.units)/SUM(u.units),2),0) AS average_price
FROM UnitsSold u
INNER JOIN Prices p 
ON u.product_id = p.product_id
AND u.purchase_date BETWEEN p.start_date AND p.end_date
AND u.units <> 0
GROUP BY u.product_id;
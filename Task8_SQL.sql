
CREATE PROCEDURE GetOrdersByCustomer(IN cust_id INT) SELECT order_id, order_date, amount FROM Orders WHERE customer_id = cust_id;

CALL GetOrdersByCustomer(2);
-- --------------------------------------------------------------

CREATE FUNCTION TotalSpentByCustomer(cust_id INT)
RETURNS DECIMAL(10,2)
READS SQL DATA
RETURN (
    SELECT IFNULL(SUM(amount), 0)
    FROM Orders
    WHERE customer_id = cust_id
);

SELECT TotalSpentByCustomer(2);
SELECT Name, TotalSpentByCustomer(ID) AS total_spent
FROM Customers;
-- --------------------------------------------------------------

CREATE PROCEDURE SimpleOrdersByCustomer(IN cust_id INT) SELECT * FROM Orders WHERE customer_id = cust_id;

CALL SimpleOrdersByCustomer(2);
-- --------------------------------------------------------------


CREATE FUNCTION SimpleTotalSpent(cust_id INT)
RETURNS DECIMAL(10,2)
READS SQL DATA
RETURN (SELECT SUM(amount) FROM Orders WHERE customer_id = cust_id);

SELECT Name, SimpleTotalSpent(ID) AS total_spent
FROM Customers;
-- --------------------------------------------------------------


DROP PROCEDURE IF EXISTS GetOrdersByCustomer;
DROP FUNCTION IF EXISTS TotalSpentByCustomer;
DROP PROCEDURE IF EXISTS SimpleOrdersByCustomer;


















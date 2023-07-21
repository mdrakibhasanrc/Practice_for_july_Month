-- This is a SQL challenge for Field Nation Business Systems roles.


-- Create the Customers table

use ecom;
CREATE TABLE Customers (
    Customer_id INT PRIMARY KEY,
    Name VARCHAR(50)
);

-- Insert 10 data rows to Customers Table
INSERT INTO Customers (Customer_id, Name) VALUES (1, 'John Doe');
INSERT INTO Customers (Customer_id, Name) VALUES (2, 'Jane Smith');
INSERT INTO Customers (Customer_id, Name) VALUES (3, 'Michael Johnson');
INSERT INTO Customers (Customer_id, Name) VALUES (4, 'Emily Williams');
INSERT INTO Customers (Customer_id, Name) VALUES (5, 'David Brown');
INSERT INTO Customers (Customer_id, Name) VALUES (6, 'Sarah Davis');
INSERT INTO Customers (Customer_id, Name) VALUES (7, 'Robert Jones');
INSERT INTO Customers (Customer_id, Name) VALUES (8, 'Jennifer Taylor');
INSERT INTO Customers (Customer_id, Name) VALUES (9, 'Christopher Clark');
INSERT INTO Customers (Customer_id, Name) VALUES (10, 'Jessica Lee');




-- Create the Products table
CREATE TABLE Products (
    Product_Id INT PRIMARY KEY,
    Product_Name VARCHAR(50)
);

-- Insert 10 data rows to Products table
INSERT INTO Products (Product_Id, Product_Name) VALUES (1, 'Product A');
INSERT INTO Products (Product_Id, Product_Name) VALUES (2, 'Product B');
INSERT INTO Products (Product_Id, Product_Name) VALUES (3, 'Product C');
INSERT INTO Products (Product_Id, Product_Name) VALUES (4, 'Product D');
INSERT INTO Products (Product_Id, Product_Name) VALUES (5, 'Product E');
INSERT INTO Products (Product_Id, Product_Name) VALUES (6, 'Product F');
INSERT INTO Products (Product_Id, Product_Name) VALUES (7, 'Product G');
INSERT INTO Products (Product_Id, Product_Name) VALUES (8, 'Product H');
INSERT INTO Products (Product_Id, Product_Name) VALUES (9, 'Product I');
INSERT INTO Products (Product_Id, Product_Name) VALUES (10, 'Product J');




-- Create the Orders table
CREATE TABLE Orders (
    Order_Id INT PRIMARY KEY,
    Customer_Id INT,
    Status VARCHAR(20),
    Order_Date DATE
);

-- Insert 30 data rows to Orders table
INSERT INTO Orders (Order_Id, Customer_Id, Status, Order_Date) VALUES (1, 1, 'open', '2023-06-01');
INSERT INTO Orders (Order_Id, Customer_Id, Status, Order_Date) VALUES (2, 2, 'in process', '2023-06-02');
INSERT INTO Orders (Order_Id, Customer_Id, Status, Order_Date) VALUES (3, 3, 'fulfilled', '2023-06-03');
INSERT INTO Orders (Order_Id, Customer_Id, Status, Order_Date) VALUES (4, 4, 'back ordered', '2023-06-04');
INSERT INTO Orders (Order_Id, Customer_Id, Status, Order_Date) VALUES (5, 5, 'open', '2023-06-05');
INSERT INTO Orders (Order_Id, Customer_Id, Status, Order_Date) VALUES (6, 6, 'in process', '2023-06-06');
INSERT INTO Orders (Order_Id, Customer_Id, Status, Order_Date) VALUES (7, 7, 'fulfilled', '2023-06-07');
INSERT INTO Orders (Order_Id, Customer_Id, Status, Order_Date) VALUES (8, 8, 'back ordered', '2023-06-08');
INSERT INTO Orders (Order_Id, Customer_Id, Status, Order_Date) VALUES (9, 9, 'open', '2023-06-09');
INSERT INTO Orders (Order_Id, Customer_Id, Status, Order_Date) VALUES (10, 10, 'in process', '2023-06-10');
INSERT INTO Orders (Order_Id, Customer_Id, Status, Order_Date) VALUES (11, 1, 'fulfilled', '2023-06-11');
INSERT INTO Orders (Order_Id, Customer_Id, Status, Order_Date) VALUES (12, 2, 'back ordered', '2023-06-12');
INSERT INTO Orders (Order_Id, Customer_Id, Status, Order_Date) VALUES (13, 3, 'open', '2023-06-13');
INSERT INTO Orders (Order_Id, Customer_Id, Status, Order_Date) VALUES (14, 4, 'in process', '2023-06-14');
INSERT INTO Orders (Order_Id, Customer_Id, Status, Order_Date) VALUES (15, 5, 'fulfilled', '2023-06-15');
INSERT INTO Orders (Order_Id, Customer_Id, Status, Order_Date) VALUES (16, 6, 'back ordered', '2023-06-16');
INSERT INTO Orders (Order_Id, Customer_Id, Status, Order_Date) VALUES (17, 7, 'open', '2023-06-17');
INSERT INTO Orders (Order_Id, Customer_Id, Status, Order_Date) VALUES (18, 8, 'in process', '2023-06-18');
INSERT INTO Orders (Order_Id, Customer_Id, Status, Order_Date) VALUES (19, 9, 'fulfilled', '2023-06-19');
INSERT INTO Orders (Order_Id, Customer_Id, Status, Order_Date) VALUES (20, 10, 'back ordered', '2023-06-20');
INSERT INTO Orders (Order_Id, Customer_Id, Status, Order_Date) VALUES (21, 1, 'open', '2023-06-21');
INSERT INTO Orders (Order_Id, Customer_Id, Status, Order_Date) VALUES (22, 2, 'in process', '2023-06-22');
INSERT INTO Orders (Order_Id, Customer_Id, Status, Order_Date) VALUES (23, 3, 'fulfilled', '2023-06-23');
INSERT INTO Orders (Order_Id, Customer_Id, Status, Order_Date) VALUES (24, 4, 'back ordered', '2023-06-24');
INSERT INTO Orders (Order_Id, Customer_Id, Status, Order_Date) VALUES (25, 5, 'open', '2023-06-25');
INSERT INTO Orders (Order_Id, Customer_Id, Status, Order_Date) VALUES (26, 6, 'in process', '2023-06-26');
INSERT INTO Orders (Order_Id, Customer_Id, Status, Order_Date) VALUES (27, 7, 'fulfilled', '2023-06-27');
INSERT INTO Orders (Order_Id, Customer_Id, Status, Order_Date) VALUES (28, 8, 'back ordered', '2023-06-28');
INSERT INTO Orders (Order_Id, Customer_Id, Status, Order_Date) VALUES (29, 9, 'open', '2023-06-29');
INSERT INTO Orders (Order_Id, Customer_Id, Status, Order_Date) VALUES (30, 10, 'in process', '2023-06-30');




-- Create the Order_Items table
CREATE TABLE Order_Items (
    Order_Id INT,
    Product_Id INT,
    Quantity INT
);



-- Insert 25 data rows
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (1, 1, 5);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (1, 2, 3);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (2, 3, 2);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (2, 4, 1);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (3, 5, 4);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (3, 6, 2);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (4, 7, 3);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (4, 8, 1);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (5, 9, 2);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (5, 10, 3);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (6, 1, 4);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (6, 2, 2);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (7, 3, 3);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (7, 4, 1);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (8, 5, 2);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (8, 6, 3);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (9, 7, 4);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (9, 8, 2);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (10, 9, 1);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (10, 10, 3);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (11, 1, 2);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (11, 2, 1);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (12, 3, 3);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (12, 4, 2);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (13, 5, 1);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (13, 6, 3);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (14, 7, 2);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (14, 8, 4);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (15, 9, 3);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (15, 10, 2);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (16, 1, 1);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (16, 2, 3);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (17, 3, 2);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (17, 4, 4);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (18, 5, 1);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (18, 6, 2);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (19, 7, 3);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (19, 8, 1);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (20, 9, 4);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (20, 10, 2);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (21, 1, 3);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (21, 2, 2);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (22, 3, 1);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (22, 4, 3);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (23, 5, 2);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (23, 6, 1);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (24, 7, 3);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (24, 8, 2);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (25, 9, 1);
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity) VALUES (25, 10, 4);



-- Problem 1:Write a SQL statement to count the number of orders per customer

select
    c.Customer_id,
    c.name,
    count(o.order_id) as count_order
from customers c
left join orders o 
on c.Customer_id=o.Customer_id
group by c.name,c.Customer_id;

-- Problem 2. For the result of question 1 modify the SQL statement to show an average number of products each customer had on their orders.
select
    c.Customer_id,
    c.name,
    avg(od.Quantity) as avg_order
from customers c
left join orders o 
on c.Customer_id=o.Customer_id
left join order_items od 
on od.Order_id=o.Order_id
group by c.name,c.Customer_id;

-- Problem 3. Write a SQL statement to show which customers are affected by backordered items and also which items are backordered.

select
   c.Customer_id,
   c.name,
   o.Status,
   p.Product_Name
from customers c
inner join orders o on o.Customer_id=c.Customer_id
inner join order_items od  on od.Order_id=o.Order_id
inner join products p on p.Product_id=od.Product_id
where o.status='back ordered' ;


-- Problem 4. Write a SQL statement that utilizes common table expressions or subqueries to display only the customers who had a fulfilled order.

with cus as(select
   distinct c.Customer_id,
   c.name,
   o.Status,
   p.Product_Name
from customers c
inner join orders o on o.Customer_id=c.Customer_id
inner join order_items od  on od.Order_id=o.Order_id
inner join products p on p.Product_id=od.Product_id
where o.status='fulfilled') 
select
   distinct name
from cus;

-- Problem 5. Give an item_id in the order_items table to each product within an order based on quantity and product ID (secondary) - hint: this is a partition or windowing function;

select
	oi.Order_Id,
    p.Product_Id,
    p.Product_Name,
    oi.Quantity,
    dense_rank() over(partition by p.Product_id order by oi.Quantity desc) as rnk
from products p 
inner join order_items oi on oi.Product_id=p.Product_id; 
	




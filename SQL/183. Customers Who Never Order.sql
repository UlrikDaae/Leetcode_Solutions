/* 
EXPLANATION OF SOLUTION:
–––––––––––––––––––––––––––––––––––––––––––––––––––– 
*/
/*
To solve this task We're going to be JOINING the Customers and Orders tables together. Our task is to also report on the customers who never order, in other words where there is a NULL value. We specify this with a WHERE clause where the result is NULL. Note that in this task we also have to rename a collumn, because that is specified in how we're supposed to report our results. 
*/

-- As always with the JOIN we alias the collumns, and I like doing this with the first letter of the name of the table with capitalization. 
SELECT C.Name AS Customers -- We first SELECT the C.name collumn and rename it as 'Customers'. 
FROM Customers C -- We gather this from the Customers table, with the 'C' alias. 
LEFT JOIN Orders O ON C.Id = O.CustomerId -- We join the C.Id (Id-collumn from the Customers table) on the O.CustomerId (Id-collumn for the Order-table. 
WHERE O.CustomerId IS NULL -- We now look to filter for only the instances where the O.CustomerId has a NULL value, in other words where they haven't ordered anything. 

/* 
TASK
––––––––––––––––––––––––––––––––––––––––––––––––––––
SQL Schema
Table: Customers

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
+-------------+---------+
id is the primary key column for this table.
Each row of this table indicates the ID and name of a customer.
 

Table: Orders

+-------------+------+
| Column Name | Type |
+-------------+------+
| id          | int  |
| customerId  | int  |
+-------------+------+
id is the primary key column for this table.
customerId is a foreign key of the ID from the Customers table.
Each row of this table indicates the ID of an order and the ID of the customer who ordered it.
 

Write an SQL query to report all customers who never order anything.

Return the result table in any order.

The query result format is in the following example.

 

Example 1:

Input: 
Customers table:
+----+-------+
| id | name  |
+----+-------+
| 1  | Joe   |
| 2  | Henry |
| 3  | Sam   |
| 4  | Max   |
+----+-------+
Orders table:
+----+------------+
| id | customerId |
+----+------------+
| 1  | 3          |
| 2  | 1          |
+----+------------+
Output: 
+-----------+
| Customers |
+-----------+
| Henry     |
| Max       |
+-----------+
Accepted
527.5K
Submissions
772.9K
Acceptance Rate
68.3% */

/* 
Explanation of my solutions:
To solve this task we have join the Address-table and the Person-table to report on a combination of collumns. From the Person-table we want the 'firstName' and 'lastName' collumns, while we want the 'city' and 'state' collumns from the Address-table. To solve this task we're then going to LEFT JOIN the tables together. Here's two ways of doing this:
*/ 

-- OPTION 1
SELECT P.firstName, P.lastName, A.city, A.state -- We first use the SELECT to name every collumn we want. The caveat here, as you may know, is to name the collumns with an alias. We collumns within the Person-table the alias 'P' and the same with the Address-table with a 'A'. I like using the initial letter, but note that you could use 'Person' as the alias, e.g., giving you 'Person.firstName' instead of 'P.firstName'. We select our collumns from both tables. 
FROM Person P -- This is our initial table. 
LEFT JOIN Address A USING (personId) -- We LEFT JOIN P and A together on the 'personId' key. We then check all personId records in the P-table to match the personIds in the A-table. We've now joined them together, and the task is solved. 
-- NOTE ON 'USING': I quite like solving these JOINS with a USING clause instead of 'ON' clause. This is more personal preference for me, and it's unlike what I was taught in my SQL-courses. The solution below may be more familiar to you: 

-- OR

-- OPTION 2
SELECT P.firstName, P.lastName, A.city, A.state -- Same SELECT as above.
FROM Person P -- Same FROM as above. 
LEFT JOIN Address A ON P.personId = A.personId -- Here we LEFT JOIN with the 'ON' clause. We JOIN  the 'P.personId' (personId from the Person-table) on 'A.personId' (personId from the Adress-table). 


/* 
TASK
––––––––––––––––––––––––––––––––––––––––––––––––––––
Table: Person

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| personId    | int     |
| lastName    | varchar |
| firstName   | varchar |
+-------------+---------+
personId is the primary key column for this table.
This table contains information about the ID of some persons and their first and last names.
 

Table: Address

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| addressId   | int     |
| personId    | int     |
| city        | varchar |
| state       | varchar |
+-------------+---------+
addressId is the primary key column for this table.
Each row of this table contains information about the city and state of one person with ID = PersonId.
 

Write an SQL query to report the first name, last name, city, and state of each person in the Person table. If the address of a personId is not present in the Address table, report null instead.

Return the result table in any order.

The query result format is in the following example.

 

Example 1:

Input: 
Person table:
+----------+----------+-----------+
| personId | lastName | firstName |
+----------+----------+-----------+
| 1        | Wang     | Allen     |
| 2        | Alice    | Bob       |
+----------+----------+-----------+
Address table:
+-----------+----------+---------------+------------+
| addressId | personId | city          | state      |
+-----------+----------+---------------+------------+
| 1         | 2        | New York City | New York   |
| 2         | 3        | Leetcode      | California |
+-----------+----------+---------------+------------+
Output: 
+-----------+----------+---------------+----------+
| firstName | lastName | city          | state    |
+-----------+----------+---------------+----------+
| Allen     | Wang     | Null          | Null     |
| Bob       | Alice    | New York City | New York |
+-----------+----------+---------------+----------+
Explanation: 
There is no address in the address table for the personId = 1 so we return null in their city and state.
addressId = 1 contains information about the address of personId = 2.
Accepted
677K
Submissions
922.6K
Acceptance Rate
73.4% */

-- Click here to see my video-explanation of this solution: https://www.youtube.com/watch?v=nZeAO7EFYpw)

/* 
SOLUTION 
–––––––––––––––––––––––––––––––––––––––––––––––––––– */
/* Explanation: To solve this task we have to write a query to report on all duplicate emails. A duplicate can be explained as any record with more than 1 entry, in other words "> 1". Because the rows of the ID-collumn change with every entry, we select the email-collumn where the rows are constant depending on the person. If there are > 1 email entries, then that is a duplicate.*/ 

SELECT email -- We use the SELECT-statement to select the email-collumn. 

FROM Person -- We get this collumn FROM the table called "Person". 

Group by email -- Then we group by emails together to allow for us to use our last clause:

Having count(email) > 1 -- Here we want to select only the emails that have a count of > 1.


/* TASK
––––––––––––––––––––––––––––––––––––––––––––––––––––
Table: Person

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| email       | varchar |
+-------------+---------+
id is the primary key column for this table.
Each row of this table contains an email. The emails will not contain uppercase letters.
 
Write an SQL query to report all the duplicate emails.

Return the result table in any order.

The query result format is in the following example.
Example 1:

Input: 
Person table:
+----+---------+
| id | email   |
+----+---------+
| 1  | a@b.com |
| 2  | c@d.com |
| 3  | a@b.com |
+----+---------+
Output: 
+---------+
| Email   |
+---------+
| a@b.com |
+---------+
Explanation: a@b.com is repeated two times.
Accepted
446K
Submissions
630.4K
Acceptance Rate
70.8% */

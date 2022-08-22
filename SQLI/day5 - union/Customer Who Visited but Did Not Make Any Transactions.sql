/*
https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/

1581. Customer Who Visited but Did Not Make Any Transactions

SQL Schema
Table: Visits

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| visit_id    | int     |
| customer_id | int     |
+-------------+---------+
visit_id is the primary key for this table.
This table contains information about the customers who visited the mall.


Table: Transactions

+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| transaction_id | int     |
| visit_id       | int     |
| amount         | int     |
+----------------+---------+
transaction_id is the primary key for this table.
This table contains information about the transactions made during the visit_id.


Write an SQL query to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.

Return the result table sorted in any order.

-- reverse Query
-- Query select customer_id, count(Visits.visit_id) as count_no_trans from Visits join Transactions on Visits.visit_id = Transactions.visit_id group by Visits.visit_id
*/

--  Write your MySQL query statement below
select customer_id, count(visit_id) as count_no_trans from Visits where visit_id not in (select visit_id from Transactions)
group by customer_id


/*
https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/

586. Customer Placing the Largest Number of Orders

SQL Schema
Table: Orders

+-----------------+----------+
| Column Name     | Type     |
+-----------------+----------+
| order_number    | int      |
| customer_number | int      |
+-----------------+----------+
order_number is the primary key for this table.
This table contains information about the order ID and the customer ID.

Write an SQL query to find the customer_number for the customer who has placed the largest number of orders.

The test cases are generated so that exactly one customer will have placed more orders than any other customer.
*/

--  Write your MySQL query statement below
select customer_number from (select customer_number, count(customer_number) as c from Orders
group by customer_number order by c desc limit 1) as max_table
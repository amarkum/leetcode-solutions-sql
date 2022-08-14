/*
https://leetcode.com/problems/find-customer-referee/

584. Find Customer Referee

SQL Schema
Table: Customer

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| referee_id  | int     |
+-------------+---------+
id is the primary key column for this table.
Each row of this table indicates the id of a customer, their name, and the id of the customer who referred them.


Write an SQL query to report the names of the customer that are not referred by the customer with id = 2.

Return the result table in any order.
*/

--  Write your MySQL query statement below
select name from customer where (referee_id is null) or (referee_id != 2)
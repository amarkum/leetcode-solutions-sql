/*
https://leetcode.com/problems/market-analysis-i/

1158. Market Analysis I

SQL Schema
Table: Users

+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| user_id        | int     |
| join_date      | date    |
| favorite_brand | varchar |
+----------------+---------+
user_id is the primary key of this table.
This table has the info of the users of an online shopping website where users can sell and buy items.


Table: Orders

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| order_id      | int     |
| order_date    | date    |
| item_id       | int     |
| buyer_id      | int     |
| seller_id     | int     |
+---------------+---------+
order_id is the primary key of this table.
item_id is a foreign key to the Items table.
buyer_id and seller_id are foreign keys to the Users table.


Table: Items

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| item_id       | int     |
| item_brand    | varchar |
+---------------+---------+
item_id is the primary key of this table.


Write an SQL query to find for each user, the join date and the number of orders they made as a buyer in 2019.

Return the result table in any order.
*/

--  Write your MySQL query statement below

select user_id as buyer_id , join_date ,COALESCE(a.num,0) as orders_in_2019 from Users u
left join
(select  buyer_id, count(buyer_id) as num from Orders where year(order_date) = 2019 group by buyer_id) a
on u.user_id = a.buyer_id
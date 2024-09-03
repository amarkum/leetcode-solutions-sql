/*
https://leetcode.com/problems/group-sold-products-by-the-date/

1484. Group Sold Products By The Date

SQL Schema
Table Activities:

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| sell_date   | date    |
| product     | varchar |
+-------------+---------+
There is no primary key for this table, it may contain duplicates.
Each row of this table contains the product name and the date it was sold in a market.


Write an SQL query to find for each date the number of different products sold and their names.

The sold products names for each date should be sorted lexicographically.

Return the result table ordered by sell_date.

The query result format is in the following example.

`group_concat` concatenates all the items if grouped on certain column
*/

--  Write your MySQL query statement below
select sell_date, count(distinct(product)) as num_sold, group_concat(distinct(product)) as products from Activities group by sell_date
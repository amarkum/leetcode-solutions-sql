/*
https://leetcode.com/problems/duplicate-emails/

182. Duplicate Emails

SQL Schema
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
*/

--  Write your MySQL query statement below
select email as Email from (select count(email) as count_email, email from Person group by email) as emailc where count_email > 1

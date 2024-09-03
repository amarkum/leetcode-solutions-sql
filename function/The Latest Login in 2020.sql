/*
https://leetcode.com/problems/the-latest-login-in-2020/

1890. The Latest Login in 2020

SQL Schema
Table: Logins

+----------------+----------+
| Column Name    | Type     |
+----------------+----------+
| user_id        | int      |
| time_stamp     | datetime |
+----------------+----------+
(user_id, time_stamp) is the primary key for this table.
Each row contains information about the login time for the user with ID user_id.


Write an SQL query to report the latest login for all users in the year 2020. Do not include the users who did not login in 2020.

Return the result table in any order.
*/


--  Write your MySQL query statement below
select user_id, max(time_stamp) as last_stamp from Logins
WHERE time_stamp > '2020-01-01 00:00:00' AND time_stamp < '2021-01-01 00:00:00'
group by user_id
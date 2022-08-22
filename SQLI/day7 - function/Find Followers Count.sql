/*
https://leetcode.com/problems/find-followers-count/

1729. Find Followers Count

SQL Schema
Table: Followers

+-------------+------+
| Column Name | Type |
+-------------+------+
| user_id     | int  |
| follower_id | int  |
+-------------+------+
(user_id, follower_id) is the primary key for this table.
This table contains the IDs of a user and a follower in a social media app where the follower follows the user.


Write an SQL query that will, for each user, return the number of followers.

Return the result table ordered by user_id
*/

--  Write your MySQL query statement below
select user_id, count(follower_id) as followers_count from Followers group by user_id order by user_id

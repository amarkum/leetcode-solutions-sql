/*
https://leetcode.com/problems/calculate-special-bonus/

1873. Calculate Special Bonus

SQL Schema
Table: Employees

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| employee_id | int     |
| name        | varchar |
| salary      | int     |
+-------------+---------+
employee_id is the primary key for this table.
Each row of this table indicates the employee ID, employee name, and salary.

Write an SQL query to calculate the bonus of each employee. The bonus of an employee is 100% of their salary if the ID of the employee is an odd number and the employee name does not start with the character 'M'. The bonus of an employee is 0 otherwise.

Return the result table ordered by employee_id.
*/

--  Write your MySQL query statement below
select employee_id, if(employee_id %2 != 0 and name not like 'M%', salary, 0) as bonus from Employees order by employee_id

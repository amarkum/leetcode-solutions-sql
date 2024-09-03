/*
https://leetcode.com/problems/employees-with-missing-information/

1965. Employees With Missing Information

SQL Schema
Table: Employees

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| employee_id | int     |
| name        | varchar |
+-------------+---------+
employee_id is the primary key for this table.
Each row of this table indicates the name of the employee whose ID is employee_id.


Table: Salaries

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| employee_id | int     |
| salary      | int     |
+-------------+---------+
employee_id is the primary key for this table.
Each row of this table indicates the salary of the employee whose ID is employee_id.


Write an SQL query to report the IDs of all the employees with missing information. The information of an employee is missing if:

The employee's name is missing, or
The employee's salary is missing.
Return the result table ordered by employee_id in ascending order.

The query result format is in the following example.
*/

--  Write your MySQL query statement below
select  employee_id from Employees
where employee_id not in(select employee_id from Salaries)
UNION
select employee_id from  Salaries where employee_id not in(select employee_id from Employees)
order by employee_id;

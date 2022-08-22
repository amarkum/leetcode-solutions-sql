/*
https://leetcode.com/problems/second-highest-salary/

176. Second Highest Salary

SQL Schema
Table: Employee

+-------------+------+
| Column Name | Type |
+-------------+------+
| id          | int  |
| salary      | int  |
+-------------+------+
id is the primary key column for this table.
Each row of this table contains information about the salary of an employee.


Write an SQL query to report the second highest salary from the Employee table. If there is no second highest salary, the query should report null.
*/

--  Write your MySQL query statement below
select max(salary) as secondHighestSalary from employee where salary not in (select max(salary) from Employee)

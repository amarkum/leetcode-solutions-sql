/*
https://leetcode.com/problems/patients-with-a-condition/

1527. Patients With a Condition

SQL Schema
Table: Patients

+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| patient_id   | int     |
| patient_name | varchar |
| conditions   | varchar |
+--------------+---------+
patient_id is the primary key for this table.
'conditions' contains 0 or more code separated by spaces.
This table contains information of the patients in the hospital.

Write an SQL query to report the patient_id, patient_name all conditions of patients who have Type I Diabetes.
Type I Diabetes always starts with DIAB1 prefix

Return the result table in any order.

The query result format is in the following example.
*/

--  Write your MySQL query statement below
select * from Patients where conditions like "DIAB1%" or conditions like "% DIAB1%"
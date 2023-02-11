# Write your MySQL query statement below
SELECT EMPLOYEE_ID
FROM EMPLOYEES
WHERE EMPLOYEE_ID NOT IN (SELECT EMPLOYEE_ID
                         FROM SALARIES)
UNION
SELECT EMPLOYEE_ID
FROM SALARIES
WHERE EMPLOYEE_ID NOT IN (SELECT EMPLOYEE_ID
                         FROM EMPLOYEES)
ORDER BY EMPLOYEE_ID
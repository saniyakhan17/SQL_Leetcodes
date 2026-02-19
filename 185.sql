-- 185. Department Top Three Salaries

WITH Emp AS(
    SELECT name, salary, departmentId,
    DENSE_RANK() OVER(PARTITION BY departmentID ORDER BY salary desc) as rnk
    FROM Employee
)
SELECT d.name AS Department, 
e.name as Employee,
e.salary as Salary
 FROM Department d  JOIN
 Emp e
 ON d.id=e.departmentId
 WHERE e.rnk<=3;

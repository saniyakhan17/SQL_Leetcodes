-- 176. Second Highest Salary
SELECT (SELECT salary FROM (
    SELECT distinct salary
    FROM Employee
    ORDER BY salary DESC
    LIMIT 2
) t
WHERE salary <(SELECT MAX(salary) FROM Employee)
) AS SecondHighestSalary ;


-- Clearly an abomination

-- =========================================
-- Name: Abolaji Ajanaku
-- Project: SQL Assessment
-- Date: 30-12-2025
-- Project Tittle: Orion Data Systems Workforce Analytics
-- =========================================

USE CAPSTONE;

-- WORKFORCE DISTRIBUTIONN
SELECT
 department_id, COUNT(employee_id) AS employee_count
FROM employees
GROUP BY department_id
ORDER BY employee_count DESC
LIMIT 1000;


-- SALARY COMPARISON
SELECT
 department_id, AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
ORDER BY average_salary DESC;


-- SALARY BANDS FOR EMPLOYEE
SELECT 
    CASE 
        WHEN salary < 5000 THEN 'Low'
        WHEN salary BETWEEN 5000 AND 10000 THEN 'Medium'
        ELSE 'High' 
    END AS salary_band,
    COUNT(employee_id) AS employee_count
FROM employees
GROUP BY salary_band;


-- COUNTRY LEVEL ANALYSIS
select
     c.country_name, 
     COUNT(DISTINCT d.department_id) AS dept_count
     FROM countries c
     JOIN employees e ON c.country_id = e.country_id
     JOIN departments d ON e.department_id = d.department_id
     GROUP BY c.country_name
     ORDER BY dept_count DESC;


-- HIGH EARNERS
SELECT *
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);


-- JOB ROLES ANALYSIS
WITH JobSalaries AS (
    SELECT job_id, AVG(salary) AS average_salary
    FROM employees
    GROUP BY job_id
)
SELECT job_id, average_salary
FROM JobSalaries
HAVING average_salary > 12000;

-- SALARY GROWTH TREND
SELECT c.country_name, SUM(e.salary) AS total_salary
FROM countries c
JOIN employees e ON c.country_id = e.country_id
GROUP BY c.country_name
ORDER BY total_salary DESC;


-- WORKFORCE GAPS
SELECT j.job_id, j.job_title
FROM jobs j
LEFT JOIN employees e ON j.job_id = e.job_id
WHERE e.employee_id IS NULL;









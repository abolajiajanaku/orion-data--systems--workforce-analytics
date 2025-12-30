### Workforce Distribution
## Objective:
Determine how many employees work in each department and identify the department with the highest headcount.
## Approach:
-Used COUNT(employee_id) to count employees.
-	Grouped results by department.
-	Ordered results in descending order to easily identify the department with the highest number of employees.
## Insight:
This analysis highlights workforce concentration across departments and helps management understand staffing distribution.




### Salary Comparison
## Objective:
Calculate the average salary per department and identify the departments with the highest and lowest average salaries.
## Approach:
-	Used AVG(salary) to compute average salaries.
-	Grouped by department.
-	Sorted results to find the highest and lowest averages.
## Insight:
This reveals salary disparities across departments and can inform compensation reviews.




### Salary Bands for Employees
## Objective:
Classify employees into salary bands and count how many fall into each category:
-	Low (< 5000)
-	Medium (5000 – 10000)
-	High (> 10000)
## Approach:
-	Used a CASE statement to define salary bands.
-	Applied COUNT(*) to count employees per band.
-	Grouped by the salary band.
## Insight:
This helps HR understand salary distribution and workforce seniority levels.



### Country-Level Analysis
## Objective:
List all countries where Orion Data Systems operates and show the number of departments in each country.
## Approach:
-Joined countries and departments tables.
-	Grouped by country name.
-	Counted departments per country.
## Insight:
Provides visibility into the company’s geographical footprint and operational spread.




### High Earners
## Objective:
Identify employees earning more than the company-wide average salary.
## Approach:
-	Used a subquery to calculate the overall average salary.
-	Filtered employees whose salary is greater than this average.
## Insight:
Helps identify top earners and potential leadership or specialist roles.




### Job Role Analysis
## Objective:
Calculate the average salary for each job title and identify roles with an average salary above 12,000.
## Approach:
-	Used a Common Table Expression (CTE) to compute average salaries per job.
-	Applied HAVING to filter job roles above the salary threshold.
## Insight:
Highlights high-value roles within the organization.




### Salary Growth Trend (Country-Level)
## Objective:
Calculate the total salary cost per country and rank countries by total salary expenditure.
## Approach:
-	Joined employees with departments and countries.
-	Used SUM(salary) to calculate total salary per country.
-	Ordered results from highest to lowest.
## Insight:
Shows where payroll costs are highest geographically, aiding financial planning.




### Workforce Gaps
## Objective:
Identify job roles that currently have no employees assigned.
## Approach:
-	Performed a LEFT JOIN between jobs and employees.
-	Filtered rows where employee IDs are NULL.
## Insight:
Helps HR identify unfilled roles and recruitment gaps.







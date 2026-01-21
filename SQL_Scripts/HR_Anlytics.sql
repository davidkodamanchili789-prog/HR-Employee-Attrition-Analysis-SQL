CREATE DATABASE IF NOT EXISTS HR_Analytics;
use HR_Analytics;
-- 1 . Identify Employees Likely to Leave ( Attrition  
SELECT
  EmployeeNumber,
  JobRole,
  JobSatisfaction,
  OverTime,
  CASE
   WHEN JobSatisfaction <= 2 AND OverTime = 'YES' THEN 'Critical Risk'
   WHEN JobSatisFaction <= 2 OR OverTime = 'YES' THEN 'Monitor Riak'
   ELSE 'Stable'
   END AS Attriton_Risk_Level 
   FROM hr_data
   WHERE Attrition = 'NO' ;
  
SHOW TABLES;

-- Replace 'MESSY_NAME_HERE' with the name you saw in Step 1
RENAME TABLE `wa_fn-usec_-hr-employee-attrition` TO hr_data;

-- 2 . Average Salary by Department 
SELECT 
   Department,
   COUNT(EmployeeNumber) AS Total_Employees,
   round(AVG(MonthlyIncome),2) AS Avg_Monthly_Salary
   FROM hr_data 
   GROUP BY Department 
   ORDER BY Avg_Monthly_Salary DESC ;
   
-- 3 . Promption Waiting Time 
SELECT 
   EmployeeNumber,
   JobRole,
   YearsSinceLastPromotion,
   RANK() OVER (PARTITION BY JobRole ORDER BY YearsSinceLastPromotion DESC ) AS Promotion_Prioriry_Rabk
   FROM hr_data
   WHERE YearsSinceLastPromotion > 3 ;
   
   SELECT 
    *,
    CASE 
        WHEN JobSatisfaction <= 2 AND OverTime = 'Yes' THEN 'Critical Risk'
        WHEN JobSatisfaction <= 2 OR OverTime = 'Yes' THEN 'Monitor Risk'
        ELSE 'Stable'
    END AS Attrition_Risk_Level
FROM hr_data;
   
   SELECT 
    EmployeeNumber,
    JobRole,
    Department,
    YearsAtCompany,
    YearsSinceLastPromotion,
    YearsInCurrentRole,
    RANK() OVER (PARTITION BY JobRole ORDER BY YearsSinceLastPromotion DESC) as Promotion_Priority_Rank
FROM hr_data;

SELECT 
    Department,
    JobRole,
    COUNT(EmployeeNumber) AS Employee_Count,
    ROUND(AVG(MonthlyIncome), 2) AS Avg_Monthly_Income,
    ROUND(AVG(PerformanceRating), 2) AS Avg_Performance_Rating,
    ROUND(AVG(JobSatisfaction), 2) AS Avg_Job_Satisfaction
FROM hr_data
GROUP BY Department, JobRole;
USE hospital_data;
SELECT *
FROM Hospital_Equipment_Analysis
LIMIT 100;

SELECT Department,
       COUNT(*) AS Equipment_Count
FROM Hospital_Equipment_Analysis
GROUP BY Department;

SELECT Equipment_Name,
       ROUND(SUM(Actual_Usage_Hours),2) AS Usage_Hours
FROM Hospital_Equipment_Analysis
GROUP BY Equipment_Name
ORDER BY Usage_Hours DESC;


SELECT Equipment_Name,
       ROUND(SUM(Scheduled_Hours),2) AS Scheduled,
       ROUND(SUM(Actual_Usage_Hours),2) AS Actual
FROM Hospital_Equipment_Analysis
GROUP BY Equipment_Name;
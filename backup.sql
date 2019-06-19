-- Created View Task 1
-- What are the most popular three articles of all time?
CREATE VIEW pop_articles AS
SELECT ARTICLES.title, COUNT(SPLIT_PART(path, '/article/', '2')) AS NUM 
FROM ARTICLES
JOIN log ON ARTICLES.slug = SPLIT_PART(path, '/article/','2')
GROUP BY ARTICLES.title 
ORDER BY NUM DESC
LIMIT 3;
-- Created View Task 2
-- Who are the most popular article authors of all time?
CREATE VIEW pop_authors AS
SELECT AUTHORS.name, count(log.path) AS NUM 
FROM AUTHORS 
JOIN ARTICLES ON AUTHORS.id = ARTICLES.author
JOIN log ON ARTICLES.slug = SPLIT_PART(path, '/article/', '2')
GROUP BY AUTHORS.name 
ORDER BY NUM DESC;
-- Created View Task 3
-- On which days did more than 1 % of requests lead to errors?
CREATE VIEW error_days AS
WITH CTE_1
AS
(
SELECT 
DATE_TRUNC('day', TIME) as day,
COUNT(DATE_TRUNC('day', TIME)) AS total_day_error
FROM log
WHERE STATUS != '200 OK'
GROUP BY day
), CTE_2 AS(
SELECT 
DATE_TRUNC('day', TIME) as day2,
COUNT(DATE_TRUNC('day', TIME)) AS total_day_ok
FROM log
WHERE STATUS = '200 OK'
GROUP BY day2
)
SELECT
DATE_PART('month', TIME) as month_log,
DATE_PART('day', TIME) as day_log,
DATE_PART('year', TIME) as year_log,
(100.0 * (CAST(CTE_1.total_day_error AS FLOAT)/CTE_2.total_day_ok)) AS Percent
FROM log AS T1
JOIN CTE_1 ON DATE_TRUNC('day', TIME) = CTE_1.day
JOIN CTE_2 ON CTE_1.day = CTE_2.day2
WHERE T1.STATUS = '200 OK' AND (100.0 * (CAST(CTE_1.total_day_error AS FLOAT)/CTE_2.total_day_ok)) > 1
GROUP BY month_log, day_log, year_log, CTE_1.total_day_error, CTE_2.total_day_ok;
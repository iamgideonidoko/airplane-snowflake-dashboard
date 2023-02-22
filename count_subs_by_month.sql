-- Add your SQL queries here.
-- See SQL documentation: https://docs.airplane.dev/creating-tasks/sql
SELECT * FROM
(
SELECT
MONTHNAME(SUBSCRIPTION_DATE) AS MONTH
FROM clients
WHERE YEAR(SUBSCRIPTION_DATE) = 2022
)
PIVOT (
COUNT(MONTH)
FOR MONTH IN ('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec')
)

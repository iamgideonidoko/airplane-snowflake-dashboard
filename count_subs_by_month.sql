-- Add your SQL queries here.
-- See SQL documentation: https://docs.airplane.dev/creating-tasks/sql
SELECT
    count(IFF(MONTH(SUBSCRIPTION_DATE) = 1, 1,  NULL)) as January,
    count(IFF(MONTH(SUBSCRIPTION_DATE) = 2, 1, NULL)) AS February,
    count(IFF(MONTH(SUBSCRIPTION_DATE) = 3, 1, NULL)) AS March,
    count(IFF(MONTH(SUBSCRIPTION_DATE) = 4, 1, NULL)) AS April,
    count(IFF(MONTH(SUBSCRIPTION_DATE) = 5, 1, NULL)) AS May,
    count(IFF(MONTH(SUBSCRIPTION_DATE) = 6, 1, NULL)) AS June,
    count(IFF(MONTH(SUBSCRIPTION_DATE) = 7, 1, NULL)) AS July,
    count(IFF(MONTH(SUBSCRIPTION_DATE) = 8, 1, NULL)) AS August,
    count(IFF(MONTH(SUBSCRIPTION_DATE) = 9, 1, NULL)) AS September,
    count(IFF(MONTH(SUBSCRIPTION_DATE) = 10, 1, NULL)) AS October,
    count(IFF(MONTH(SUBSCRIPTION_DATE) = 11, 1, NULL)) AS November,
    count(IFF(MONTH(SUBSCRIPTION_DATE) = 12, 1, NULL)) AS December
FROM clients

/* Write your T-SQL query statement below */
SELECT
    today.id
FROM
    weather AS today
WHERE EXISTS(
    SELECT
        yesterday.id
    FROM
        weather AS yesterday
    WHERE
        today.temperature > yesterday.temperature
        AND
        today.recordDate = DATEADD(DAY, 1, yesterday.recordDate)
)
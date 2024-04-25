/* Write your T-SQL query statement below */
SELECT
    customer_id,
    COUNT(*) AS count_no_trans
FROM
    visits AS v
LEFT JOIN
    transactions AS t
    ON
    v.visit_id = t.visit_id
WHERE
    t.visit_id IS NULL
GROUP BY
    customer_id
ORDER BY
    count_no_trans
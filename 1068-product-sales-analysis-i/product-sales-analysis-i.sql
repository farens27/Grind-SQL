/* Write your T-SQL query statement below */
SELECT
    product_name,
    year,
    price
FROM
    sales AS s
JOIN
    product AS p
    ON
    s.product_id = p.product_id

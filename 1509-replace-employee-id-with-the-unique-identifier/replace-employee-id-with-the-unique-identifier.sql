/* Write your T-SQL query statement below */
SELECT
    emu.unique_id,
    emp.name
FROM
    employees AS emp
LEFT JOIN
    employeeuni AS emu
    ON
    emp.id = emu.id
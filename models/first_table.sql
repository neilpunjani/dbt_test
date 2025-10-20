-- My first dbt model
SELECT 
    1 as id,
    'Alice' as name,
    25 as age,
    'Engineer' as job
UNION ALL
SELECT 
    2 as id,
    'Bob' as name,
    30 as age,
    'Designer' as job
UNION ALL
SELECT 
    3 as id,
    'Charlie' as name,
    28 as age,
    'Manager' as job
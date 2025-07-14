
WITH viewers AS(
    SELECT
        *
    FROM
        {{ ref('int_viewers')}}
)

SELECT
    *
FROM
    viewers 
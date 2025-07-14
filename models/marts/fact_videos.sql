
WITH fact_videos AS(
    SELECT
        *
    FROM
        {{ ref('int_videos')}}
)

SELECT
    * 
FROM
    fact_videos

WITH comments AS(
    SELECT
        *
    FROM
        {{ ref('Int_comments')}}
)

SELECT
    *
FROM
    comments
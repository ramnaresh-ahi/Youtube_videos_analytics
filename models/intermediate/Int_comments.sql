
WITH comments AS(
    SELECT
        comment_id,
        video_id,
        user_id,
        comments,
        reply_count,
        like_count,
        date 
    FROM
        {{ ref('stg_comments')}}
    WHERE
        comments IS NOT NULL 
)

SELECT
    *
FROM
    comments
ORDER BY 
    reply_count DESC 
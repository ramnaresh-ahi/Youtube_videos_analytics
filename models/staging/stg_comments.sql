
WITH comments AS(
    SELECT
        comment_id,
        vidid as video_id,
        user_id,
        comments,
        reply_count,
        like_count,
        CAST(date as date) as date
    
    FROM
        {{ source('raw', 'comments')}}

)

SELECT
    *
FROM
    comments
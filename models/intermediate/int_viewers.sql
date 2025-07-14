
WITH viewers AS(
    SELECT
       country_code,
       video_id,
       video_title,
       thumbnail_link,
       is_subscribed,
       views,
       likes_added,
       dislikes_added,
       likes_removed,
       subscriptions_added,
       subscriptions_removed,
       avg_view_percentage,
       avg_watch_time,
       comments_added
    FROM
        {{ ref('stg_viewers')}}
    WHERE
        country_code IS NOT NULL
        AND 
        avg_view_percentage IS NOT NULL 
        AND 
        avg_watch_time IS NOT NULL 

)

SELECT
    *
FROM
    viewers
ORDER BY 
    views DESC 
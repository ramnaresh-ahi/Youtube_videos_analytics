
WITH viewers AS(
    SELECT
        country_code,
        external_video_id as video_id, 
        video_title,
        thumbnail_link,
        is_subscribed,
        views,
        video_likes_added as likes_added,
        video_dislikes_added as dislikes_added,
        video_likes_removed as likes_removed,
        user_subscriptions_added as subscriptions_added,
        user_subscriptions_removed as subscriptions_removed,
        ROUND(average_view_percentage::NUMERIC(10,4), 2) as avg_view_percentage,
        ROUND(average_watch_time::NUMERIC(10,4), 2) as avg_watch_time,
        user_comments_added as comments_added
    FROM
        {{source('raw', 'country_and_subscriber')}}

)

SELECT
    *
FROM
    viewers
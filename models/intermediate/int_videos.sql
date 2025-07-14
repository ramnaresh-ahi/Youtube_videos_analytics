
WITH videos AS(
    SELECT
        video_id,
        video_title,
        publish_date,
        comments,
        shares,
        likes,
        dislikes,
        subscribers_lost,
        subscribers_gained,
        revenue_per_thou_views,
        cost_per_thou_view,
        avg_percentage_viewed,
        avg_view_duration,
        views,
        watch_time_in_hours,
        subscribers,
        estimated_revenue,
        impressions,
        click_through_rate
    FROM
        {{ ref('stg_videos')}}
    WHERE
        cost_per_thou_view IS NOT NULL
    
)

SELECT
    *
FROM
    videos
ORDER BY
    estimated_revenue DESC

WITH videos AS (
    SELECT
        video AS video_id,
        "video title" as video_title,
        video_publish_time::date AS publish_date,
        comments_added AS comments,
        shares,
        likes,
        dislikes,
        subscribers_lost,
        subscribers_gained,
        ROUND(rpm_usd::NUMERIC(10,4), 2) AS revenue_per_thou_views,
        ROUND(cpm_usd::NUMERIC(10,4), 2) AS cost_per_thou_view,
        ROUND(avg_pct_viewed::NUMERIC(10,4), 2) AS avg_percentage_viewed,
        avg_view_duration,
        views,
        ROUND("watch time (hours)"::NUMERIC(10,4), 2) as watch_time_in_hours,
        subscribers,
        ROUND(est_revenue_usd::NUMERIC(10,4), 2) AS estimated_revenue,
        impressions,
        ROUND(ctr::NUMERIC(10,4), 2) AS click_through_rate
    FROM 
        {{ source('raw', 'videos_info') }}
    WHERE 
        subscribers != 183451
)

SELECT 
    * 
FROM 
    videos


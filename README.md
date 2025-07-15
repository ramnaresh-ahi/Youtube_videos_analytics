# 🎥 YouTube Videos Analytics

A complete analytics engineering project to uncover patterns in viewer engagement, video performance, and revenue generation using YouTube video data.

---

## 🔧 Project Details

- **Project Title**: YouTube Videos Analytics
- **Goal**: Identify the best-performing videos and analyze viewer activity and revenue generation patterns.
- **Data Source**: [Kaggle Dataset](https://www.kaggle.com/datasets/thedevastator/youtube-analytics-how-to-keep-your-viewers-engag?select=Aggregated_Metrics_By_Country_And_Subscriber_Status.csv)
- **Data Warehouse**: Amazon Redshift Serverless
- **Transformation Tool**: dbt Cloud
- **Documentation**: [Project Docs](https://ramnaresh-ahi.github.io/Youtube_videos_analytics/)
- **Tech Stack**: dbt, Redshift, SQL, Jinja, GitHub

---

## 🧱 Project Structure

The dbt project follows a modular architecture using the following layers:

```
Youtube_videos_analytics/
├── models/
│   ├── staging/           -- Raw data cleaned and renamed
│   ├── intermediate/      -- Calculations and aggregations
│   ├── marts/             -- Final fact and dimension tables
├── macros/                -- Custom reusable SQL logic
├── snapshots/             -- (Optional) Track historical changes
├── tests/                 -- Custom and built-in tests
└── README.md
```

---

## 🧠 Key Insights & Metrics

The project focuses on uncovering trends around:

- ✅ **Best Performing Videos** based on views, watch time, and engagement
- ✅ **Revenue Analytics** via RPM (Revenue per Mille) and CPM (Cost per Mille)
- ✅ **Engagement Metrics**: Likes, Comments, Shares, Avg. View Duration, Click-through Rate
- ✅ **Audience Behavior**:
  - Subscriber vs Non-subscriber impact
  - Country-wise performance distribution

---

## 📊 Data Models

### Staging Models (`stg_*`)
- Clean and rename raw CSV data from Kaggle
- Handle special characters and null values

### Intermediate Models (`int_*`)
- Compute intermediate KPIs: retention rate, average engagement, etc.
- Filter out anomalies and invalid rows

### Mart Models (`dim_*`, `fact_*`)
- `fact_video_metrics`: Core fact table with all video-level KPIs
- `dim_videos`, `dim_subscriber_status`, `dim_countries`: Enriched dimensional tables for slicing and dicing

---

## 📈 Documentation

- dbt auto-generated documentation is available here:  
  🔗 [View Project Documentation](https://ramnaresh-ahi.github.io/Youtube_videos_analytics/)

---

## 📊 Dashboard

![YouTube Videos Analytics Dashboard](https://github.com/ramnaresh-ahi/Youtube_videos_analytics/blob/main/dashboard/youtube_videos_analytics.png)

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/ramnaresh-ahi/Youtube_videos_analytics.git
cd Youtube_videos_analytics
```

---

### 2. Configure your `profiles.yml` for Redshift

Update your credentials to match your Redshift Serverless instance.

### 3. Run dbt Commands

```bash
dbt deps            # Install dependencies  
dbt seed            # (If seeds are used)  
dbt run             # Run all models  
dbt test            # Run tests  
dbt docs generate   # Generate documentation  
dbt docs serve      # Serve docs locally
```

---

## 📌 Future Enhancements

- Add dashboards via Looker Studio or Metabase  
- Integrate anomaly detection in metrics  
- Implement snapshots for video metric history  
- Create macros for revenue segmentation by region

---

## 🪪 License

This project is intended for educational and portfolio use only.  
Data is sourced from publicly available [Kaggle datasets](https://www.kaggle.com/datasets/thedevastator/youtube-analytics-how-to-keep-your-viewers-engag).

---

## 👤 Created by

[Ramnaresh Ahirwar](https://github.com/ramnaresh-ahi)  
📧 Email: ramnareshahi77@gmail.com


Google Data Analytics Capstone Project: Bellabeat Case Study
================
Daniel Poe
2025-05-27

- [Introduction](#introduction)
  - [About the Company](#about-the-company)
  - [Characters and Products](#characters-and-products)
- [Step 1: Ask](#step-1-ask)
  - [Business Task](#business-task)
  - [Key Stakeholders](#key-stakeholders)
  - [Guiding Questions for the
    Analysis](#guiding-questions-for-the-analysis)
- [Step 2: Prepare](#step-2-prepare)
  - [Data Source Used](#data-source-used)
  - [Dataset Information](#dataset-information)
  - [Data Credibility and
    Limitations](#data-credibility-and-limitations)
- [Step 3: Process](#step-3-process)
  - [Dataset Files Used for the
    Analysis](#dataset-files-used-for-the-analysis)
  - [Tools Used for Data Wrangling](#tools-used-for-data-wrangling)
  - [Data Upload and Familiarisation in
    MySQL](#data-upload-and-familiarisation-in-mysql)
  - [Obtaining the Number of Users Represented in the
    Datasets](#obtaining-the-number-of-users-represented-in-the-datasets)
  - [Data Transformation](#data-transformation)
  - [Cleaning the Data for Analysis](#cleaning-the-data-for-analysis)
- [Step 4: Analyse](#step-4-analyse)
  - [User Types](#user-types)
  - [Data Summaries](#data-summaries)
- [Step 5: Share](#step-5-share)
  - [Number of Users with Recorded
    Data](#number-of-users-with-recorded-data)
  - [Number of Steps](#number-of-steps)
  - [Activity Patterns](#activity-patterns)
  - [Sleep](#sleep)
- [Step 6: Act](#step-6-act)
  - [Key Findings](#key-findings)
  - [Recommendations](#recommendations)

This is a capstone project that I have recently completed as part of the
[Google Data Analytics Professional
Certificate](https://www.coursera.org/professional-certificates/google-data-analytics).
Course participants can learn the following:

- Gain an immersive understanding of the practices and processes used by
  a junior or associate data analyst in their day-to-day job
- Learn key analytical skills (data cleaning, analysis, & visualization)
  and tools (spreadsheets, SQL, R programming, Tableau)
- Understand how to clean and organize data for analysis, and complete
  analysis and calculations using spreadsheets, SQL and R programming
- Learn how to visualise and present data findings in dashboards,
  presentations and commonly used visualisation platforms

The analysis follows the six steps of data analysis taught in the Google
programme: Ask, Prepare, Process, Analyse, Share, and Act.

## Introduction

I am a junior data analyst working on the marketing analyst team at
Bellabeat, a high-tech manufacturer of health-focused products for
women. I have been asked to focus on one of Bellabeat’s products and
analyse smart device data to gain insight into how consumers are using
their smart devices. The insights gained from this analysis will help
guide marketing strategy for Bellabeat. I will present my analysis to
the Bellabeat executive team, together with high-level recommendations
for Bellabeat’s marketing strategy.

### About the Company

Bellabeat was founded by Urška Sršen and Sando Mur in 2014. Collecting
data on activity, sleep, stress, and reproductive health has allowed
Bellabeat to empower women with knowledge about their own health and
habits. By 2016, Bellabeat had opened offices around the world and
launched multiple products. Bellabeat products became available through
a growing number of online retailers in addition to their own e-commerce
channel on [their website](https://bellabeat.com/).

### Characters and Products

#### Characters

- Urška Sršen: Bellabeat’s cofounder and Chief Creative Officer
- Sando Mur: Mathematician and Bellabeat’s cofounder; key member of the
  Bellabeat executive team
- Bellabeat marketing analytics team: A team of data analysts
  responsible for collecting, analyzing, and reporting data that helps
  guide Bellabeat’s marketing strategy. You joined this team six months
  ago and have been busy learning about Bellabeat’s mission and business
  goals — as well as how I, as a junior data analyst, can help Bellabeat
  achieve them.

#### Products

- Bellabeat app: The Bellabeat app provides users with health data
  related to their activity, sleep, stress, menstrual cycle, and
  mindfulness habits. This data can help users better understand their
  current habits and make healthy decisions. The Bellabeat app connects
  to their line of smart wellness products.
- Leaf: Bellabeat’s classic wellness tracker can be worn as a bracelet,
  necklace, or clip. The Leaf tracker connects to the Bellabeat app to
  track activity, sleep, and stress.
- Time: This wellness watch combines the timeless look of a classic
  timepiece with smart technology to track user activity, sleep, and
  stress. The Time watch connects to the Bellabeat app to provide you
  with insights into your daily wellness.
- Spring: This is a water bottle that tracks daily water intake using
  smart technology to ensure that you are appropriately hydrated
  throughout the day. The Spring bottle connects to the Bellabeat app to
  track your hydration levels.
- Bellabeat membership: Bellabeat also offers a subscription-based
  membership program for users. Membership gives users 24/7 access to
  fully personalized guidance on nutrition, activity, sleep, health and
  beauty, and mindfulness based on their lifestyle and goals.

## Step 1: Ask

### Business Task

To identify and analyse trends in smart device usage data in order to
gain insights into how consumers use non-Bellabeat smart devices. These
insights will then guide the marketing strategy for the company.

### Key Stakeholders

- Urška Sršen — Bellabeat’s cofounder and Chief Creative Officer
- Sando Mur — Bellabeat’s cofounder and key member of the Bellabeat
  executive team
- Bellabeat marketing analytics team

### Guiding Questions for the Analysis

1.  What are some trends in smart device usage?
2.  How could these trends apply to Bellabeat customers?
3.  How could these trends help influence Bellabeat marketing strategy?

## Step 2: Prepare

### Data Source Used

The data source used for this case study is [FitBit Fitness Tracker
Data](https://www.kaggle.com/datasets/arashnic/fitbit). This dataset is
stored in Kaggle and was made available through Möbius under a public
domain licence. Variation between output represents use of different
types of Fitbit trackers and individual tracking behaviours or
preferences.

### Dataset Information

This dataset was generated by respondents to [a distributed survey via
Amazon Mechanical Turk](https://zenodo.org/records/53894#.X9oeh3Uzaao)
between 12/3/2016 and 12/5/2016. Thirty eligible Fitbit users consented
to the submission of personal tracker data, including minute-level
output for physical activity, heart rate, and sleep monitoring.

The data contains 18 CSV files of anonymised user information, and is
organised in long format. Each row represents a specific time interval
with corresponding data points such as activity level, heart rate, and
sleep patterns.

The data was downloaded from Kaggle and stored in the local drive on my
Windows laptop.

### Data Credibility and Limitations

A good dataset is ROCCC, which stands for:

- Reliable
- Original
- Comprehensive
- Current
- Cited

Let us then examine the FitBit fitness tracker data available based on
the ROCCC criteria.

- **Reliable**: The data is not reliable due to the small sample size of
  30 respondents. This is comparatively small to the [millions of
  users](https://bellabeat.com/about-us/) Bellabeat claims to have. The
  absence of demographic data such as age and sex further diminishes the
  reliability of this dataset.
- **Original**: The dataset is not original as it was generated by
  respondents to a distributed survey via Amazon Mechanical Turk.
- **Comprehensive**: The dataset is not comprehensive as only 30 FitBit
  users consented to submit personal tracker data. There is also a lack
  of information on user demographics, which could then reflect sampling
  bias.
- **Current**: The data is not current because the it was collected
  between 12 March 2016 and 12 May 2016. This data may not be
  representative of the current trends in the smart device market.
- **Cited**: The dataset was created by Amazon Mechanical Turk. However,
  its credibility remains uncertain due to the lack of information
  regarding the reliability of the source.

Sršen did mention to me that this data set might have some limitations,
and encouraged me to consider adding another data to help address those
limitations as I begin to work more with this data. While specific
additional data sources are not mentioned, exploring and incorporating
complementary datasets can provide a more comprehensive understanding of
smart device usage and enhance the credibility of the analysis. I
searched for similar datasets that might make up for the deficiencies in
this dataset, but I could not find any forthcoming datasets.

## Step 3: Process

### Dataset Files Used for the Analysis

For this analysis, I will make use of the following datasets:

- dailyActivity_merged.csv
- dailySleep_merged.csv
- hourlyIntensities_merged.csv
- hourlySteps_merged.csv
- weight_info.csv

Seeing the file names of some of the data already indicated that I will
need to change the table and even the column names, so as to conform to
accepted dataset naming conventions.

### Tools Used for Data Wrangling

I have opted to use MySQL Workbench to begin the data wrangling process.
I previously used SQLite in an earlier introductory SQL course I took at
the end of 2024, and learnt to use Google BigQuery during this Google
Data Analytics course. For this analysis, I am using MySQL to
demonstrate my versatility with various SQL platforms.

### Data Upload and Familiarisation in MySQL

I uploaded the datasets from Kaggle into MySQL, and placed them under
the database/schema fitabase_data which I have created. Using the table
import wizard in MySQL, I created new tables as follows:

- daily_activity for dailyActivity_merged.csv
- daily_sleep for dailySleep_merged.csv
- hourly_intensities for hourlyIntensities_merged.csv
- hourly_steps for hourlySteps_merged.csv
- weight_info for weight_info.csv

After completing the upload of the datasets, I proceeded to explore the
raw data in each table using the `SELECT` statement.

``` sql
SELECT * FROM daily_activity LIMIT 6;
```

<div class="knitsql-table">

| Id | ActivityDate | TotalSteps | TotalDistance | TrackerDistance | LoggedActivitiesDistance | VeryActiveDistance | ModeratelyActiveDistance | LightActiveDistance | SedentaryActiveDistance | VeryActiveMinutes | FairlyActiveMinutes | LightlyActiveMinutes | SedentaryMinutes | Calories |
|---:|:---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 1503960366 | 4/12/2016 | 13162 | 8.50 | 8.50 | 0 | 1.88 | 0.55 | 6.06 | 0 | 25 | 13 | 328 | 728 | 1985 |
| 1503960366 | 4/13/2016 | 10735 | 6.97 | 6.97 | 0 | 1.57 | 0.69 | 4.71 | 0 | 21 | 19 | 217 | 776 | 1797 |
| 1503960366 | 4/14/2016 | 10460 | 6.74 | 6.74 | 0 | 2.44 | 0.40 | 3.91 | 0 | 30 | 11 | 181 | 1218 | 1776 |
| 1503960366 | 4/15/2016 | 9762 | 6.28 | 6.28 | 0 | 2.14 | 1.26 | 2.83 | 0 | 29 | 34 | 209 | 726 | 1745 |
| 1503960366 | 4/16/2016 | 12669 | 8.16 | 8.16 | 0 | 2.71 | 0.41 | 5.04 | 0 | 36 | 10 | 221 | 773 | 1863 |
| 1503960366 | 4/17/2016 | 9705 | 6.48 | 6.48 | 0 | 3.19 | 0.78 | 2.51 | 0 | 38 | 20 | 164 | 539 | 1728 |

6 records

</div>

``` sql
SELECT * FROM daily_sleep LIMIT 6;
```

<div class="knitsql-table">

| Id | SleepDay | TotalSleepRecords | TotalMinutesAsleep | TotalTimeInBed |
|---:|:---|---:|---:|---:|
| 1503960366 | 4/12/2016 12:00:00 AM | 1 | 327 | 346 |
| 1503960366 | 4/13/2016 12:00:00 AM | 2 | 384 | 407 |
| 1503960366 | 4/15/2016 12:00:00 AM | 1 | 412 | 442 |
| 1503960366 | 4/16/2016 12:00:00 AM | 2 | 340 | 367 |
| 1503960366 | 4/17/2016 12:00:00 AM | 1 | 700 | 712 |
| 1503960366 | 4/19/2016 12:00:00 AM | 1 | 304 | 320 |

6 records

</div>

``` sql
SELECT * FROM weight_info LIMIT 6;
```

<div class="knitsql-table">

| Id | Date | WeightKg | WeightPounds | Fat | BMI | IsManualReport | LogId |
|---:|:---|---:|---:|:---|---:|:---|---:|
| 1503960366 | 5/2/2016 11:59:59 PM | 52.6 | 115.9631 | 22 | 22.65 | True | 1462233599000 |
| 1503960366 | 5/3/2016 11:59:59 PM | 52.6 | 115.9631 |  | 22.65 | True | 1462319999000 |
| 1927972279 | 4/13/2016 1:08:52 AM | 133.5 | 294.3171 |  | 47.54 | False | 1460509732000 |
| 2873212765 | 4/21/2016 11:59:59 PM | 56.7 | 125.0021 |  | 21.45 | True | 1461283199000 |
| 2873212765 | 5/12/2016 11:59:59 PM | 57.3 | 126.3249 |  | 21.69 | True | 1463097599000 |
| 4319703577 | 4/17/2016 11:59:59 PM | 72.4 | 159.6147 | 25 | 27.45 | True | 1460937599000 |

6 records

</div>

``` sql
SELECT * FROM hourly_steps LIMIT 6;
```

<div class="knitsql-table">

|         Id | ActivityHour          | StepTotal |
|-----------:|:----------------------|----------:|
| 1503960366 | 4/12/2016 12:00:00 AM |       373 |
| 1503960366 | 4/12/2016 1:00:00 AM  |       160 |
| 1503960366 | 4/12/2016 2:00:00 AM  |       151 |
| 1503960366 | 4/12/2016 3:00:00 AM  |         0 |
| 1503960366 | 4/12/2016 4:00:00 AM  |         0 |
| 1503960366 | 4/12/2016 5:00:00 AM  |         0 |

6 records

</div>

``` sql
SELECT * FROM hourly_intensities LIMIT 6;
```

<div class="knitsql-table">

|         Id | ActivityHour          | TotalIntensity | AverageIntensity |
|-----------:|:----------------------|---------------:|-----------------:|
| 1503960366 | 4/12/2016 12:00:00 AM |             20 |         0.333333 |
| 1503960366 | 4/12/2016 1:00:00 AM  |              8 |         0.133333 |
| 1503960366 | 4/12/2016 2:00:00 AM  |              7 |         0.116667 |
| 1503960366 | 4/12/2016 3:00:00 AM  |              0 |         0.000000 |
| 1503960366 | 4/12/2016 4:00:00 AM  |              0 |         0.000000 |
| 1503960366 | 4/12/2016 5:00:00 AM  |              0 |         0.000000 |

6 records

</div>

### Obtaining the Number of Users Represented in the Datasets

I used the `COUNT` function with the `DISTINCT` clause to find out how
many users contributed to the various datasets.

``` sql
SELECT COUNT(DISTINCT daily_activity.Id) AS users_activity,
COUNT(DISTINCT daily_sleep.Id) AS users_sleep,
COUNT(DISTINCT weight_info.Id) AS users_weight 
FROM daily_activity, daily_sleep, weight_info;
```

<div class="knitsql-table">

| users_activity | users_sleep | users_weight |
|---------------:|------------:|-------------:|
|             33 |          24 |            8 |

1 records

</div>

The collected data only contained records from 33 users, and not all of
them used all of the functions. Out of the the 33 users, only 24 users
utilise the sleep tracker, while only eight users have used the weight
log. The number of weight log users are too little to perform any
significant analysis. I find that the lack of users providing data will
certainly create a data bias; 33 users is definitely a very small
sample, not reflecting the whole population.

However, some preliminary insights can already be drawn from this:

- Not every user utilises the sleep tracker and weight log.
- The weight log is the least popular function used in the FitBit. It
  may signify that it is irrelevant to users or may not be very easy to
  use. Further analysis would be required to shed light on this
  function.

### Data Transformation

Seeing that the column names are in camel case, I decided to change the
column names to snake case, which is the standard naming convention for
many programming languages, such as R and Python. I have done this by
creating a new table and using the `ALTER TABLE` statement with the
`RENAME COLUMN` clause.

    CREATE TABLE activity_daily AS (SELECT * FROM daily_activity);
    ALTER TABLE activity_daily
    RENAME COLUMN Id to user_id,
    RENAME COLUMN ActivityDate to activity_date,
    RENAME COLUMN TotalSteps to total_steps,
    RENAME COLUMN TotalDistance to total_distance,
    RENAME COLUMN TrackerDistance to tracker_distance,
    RENAME COLUMN LoggedActivitiesDistance to logged_activities_distance,
    RENAME COLUMN VeryActiveDistance to very_active_distance,
    RENAME COLUMN ModeratelyActiveDistance to moderately_active_distance,
    RENAME COLUMN LightActiveDistance to light_active_distance,
    RENAME COLUMN SedentaryActiveDistance to sedentary_active_distance,
    RENAME COLUMN VeryActiveMinutes to very_active_minutes,
    RENAME COLUMN FairlyActiveMinutes to fairly_active_minutes,
    RENAME COLUMN LightlyActiveMinutes to lightly_active_minutes,
    RENAME COLUMN SedentaryMinutes to  sedentary_minutes,
    RENAME COLUMN Calories to calories;

    CREATE TABLE sleep_daily AS (SELECT * FROM daily_sleep);
    ALTER TABLE sleep_daily
    RENAME COLUMN Id to user_id,
    RENAME COLUMN SleepDay to sleep_day,
    RENAME COLUMN TotalSleepRecords to total_sleep_records,
    RENAME COLUMN TotalMinutesAsleep to total_minutes_asleep,
    RENAME COLUMN TotalTimeInBed to total_time_in_bed;

    CREATE TABLE steps_hourly AS (SELECT * FROM hourly_steps);
    ALTER TABLE steps_hourly 
    RENAME COLUMN Id to user_id, 
    RENAME COLUMN ActivityHour to activity_hour,
    RENAME COLUMN StepTotal to steps_total;

    CREATE TABLE intensities_hourly AS (SELECT * FROM hourly_intensities);
    ALTER TABLE intensities_hourly 
    RENAME COLUMN Id to user_id, 
    RENAME COLUMN ActivityHour to activity_hour,
    RENAME COLUMN TotalIntensity to total_intensity,
    RENAME COLUMN AverageIntensity to average_intensity;

The new table names to be used are as follows:

- activity_daily for dailyActivity_merged.csv
- sleep_daily for dailySleep_merged.csv
- intensities_hourly for hourlyIntensities_merged.csv
- steps_hourly for hourlySteps_merged.csv

``` sql
SELECT * FROM activity_daily LIMIT 6;
```

<div class="knitsql-table">

| user_id | activity_date | total_steps | total_distance | tracker_distance | logged_activities_distance | very_active_distance | moderately_active_distance | light_active_distance | sedentary_active_distance | very_active_minutes | fairly_active_minutes | lightly_active_minutes | sedentary_minutes | calories |
|---:|:---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 1503960366 | 4/12/2016 | 13162 | 8.50 | 8.50 | 0 | 1.88 | 0.55 | 6.06 | 0 | 25 | 13 | 328 | 728 | 1985 |
| 1503960366 | 4/13/2016 | 10735 | 6.97 | 6.97 | 0 | 1.57 | 0.69 | 4.71 | 0 | 21 | 19 | 217 | 776 | 1797 |
| 1503960366 | 4/14/2016 | 10460 | 6.74 | 6.74 | 0 | 2.44 | 0.40 | 3.91 | 0 | 30 | 11 | 181 | 1218 | 1776 |
| 1503960366 | 4/15/2016 | 9762 | 6.28 | 6.28 | 0 | 2.14 | 1.26 | 2.83 | 0 | 29 | 34 | 209 | 726 | 1745 |
| 1503960366 | 4/16/2016 | 12669 | 8.16 | 8.16 | 0 | 2.71 | 0.41 | 5.04 | 0 | 36 | 10 | 221 | 773 | 1863 |
| 1503960366 | 4/17/2016 | 9705 | 6.48 | 6.48 | 0 | 3.19 | 0.78 | 2.51 | 0 | 38 | 20 | 164 | 539 | 1728 |

6 records

</div>

``` sql
SELECT * FROM sleep_daily LIMIT 6;
```

<div class="knitsql-table">

| user_id | sleep_day | total_sleep_records | total_minutes_asleep | total_time_in_bed |
|---:|:---|---:|---:|---:|
| 1503960366 | 4/12/2016 12:00:00 AM | 1 | 327 | 346 |
| 1503960366 | 4/13/2016 12:00:00 AM | 2 | 384 | 407 |
| 1503960366 | 4/15/2016 12:00:00 AM | 1 | 412 | 442 |
| 1503960366 | 4/16/2016 12:00:00 AM | 2 | 340 | 367 |
| 1503960366 | 4/17/2016 12:00:00 AM | 1 | 700 | 712 |
| 1503960366 | 4/19/2016 12:00:00 AM | 1 | 304 | 320 |

6 records

</div>

``` sql
SELECT * FROM steps_hourly LIMIT 6;
```

<div class="knitsql-table">

|    user_id | activity_hour         | steps_total |
|-----------:|:----------------------|------------:|
| 1503960366 | 4/12/2016 12:00:00 AM |         373 |
| 1503960366 | 4/12/2016 1:00:00 AM  |         160 |
| 1503960366 | 4/12/2016 2:00:00 AM  |         151 |
| 1503960366 | 4/12/2016 3:00:00 AM  |           0 |
| 1503960366 | 4/12/2016 4:00:00 AM  |           0 |
| 1503960366 | 4/12/2016 5:00:00 AM  |           0 |

6 records

</div>

``` sql
SELECT * FROM intensities_hourly LIMIT 6;
```

<div class="knitsql-table">

|    user_id | activity_hour         | total_intensity | average_intensity |
|-----------:|:----------------------|----------------:|------------------:|
| 1503960366 | 4/12/2016 12:00:00 AM |              20 |          0.333333 |
| 1503960366 | 4/12/2016 1:00:00 AM  |               8 |          0.133333 |
| 1503960366 | 4/12/2016 2:00:00 AM  |               7 |          0.116667 |
| 1503960366 | 4/12/2016 3:00:00 AM  |               0 |          0.000000 |
| 1503960366 | 4/12/2016 4:00:00 AM  |               0 |          0.000000 |
| 1503960366 | 4/12/2016 5:00:00 AM  |               0 |          0.000000 |

6 records

</div>

Now I would like to know the data types of each column. To do that, I
used the `DESCRIBE` statement.

``` sql
DESCRIBE activity_daily;
```

<div class="knitsql-table">

| Field                      | Type   | Null | Key | Default | Extra |
|:---------------------------|:-------|:-----|:----|:--------|:------|
| user_id                    | bigint | YES  |     | NA      |       |
| activity_date              | text   | YES  |     | NA      |       |
| total_steps                | int    | YES  |     | NA      |       |
| total_distance             | double | YES  |     | NA      |       |
| tracker_distance           | double | YES  |     | NA      |       |
| logged_activities_distance | int    | YES  |     | NA      |       |
| very_active_distance       | double | YES  |     | NA      |       |
| moderately_active_distance | double | YES  |     | NA      |       |
| light_active_distance      | double | YES  |     | NA      |       |
| sedentary_active_distance  | int    | YES  |     | NA      |       |

Displaying records 1 - 10

</div>

``` sql
DESCRIBE sleep_daily;
```

<div class="knitsql-table">

| Field                | Type   | Null | Key | Default | Extra |
|:---------------------|:-------|:-----|:----|:--------|:------|
| user_id              | bigint | YES  |     | NA      |       |
| sleep_day            | text   | YES  |     | NA      |       |
| total_sleep_records  | int    | YES  |     | NA      |       |
| total_minutes_asleep | int    | YES  |     | NA      |       |
| total_time_in_bed    | int    | YES  |     | NA      |       |

5 records

</div>

``` sql
DESCRIBE steps_hourly;
```

<div class="knitsql-table">

| Field         | Type   | Null | Key | Default | Extra |
|:--------------|:-------|:-----|:----|:--------|:------|
| user_id       | bigint | YES  |     | NA      |       |
| activity_hour | text   | YES  |     | NA      |       |
| steps_total   | int    | YES  |     | NA      |       |

3 records

</div>

``` sql
DESCRIBE intensities_hourly;
```

<div class="knitsql-table">

| Field             | Type   | Null | Key | Default | Extra |
|:------------------|:-------|:-----|:----|:--------|:------|
| user_id           | bigint | YES  |     | NA      |       |
| activity_hour     | text   | YES  |     | NA      |       |
| total_intensity   | int    | YES  |     | NA      |       |
| average_intensity | double | YES  |     | NA      |       |

4 records

</div>

I noticed that the data types for the recorded dates in each table are
not in the `DATE` data type, but are rather in the `TEXT` data type.
Before this data can be used for analysis, I will have to convert the
`TEXT` data type to the `DATE` or `DATETIME` data type by using the
`STR_TO_DATE` statement.

Apart from the activity_daily table, both the date and time are found in
the relevant date columns of the other tables.

I then proceeded to replace the string data in the date columns with the
correct format for the data type conversion. I also have included a
column for the day of the week in each dataset by using the `DAYNAME`
function on the dates.

For the activity_daily dataset, only date data is available.

    CREATE TABLE activity_daily_dtype_conv AS (SELECT * FROM activity_daily);
    UPDATE activity_daily_dtype_conv SET activity_date=(STR_TO_DATE(activity_date, '%m/%d/%Y'));
    ALTER TABLE activity_daily_dtype_conv MODIFY COLUMN activity_date date;
    CREATE TABLE activity_daily_date AS
    (SELECT user_id,
    activity_date,
    DAYNAME(activity_date) AS day_name,
    total_steps,
    total_distance,
    tracker_distance,
    logged_activities_distance,
    very_active_distance,
    moderately_active_distance,
    light_active_distance,
    sedentary_active_distance,
    very_activ_minutes,
    fairly_active_minutes,
    lightly_active_minutes,
    sedentary_minutes,
    calories
    FROM activity_daily_dtype_conv);

As for the other datasets, both date and time data are available. After
converting the date and time data in the relevant columns to a suitable
format, I converted the data type from string to the `DATETIME` data
type. I separated the date and time in the relevant columns by using the
`CAST` function on the datetime data columns.

    CREATE TABLE sleep_daily_dtype_conv AS (SELECT * FROM sleep_daily);
    UPDATE sleep_daily_dtype_conv SET sleep_day=(STR_TO_DATE(sleep_day, '%m/%d/%Y %r'));
    ALTER TABLE sleep_daily_dtype_conv MODIFY COLUMN sleep_day datetime;
    CREATE TABLE sleep_daily_date_time AS 
    (SELECT user_id,
    CAST(sleep_day AS DATE) AS sleep_date,
    CAST(sleep_day AS TIME) AS sleep_time,
    DAYNAME(CAST(sleep_day AS DATE)) AS day_name,
    total_sleep_records, 
    total_minutes_asleep,
    total_time_in_bed
    FROM sleep_daily_dtype_conv);

    CREATE TABLE steps_hourly_dtype_conv AS (SELECT * FROM steps_hourly);
    UPDATE steps_hourly_dtype_conv SET activity_hour=(STR_TO_DATE(activity_hour, '%m/%d/%Y %r'));
    ALTER TABLE steps_hourly_dtype_conv MODIFY COLUMN activity_hour datetime;
    CREATE TABLE steps_hourly_date_time AS
    (SELECT user_id,
    CAST(activity_hour AS DATE) AS activity_date,
    CAST(activity_hour AS TIME) AS activity_time,
    DAYNAME(CAST(activity_hour AS DATE)) AS day_name,
    steps_total
    FROM steps_hourly_dtype_conv);

    CREATE TABLE intensities_hourly_dtype_conv AS (SELECT * FROM intensities_hourly);
    UPDATE intensities_hourly_dtype_conv SET activity_hour=(STR_TO_DATE(activity_hour, '%m/%d/%Y %r'));
    ALTER TABLE intensities_hourly_dtype_conv MODIFY COLUMN activity_hour datetime;
    CREATE TABLE intensities_hourly_date_time AS
    (SELECT user_id,
    CAST(activity_hour AS DATE) AS activity_date,
    CAST(activity_hour AS TIME) AS activity_time,
    DAYNAME(CAST(activity_hour AS DATE)) AS day_name,
    total_intensity,
    average_intensity
    FROM intensities_hourly_dtype_conv);

I then examined the datasets again to confirm that the correct format
and data types are used.

``` sql
SELECT * FROM activity_daily_date LIMIT 6;
```

<div class="knitsql-table">

| user_id | activity_date | day_name | total_steps | total_distance | tracker_distance | logged_activities_distance | very_active_distance | moderately_active_distance | light_active_distance | sedentary_active_distance | very_active_minutes | fairly_active_minutes | lightly_active_minutes | sedentary_minutes | calories |
|---:|:---|:---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 1503960366 | 2016-04-12 | Tuesday | 13162 | 8.50 | 8.50 | 0 | 1.88 | 0.55 | 6.06 | 0 | 25 | 13 | 328 | 728 | 1985 |
| 1503960366 | 2016-04-13 | Wednesday | 10735 | 6.97 | 6.97 | 0 | 1.57 | 0.69 | 4.71 | 0 | 21 | 19 | 217 | 776 | 1797 |
| 1503960366 | 2016-04-14 | Thursday | 10460 | 6.74 | 6.74 | 0 | 2.44 | 0.40 | 3.91 | 0 | 30 | 11 | 181 | 1218 | 1776 |
| 1503960366 | 2016-04-15 | Friday | 9762 | 6.28 | 6.28 | 0 | 2.14 | 1.26 | 2.83 | 0 | 29 | 34 | 209 | 726 | 1745 |
| 1503960366 | 2016-04-16 | Saturday | 12669 | 8.16 | 8.16 | 0 | 2.71 | 0.41 | 5.04 | 0 | 36 | 10 | 221 | 773 | 1863 |
| 1503960366 | 2016-04-17 | Sunday | 9705 | 6.48 | 6.48 | 0 | 3.19 | 0.78 | 2.51 | 0 | 38 | 20 | 164 | 539 | 1728 |

6 records

</div>

``` sql
DESCRIBE activity_daily_date;
```

<div class="knitsql-table">

| Field                      | Type       | Null | Key | Default | Extra |
|:---------------------------|:-----------|:-----|:----|:--------|:------|
| user_id                    | bigint     | YES  |     | NA      |       |
| activity_date              | date       | YES  |     | NA      |       |
| day_name                   | varchar(9) | YES  |     | NA      |       |
| total_steps                | int        | YES  |     | NA      |       |
| total_distance             | double     | YES  |     | NA      |       |
| tracker_distance           | double     | YES  |     | NA      |       |
| logged_activities_distance | int        | YES  |     | NA      |       |
| very_active_distance       | double     | YES  |     | NA      |       |
| moderately_active_distance | double     | YES  |     | NA      |       |
| light_active_distance      | double     | YES  |     | NA      |       |

Displaying records 1 - 10

</div>

``` sql
SELECT * FROM sleep_daily_date_time LIMIT 6;
```

<div class="knitsql-table">

| user_id | sleep_date | sleep_time | day_name | total_sleep_records | total_minutes_asleep | total_time_in_bed |
|---:|:---|:---|:---|---:|---:|---:|
| 1503960366 | 2016-04-12 | 00:00:00 | Tuesday | 1 | 327 | 346 |
| 1503960366 | 2016-04-13 | 00:00:00 | Wednesday | 2 | 384 | 407 |
| 1503960366 | 2016-04-15 | 00:00:00 | Friday | 1 | 412 | 442 |
| 1503960366 | 2016-04-16 | 00:00:00 | Saturday | 2 | 340 | 367 |
| 1503960366 | 2016-04-17 | 00:00:00 | Sunday | 1 | 700 | 712 |
| 1503960366 | 2016-04-19 | 00:00:00 | Tuesday | 1 | 304 | 320 |

6 records

</div>

``` sql
DESCRIBE sleep_daily_date_time;
```

<div class="knitsql-table">

| Field                | Type       | Null | Key | Default | Extra |
|:---------------------|:-----------|:-----|:----|:--------|:------|
| user_id              | bigint     | YES  |     | NA      |       |
| sleep_date           | date       | YES  |     | NA      |       |
| sleep_time           | time       | YES  |     | NA      |       |
| day_name             | varchar(9) | YES  |     | NA      |       |
| total_sleep_records  | int        | YES  |     | NA      |       |
| total_minutes_asleep | int        | YES  |     | NA      |       |
| total_time_in_bed    | int        | YES  |     | NA      |       |

7 records

</div>

``` sql
SELECT * FROM steps_hourly_date_time LIMIT 6;
```

<div class="knitsql-table">

|    user_id | activity_date | activity_time | day_name | steps_total |
|-----------:|:--------------|:--------------|:---------|------------:|
| 1503960366 | 2016-04-12    | 00:00:00      | Tuesday  |         373 |
| 1503960366 | 2016-04-12    | 01:00:00      | Tuesday  |         160 |
| 1503960366 | 2016-04-12    | 02:00:00      | Tuesday  |         151 |
| 1503960366 | 2016-04-12    | 03:00:00      | Tuesday  |           0 |
| 1503960366 | 2016-04-12    | 04:00:00      | Tuesday  |           0 |
| 1503960366 | 2016-04-12    | 05:00:00      | Tuesday  |           0 |

6 records

</div>

``` sql
DESCRIBE steps_hourly_date_time;
```

<div class="knitsql-table">

| Field         | Type       | Null | Key | Default | Extra |
|:--------------|:-----------|:-----|:----|:--------|:------|
| user_id       | bigint     | YES  |     | NA      |       |
| activity_date | date       | YES  |     | NA      |       |
| activity_time | time       | YES  |     | NA      |       |
| day_name      | varchar(9) | YES  |     | NA      |       |
| steps_total   | int        | YES  |     | NA      |       |

5 records

</div>

``` sql
SELECT * FROM intensities_hourly_date_time LIMIT 6;
```

<div class="knitsql-table">

| user_id | activity_date | activity_time | day_name | total_intensity | average_intensity |
|---:|:---|:---|:---|---:|---:|
| 1503960366 | 2016-04-12 | 00:00:00 | Tuesday | 20 | 0.333333 |
| 1503960366 | 2016-04-12 | 01:00:00 | Tuesday | 8 | 0.133333 |
| 1503960366 | 2016-04-12 | 02:00:00 | Tuesday | 7 | 0.116667 |
| 1503960366 | 2016-04-12 | 03:00:00 | Tuesday | 0 | 0.000000 |
| 1503960366 | 2016-04-12 | 04:00:00 | Tuesday | 0 | 0.000000 |
| 1503960366 | 2016-04-12 | 05:00:00 | Tuesday | 0 | 0.000000 |

6 records

</div>

``` sql
DESCRIBE intensities_hourly_date_time;
```

<div class="knitsql-table">

| Field             | Type       | Null | Key | Default | Extra |
|:------------------|:-----------|:-----|:----|:--------|:------|
| user_id           | bigint     | YES  |     | NA      |       |
| activity_date     | date       | YES  |     | NA      |       |
| activity_time     | time       | YES  |     | NA      |       |
| day_name          | varchar(9) | YES  |     | NA      |       |
| total_intensity   | int        | YES  |     | NA      |       |
| average_intensity | double     | YES  |     | NA      |       |

6 records

</div>

Now that the data has been formatted appropriately with the right data
types and suitably named columns, I can now proceed to clean the data
for analysis.

### Cleaning the Data for Analysis

I will need to check the datasets for duplicate and empty rows before
analysis. Firstly, I will remove duplicate rows in the datasets. After
that, I will remove rows with empty values.

I will use the `SELECT DISTINCT` statement to extract only the distinct
rows from the datasets and to remove duplicate rows in the datasets.

I used the `COUNT` statement to find the number of rows in each dataset,
and used it together with the `SELECT DISTINCT` statement to obtain the
number of distinct rows in the datasets for comparison.

``` sql
SELECT COUNT(*) FROM activity_daily_date;
```

<div class="knitsql-table">

| COUNT(\*) |
|----------:|
|       940 |

1 records

</div>

``` sql
SELECT COUNT(*) FROM (SELECT DISTINCT * FROM activity_daily_date) AS distinct_rows;
```

<div class="knitsql-table">

| COUNT(\*) |
|----------:|
|       940 |

1 records

</div>

``` sql
SELECT COUNT(*) FROM sleep_daily_date_time;
```

<div class="knitsql-table">

| COUNT(\*) |
|----------:|
|       413 |

1 records

</div>

``` sql
SELECT COUNT(*) FROM (SELECT DISTINCT * FROM sleep_daily_date_time) AS distinct_rows;
```

<div class="knitsql-table">

| COUNT(\*) |
|----------:|
|       410 |

1 records

</div>

``` sql
SELECT COUNT(*) FROM steps_hourly_date_time;
```

<div class="knitsql-table">

| COUNT(\*) |
|----------:|
|     22099 |

1 records

</div>

``` sql
SELECT COUNT(*) FROM (SELECT DISTINCT * FROM steps_hourly_date_time) AS distinct_rows;
```

<div class="knitsql-table">

| COUNT(\*) |
|----------:|
|     22099 |

1 records

</div>

``` sql
SELECT COUNT(*) FROM intensities_hourly_date_time;
```

<div class="knitsql-table">

| COUNT(\*) |
|----------:|
|     22099 |

1 records

</div>

``` sql
SELECT COUNT(*) FROM (SELECT DISTINCT * FROM intensities_hourly_date_time) AS distinct_rows;
```

<div class="knitsql-table">

| COUNT(\*) |
|----------:|
|     22099 |

1 records

</div>

There were three duplicate rows in the sleep_daily dataset, while there
were no duplicate rows in the other datasets.

I then used the `IS NULL` operator to find any missing or empty values
in my datasets, where I found that there were no empty fields in the
datasets.

Finding that there are no empty fields in the datasets, I created
finalised tables to be used for analysis.

    CREATE TABLE daily_activity_final AS (SELECT * FROM activity_daily_date);

    CREATE TABLE daily_sleep_final AS (SELECT DISTINCT * FROM sleep_daily_date_time);

    CREATE TABLE hourly_steps_final AS (SELECT * FROM steps_hourly_date_time);

    CREATE TABLE hourly_intensities_final AS (SELECT * FROM intensities_hourly_date_time);

Finally, I exported the finalised tables as .csv files. The names of the
datasets to be used for analysis are:

- daily_activity_final.csv
- daily_sleep_final.csv
- hourly_steps_final.csv
- hourly_intensities_final.csv

## Step 4: Analyse

Now that the data has been cleaned and organised, we can proceed to the
analysis step. I made use of the exported .csv files from MySQL and
imported them to R to carry out the analysis, ensuring that the right
data types and formatting is stated for various columns.

``` r
library(tidyverse)
library(ggplot2)
library(lubridate)
library(dplyr)
library(janitor)
library(skimr)
library(readr)
```

``` r
daily_activity_final <- read_csv("daily_activity_final.csv", col_types = cols(user_id = col_character(), activity_date = col_date(format = "%Y-%m-%d")));

daily_sleep_final <- read_csv("daily_sleep_final.csv", col_types = cols(user_id = col_character(), sleep_date = col_date(format = "%Y-%m-%d"), sleep_time = col_time(format = "%X")));

hourly_steps_final <- read_csv("hourly_steps_final.csv", col_types = cols(user_id = col_character(), activity_date = col_date(format = "%Y-%m-%d"), activity_time = col_time(format = "%X")));

hourly_intensities_final <- read_csv("hourly_intensities_final.csv", col_types = cols(user_id = col_character(), activity_date = col_date(format = "%Y-%m-%d"), activity_time = col_time(format = "%X")));
```

### User Types

Now that the data has been imported into R, I proceeded to find out what
type of users are represented in the dataset. To do this, I defined a
new dataframe called user_types, which I then exported as a .csv file to
be used in Tableau.

``` r
user_types <- daily_activity_final %>% group_by(user_id) %>% summarise(days_used=sum(n())) %>% mutate(user_type = case_when(
  days_used >= 1 & days_used <= 10 ~ "Light User",
  days_used >= 11 & days_used <= 20 ~ "Moderate User",
  days_used >= 21 & days_used <= 29 ~ "Heavy User",
  days_used >= 30 ~ "Everyday User"))
```

``` r
head(user_types)
```

    ## # A tibble: 6 × 3
    ##   user_id    days_used user_type    
    ##   <chr>          <int> <chr>        
    ## 1 1503960366        31 Everyday User
    ## 2 1624580081        31 Everyday User
    ## 3 1644430081        30 Everyday User
    ## 4 1844505072        31 Everyday User
    ## 5 1927972279        31 Everyday User
    ## 6 2022484408        31 Everyday User

    write.csv(user_types, "user_types.csv", row.names=FALSE)

### Data Summaries

I used the `summary()` function to obtain statistical information about
the datasets.

``` r
summary(daily_activity_final)
```

    ##    user_id          activity_date          day_name          total_steps   
    ##  Length:940         Min.   :2016-04-12   Length:940         Min.   :    0  
    ##  Class :character   1st Qu.:2016-04-19   Class :character   1st Qu.: 3790  
    ##  Mode  :character   Median :2016-04-26   Mode  :character   Median : 7406  
    ##                     Mean   :2016-04-26                      Mean   : 7638  
    ##                     3rd Qu.:2016-05-04                      3rd Qu.:10727  
    ##                     Max.   :2016-05-12                      Max.   :36019  
    ##  total_distance   tracker_distance logged_activities_distance
    ##  Min.   : 0.000   Min.   : 0.000   Min.   :0.0000            
    ##  1st Qu.: 2.620   1st Qu.: 2.620   1st Qu.:0.0000            
    ##  Median : 5.245   Median : 5.245   Median :0.0000            
    ##  Mean   : 5.490   Mean   : 5.475   Mean   :0.1064            
    ##  3rd Qu.: 7.713   3rd Qu.: 7.710   3rd Qu.:0.0000            
    ##  Max.   :28.030   Max.   :28.030   Max.   :5.0000            
    ##  very_active_distance moderately_active_distance light_active_distance
    ##  Min.   : 0.000       Min.   :0.0000             Min.   : 0.000       
    ##  1st Qu.: 0.000       1st Qu.:0.0000             1st Qu.: 1.945       
    ##  Median : 0.210       Median :0.2400             Median : 3.365       
    ##  Mean   : 1.503       Mean   :0.5675             Mean   : 3.341       
    ##  3rd Qu.: 2.052       3rd Qu.:0.8000             3rd Qu.: 4.783       
    ##  Max.   :21.920       Max.   :6.4800             Max.   :10.710       
    ##  sedentary_active_distance very_active_minutes fairly_active_minutes
    ##  Min.   :0                 Min.   :  0.00      Min.   :  0.00       
    ##  1st Qu.:0                 1st Qu.:  0.00      1st Qu.:  0.00       
    ##  Median :0                 Median :  4.00      Median :  6.00       
    ##  Mean   :0                 Mean   : 21.16      Mean   : 13.56       
    ##  3rd Qu.:0                 3rd Qu.: 32.00      3rd Qu.: 19.00       
    ##  Max.   :0                 Max.   :210.00      Max.   :143.00       
    ##  lightly_active_minutes sedentary_minutes    calories   
    ##  Min.   :  0.0          Min.   :   0.0    Min.   :   0  
    ##  1st Qu.:127.0          1st Qu.: 729.8    1st Qu.:1828  
    ##  Median :199.0          Median :1057.5    Median :2134  
    ##  Mean   :192.8          Mean   : 991.2    Mean   :2304  
    ##  3rd Qu.:264.0          3rd Qu.:1229.5    3rd Qu.:2793  
    ##  Max.   :518.0          Max.   :1440.0    Max.   :4900

``` r
summary(daily_sleep_final)
```

    ##    user_id            sleep_date           sleep_time         day_name        
    ##  Length:410         Min.   :2016-04-12   Min.   :00:00:00   Length:410        
    ##  Class :character   1st Qu.:2016-04-19   1st Qu.:00:00:00   Class :character  
    ##  Mode  :character   Median :2016-04-27   Median :00:00:00   Mode  :character  
    ##                     Mean   :2016-04-26   Mean   :00:00:00                     
    ##                     3rd Qu.:2016-05-04   3rd Qu.:00:00:00                     
    ##                     Max.   :2016-05-12   Max.   :00:00:00                     
    ##  total_sleep_records total_minutes_asleep total_time_in_bed
    ##  Min.   :1.00        Min.   : 58.0        Min.   : 61.0    
    ##  1st Qu.:1.00        1st Qu.:361.0        1st Qu.:403.8    
    ##  Median :1.00        Median :432.5        Median :463.0    
    ##  Mean   :1.12        Mean   :419.2        Mean   :458.5    
    ##  3rd Qu.:1.00        3rd Qu.:490.0        3rd Qu.:526.0    
    ##  Max.   :3.00        Max.   :796.0        Max.   :961.0

``` r
summary(hourly_steps_final)
```

    ##    user_id          activity_date        activity_time            
    ##  Length:22099       Min.   :2016-04-12   Min.   :00:00:00.000000  
    ##  Class :character   1st Qu.:2016-04-19   1st Qu.:05:00:00.000000  
    ##  Mode  :character   Median :2016-04-26   Median :11:00:00.000000  
    ##                     Mean   :2016-04-26   Mean   :11:24:56.755509  
    ##                     3rd Qu.:2016-05-03   3rd Qu.:17:00:00.000000  
    ##                     Max.   :2016-05-12   Max.   :23:00:00.000000  
    ##    day_name          steps_total     
    ##  Length:22099       Min.   :    0.0  
    ##  Class :character   1st Qu.:    0.0  
    ##  Mode  :character   Median :   40.0  
    ##                     Mean   :  320.2  
    ##                     3rd Qu.:  357.0  
    ##                     Max.   :10554.0

``` r
summary(hourly_intensities_final)
```

    ##    user_id          activity_date        activity_time            
    ##  Length:22099       Min.   :2016-04-12   Min.   :00:00:00.000000  
    ##  Class :character   1st Qu.:2016-04-19   1st Qu.:05:00:00.000000  
    ##  Mode  :character   Median :2016-04-26   Median :11:00:00.000000  
    ##                     Mean   :2016-04-26   Mean   :11:24:56.755509  
    ##                     3rd Qu.:2016-05-03   3rd Qu.:17:00:00.000000  
    ##                     Max.   :2016-05-12   Max.   :23:00:00.000000  
    ##    day_name         total_intensity  average_intensity
    ##  Length:22099       Min.   :  0.00   Min.   :0.0000   
    ##  Class :character   1st Qu.:  0.00   1st Qu.:0.0000   
    ##  Mode  :character   Median :  3.00   Median :0.0500   
    ##                     Mean   : 12.04   Mean   :0.2006   
    ##                     3rd Qu.: 16.00   3rd Qu.:0.2667   
    ##                     Max.   :180.00   Max.   :3.0000

Based on the statistical summaries, we can make the following
observations:

- The average number of steps per day is 7,638, which is relatively low,
  compared to the [study by the U.S. Centres for Disease Control and
  Prevention
  (CDC)](https://archive.cdc.gov/#/details?url=https://www.cdc.gov/media/releases/2020/p0324-daily-step-count.html)
  suggesting 8,000-10,000 steps per day.
- Sedentary behaviour is defined by the [World Health
  Organisation](https://www.ncbi.nlm.nih.gov/books/NBK566046/) as ‘time
  spent sitting or lying with low energy expenditure, while awake, in
  the context of occupational, educational, home and community settings,
  and transportation.’ The average amount of time in sedentary
  activities is 991.2 min (16.52 h), which should be greatly reduced in
  favour of any level of physical activity.
- The average amount of time in light activities is 192.8 min (3.21 h),
  which suggests the participants were mostly lightly active. More
  activities of this kind of intensity can be used to replace sedentary
  behaviour.
- According to the [U.S.
  CDC](https://www.cdc.gov/sleep/about/?CDC_AAref_Val=https://www.cdc.gov/sleep/about_sleep/how_much_sleep.html),
  adults require at least 7 h of sleep. On average, users have 419.2 min
  (6.99 h) of sleep per day.

## Step 5: Share

I have made use of both R (the `ggplot()` function) and Tableau for the
visualisations, to show my proficiency in using both software for
creating data visualisations. The Tableau visualisation can be viewed
[here](https://public.tableau.com/views/GoogleDataAnalyticsCapstoneProject-BellabeatCaseStudyVisualisationsDanielPoe/BellabeatCapstoneProjectStory?:language=en-GB&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link),
where I have also created a story to summarise key findings.

### Number of Users with Recorded Data

![](No.%20of%20Engaged%20Users%20by%20Day.png) Using the user_types.csv
file exported from R, I proceeded to examine the proportion of user
types in Tableau.

![](User%20Types.png) **Observations**: Although there are 33 users
recorded in the dataset daily_activity_final, the number of users
reflected for each calendar day was found to be decreasing. This means
not all of the 33 users have used the tracker to record their activity
throughout the one-month timeline. User engagement fell by 36%
throughout the one-month period. Out of the 33 users, 24 of them have
consistently logged their activity throughout the one-month period.

### Number of Steps

![](Average%20Steps%20During%20the%20Day.png)
![](Average%20Steps%20by%20Week%20Day.png) **Observations**: The
histogram ‘Average Steps During the Day’ shows that users are more
active from 8 am to 8 pm, recording the most number of steps from 5 to 8
pm, followed by 12 to 3 pm. These time periods seem to correspond to
users leaving work and having their lunch break respectively. Users
possibly were using these times to go to the gym or spending time on
longer walks.

As mentioned earlier, the recommended minimum of steps per day is around
8,000-10,000 steps. On average, users are walking below that
recommendation, except on Tuesdays and Saturdays, where they were most
active.

``` r
ggplot(data=daily_activity_final, aes(x=total_steps, y=calories)) + geom_point(aes(colour = calories)) + geom_smooth(method = "gam", formula = y ~ s(x, bs = "cs"), colour="darkorange2") + labs(title="Total Steps vs. Calories Burnt", x="Total Steps", y="Calories Burnt", colour="Calories")+theme(plot.title = element_text(hjust=0.5))
```

![](Google-Data-Analytics-Capstone-Project---Bellabeat-Case-Study--Github-_files/figure-gfm/unnamed-chunk-41-1.png)<!-- -->

**Observations**: This visualisation indicates that with the greater
number of steps, the greater the amount of calories is burnt, since
logically, more energy is consumed with increased activity.

### Activity Patterns

![](Average%20Activity%20Hours.png) **Observations**: The scatter plot
reveals the predominant portion of the users’ daily activities is
heavily sedentary. This suggests that the users are mostly indoors and
carrying out stationary activities like sitting or lying down. In terms
of physical activity levels, users mostly carried out light-intensity
activities.

![](Average%20Total%20Intensity%20vs.%20Time.png) **Observations**:
Similar to the earlier histogram ‘Average Steps During the Day,’ this
histogram indicates that users are most active between 5-8 pm, and
fairly active between 12-3 pm. These time periods seem to correspond to
users leaving work and having their lunch break respectively. Users may
be using these times to go to the gym or spending time on longer walks.

![](High%20Intensity%20Activities%20vs.%20Hours%20Asleep.png)
**Observations**: The scatter plot shows that majority of users who had
5-9 h of sleep were found to be frequently involved in high intensity
activities.

### Sleep

![](No.%20of%20Hours%20Asleep%20by%20Day%20of%20the%20Week.png)

``` r
ggplot(data=daily_sleep_final, aes(x=total_time_in_bed, y=total_minutes_asleep)) + geom_point(aes(colour = total_minutes_asleep)) + geom_smooth(method = lm, colour="darkorange2") + labs(title="Total Time Asleep vs. Total Time in Bed", x="Total Minutes in Bed", y="Total Minutes Asleep", colour="Total Minutes Asleep")+theme(plot.title = element_text(hjust=0.5))
```

    ## `geom_smooth()` using formula = 'y ~ x'

![](Google-Data-Analytics-Capstone-Project---Bellabeat-Case-Study--Github-_files/figure-gfm/unnamed-chunk-42-1.png)<!-- -->

**Observations**: There is a positive correlation between the time in
bed and the time asleep. This means that in order to have good sleep
quality, people need to go to bed on time.

Based on the statistical summary of daily_sleep_final, the average total
time in bed is 458.5 min (7.64 h), while the average total time asleep
is 419.2 min (6.99 h). This means that the users take around 39.3 min to
fall asleep. According to the [Sleep Centre of Middle
Tennessee](https://sleepcenterinfo.com/blog/how-long-to-fall-asleep/),
it typically takes around 10 to 20 minutes to fall asleep, indicating
that the users have problems falling asleep.

## Step 6: Act

Bellabeat has a mission to provide women with activity, sleep, stress,
and reproductive health data, so as to help them discover more about
their health and habits.

A larger data sample size would be necessary in order to carry out more
in-depth analysis. Different types of data would also need to be
collected in order to have a broader understanding in the analysis
result; some of this additional data can include user demographics such
as gender, age, and occupation. Having additional demographic data will
help to remove bias in the datasets and analysis. Collection of more
recent and up-to-date data will also increase the reliability of the
analysis to learn about the current situation and trends.

### Key Findings

With that said, here are the key findings from this analysis:

- Not all users utilised the sleep tracker and weight log.
- The least popular feature in the fitness tracker is the weight log
  function.
- User engagement decreased by 36% throughout the one-month period.
- In terms of the days of the week, users were most active on Tuesdays
  and Saturdays.
- Most of the time is spent in sedentary activities, with some time
  spent on light-intensity activities.
- Users were active from 8 am to 8 pm, and were most active between 5 to
  8 pm, followed by 12 to 3 pm.
- Although users have relatively sufficient sleep on average, they
  seemed to have problems falling asleep. The amount of sleep they have
  per day is inconsistent and often less than the recommended minimum of
  7 h per day.

### Recommendations

Based on this analysis, I would propose the following recommendations:

- **Further Analysis on the Weight Log Function**

  Seeing that there were only eight out of 33 users who used the weight
  log function, data collection on it (e.g. in the form of a survey)
  should be conducted to understand why users do not use it. Such a
  study would provide user insights into the function and inform
  Bellabeat on how they can perhaps improve on the weight log function.

- **Promote Device Use while Sleeping**

  People tend to remove watches before going to sleep. Bellabeat should
  encourage device users to continue wearing their devices when going to
  bed, so that Bellabeat will be able to collect more data on users’
  sleep patterns. Users will also be able to gain insights from their
  sleep data and make helpful decisions for them to get enough sleep.

- **Sleep Notifications**

  Since users often do not have the recommended amount of sleep per day,
  we can consider to have a feature on the Bellabeat app that allows
  users to specify a time they desire to go to sleep. The app can then
  notify the user some time before that time to prepare going to sleep.
  Since users struggle to fall asleep, prompting them to

- **Step and Activity Notifications**

  In order to encourage users to take more steps, Bellabeat can set up
  app notifications at different times of the day to make users
  conscious of the number of steps they have taken and motivate them to
  meet the daily minimum requirement of 8,00 steps by the U.S. CDC.
  Additional information on the health benefits of walking the daily
  recommended number of steps can also be included in the app to educate
  users about its benefits.

  Prolonged sedentary activity alerts can also be set up, which will
  prompt users to get up and engage in some form of physical activity
  like walking. Additional information can also be included in the app
  about the dangers of highly sedentary activity, such as information
  published by [WHO](https://www.ncbi.nlm.nih.gov/books/NBK566046/).

- **Online Campaign Recommendations**

  The online campaign should not portray the Bellabeat app as merely a
  fitness activity app. Rather, it should promote the app as a guide
  that will allow women to strike a balance between their personal and
  work lives, and to improve their health habits through education and
  daily app notifications.

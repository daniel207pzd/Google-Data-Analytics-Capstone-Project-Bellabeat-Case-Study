-- Familiarise with the datasets.
SELECT * FROM daily_activity LIMIT 6;
SELECT * FROM daily_sleep LIMIT 6;
SELECT * FROM weight_info LIMIT 6;
SELECT * FROM hourly_steps LIMIT 6;
SELECT * FROM hourly_intensities LIMIT 6;

-- Obtaining the Number of Users Represented in the Datasets
SELECT COUNT(DISTINCT daily_activity.Id) AS users_activity,
COUNT(DISTINCT daily_sleep.Id) AS users_sleep,
COUNT(DISTINCT weight_info.Id) AS users_weight 
FROM daily_activity, daily_sleep, weight_info;

-- Renaming the columns to match naming conventions.
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

-- Check column names and data types
SELECT * FROM activity_daily LIMIT 6;
SELECT * FROM sleep_daily LIMIT 6;
SELECT * FROM steps_hourly LIMIT 6;
SELECT * FROM intensities_hourly LIMIT 6;

DESCRIBE activity_daily;
DESCRIBE sleep_daily;
DESCRIBE steps_hourly;
DESCRIBE intensities_hourly;

-- Convert string datatype to date or datetime datatype
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
very_active_minutes,
fairly_active_minutes,
lightly_active_minutes,
sedentary_minutes,
calories
FROM activity_daily_dtype_conv);

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

-- Checking for duplicate rows in the datasets
SELECT COUNT(*) FROM activity_daily_date;
SELECT COUNT(*) FROM (SELECT DISTINCT * FROM activity_daily_date) AS distinct_rows;

SELECT COUNT(*) FROM sleep_daily_date_time;
SELECT COUNT(*) FROM (SELECT DISTINCT * FROM sleep_daily_date_time) AS distinct_rows;

SELECT COUNT(*) FROM steps_hourly_date_time;
SELECT COUNT(*) FROM (SELECT DISTINCT * FROM steps_hourly_date_time) AS distinct_rows;

SELECT COUNT(*) FROM intensities_hourly_date_time;
SELECT COUNT(*) FROM (SELECT DISTINCT * FROM intensities_hourly_date_time) AS distinct_rows;

-- Creating the finalised tables for export
CREATE TABLE daily_activity_final AS (SELECT * FROM activity_daily_date);
CREATE TABLE daily_sleep_final AS (SELECT DISTINCT * FROM sleep_daily_date_time);
CREATE TABLE hourly_steps_final AS (SELECT * FROM steps_hourly_date_time);
CREATE TABLE hourly_intensities_final AS (SELECT * FROM intensities_hourly_date_time);

-- View finalised tables
SELECT * FROM daily_activity_final;
SELECT * FROM daily_sleep_final;
SELECT * FROM hourly_steps_final;
SELECT * FROM hourly_intensities_final;
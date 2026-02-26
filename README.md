# Hospital-Data-Analysis-SQL
# 🏥 Hospital Data Analysis (SQL)

## 📌 Overview
SQL project to analyze hospital operations and costs using admission/discharge dates, patient counts, and medical expenses.

## 🛠 Tools / SQL
- PostgreSQL (date arithmetic, DATE_TRUNC)
- Aggregations, GROUP BY, ORDER BY, LIMIT

## 📂 Dataset Columns
- hospital_name, location, department
- doctors_count, patients_count
- admission_date, discharge_date
- medical_expenses

## 🚀 How to Run
1. Create table:
   - Run `CREATE TABLE hospital ...`
2. Load CSV (psql):
   \copy hospital FROM 'data/Hospital_Data.csv' WITH (FORMAT csv, HEADER true);

## ✅ Analysis Included
- Total patients treated
- Avg doctors per hospital
- Top 3 departments by patients
- Hospital with maximum total medical expenses
- Avg medical expenses per day (hospital-wise)
- Longest hospital stay
- City-wise total patients
- Avg length of stay by department
- Department with lowest patients
- Monthly medical expenses report

## 🔎 Example Insight Ideas
- Which departments drive the most patient load?
- Which hospitals have highest per-day cost?
- Seasonal/monthly expense trends

👨‍💻 Created by: Karan Vaishnav

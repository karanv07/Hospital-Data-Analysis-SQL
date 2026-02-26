                      -- ============================================
                      -- Hospital Data Analysis Project (PostgreSQL)
                      -- ============================================


CREATE TABLE hospital (
            Hospital_Name	VARCHAR(100),
			Location VARCHAR(100),
			Department	VARCHAR(100),
			Doctors_Count	INT,
			Patients_Count	INT,
			Admission_Date	DATE,
			Discharge_Date	DATE,
			Medical_Expenses DECIMAL (10,2)
);


SELECT * FROM hospital;

-- Load CSV (run in psql)
\copy hospital FROM 'data/Hospital_Data.csv' WITH (FORMAT csv, HEADER true);


-- Total number of Patients
SELECT SUM(patients_count) AS Total_patient_number
FROM hospital;


-- Average number of Doctors per Hospital
SELECT hospital_name, AVG(doctors_count) AS Avg_doctors_per_hospital
FROM hospital
GROUP BY hospital_name;


-- Top 3 Departments with the Highest Number of Patients
SELECT department, SUM(patients_count) AS Total_patients
FROM hospital
GROUP BY department
ORDER BY SUM(patients_count) DESC
LIMIT 3;


SELECT * FROM hospital;

-- Hospital with the Maximum Medical Expenses
SELECT hospital_name, SUM(medical_expenses) AS Total_medical_expense
FROM hospital
GROUP BY hospital_name
ORDER BY SUM(medical_expenses) DESC
LIMIT 1;


-- Daily Average Medical Expenses per Day for Each Hospital
SELECT hospital_name, 
AVG(medical_expenses / (discharge_date - admission_date + 1)) AS Avg_medical_expenses_per_day
FROM hospital
GROUP BY hospital_name
ORDER BY Avg_medical_expenses_per_day DESC;


-- Longest Hospital Stay
SELECT hospital_name, location, department, (discharge_date - admission_date + 1)  AS total_stay_days
FROM hospital
ORDER BY total_stay_days DESC
LIMIT 1;


SELECT * FROM hospital;


-- Total Patients Treated per city
SELECT location, SUM(patients_count) AS Total_patients
FROM hospital
GROUP BY location
ORDER BY SUM(patients_count) DESC;



-- Average Length of Stay Per Department
SELECT department, AVG(discharge_date - admission_date) AS Avg_stay
FROM hospital
GROUP BY department
ORDER BY Avg_stay DESC ;


-- Identify Department with the Lowest Number of Patients
SELECT department, SUM(patients_count) AS total_patients
FROM hospital
GROUP BY department
ORDER BY total_patients ASC
LIMIT 1;


-- Monthly medical expenses report
SELECT DATE_TRUNC('month', admission_date) AS Month,
       SUM(medical_expenses) AS total_expenses
FROM hospital
GROUP BY Month
ORDER BY Month;


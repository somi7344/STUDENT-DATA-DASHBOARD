# Student Data Dashboard – SQL & Power BI Project

This project demonstrates a complete **Data Analysis Workflow**:
1. **Raw Data Collection**
2. **Data Cleaning (SQL)**
3. **Data Transformation**
4. **Visualization (Power BI)**

The dataset is a **sample student record database (200 rows)** containing details such as `student_id`, `name`, `age`, `gender`, `department`, `city`, and `grade`.  
The goal was to **clean the data, prepare it for analysis, and build an interactive dashboard** for quick insights.

---

## Tools Used
- **MySQL** – For cleaning and transforming the raw dataset.
- **SQL** – To handle duplicates, fill missing values, and structure the data.
- **Power BI** – To visualize the cleaned data using interactive dashboards.

---

## Steps Followed
### 1. Data Cleaning (SQL)
- Removed duplicate `student_id` records.
- Replaced missing values:
  - `gender` → "Unknown"
  - `age` → Average age (rounded)
  - `department`, `city`, `grade` → "Not Specified"
- Expanded `grade` column for longer values.
- Exported the final cleaned dataset for visualization.

### 2. Data Analysis & Visualization (Power BI)
- Created a **Bar Chart** showing students by department.
- Added a **Pie Chart** for gender distribution.
- Built **KPI Cards** for total students and average grade.
- Used **Slicers** to allow filtering by department and city.

---

## Key Insights
- Quickly see which departments have the highest student counts.
- Understand demographic distribution by gender and city.
- Simplified dashboard for **decision-makers to filter and analyze student data** easily.

---

## Project Files
- **[`raw_data/`](./raw_data)** – Original dataset with duplicates, NULLs, and inconsistencies.
- **[`sql_scripts/`](./sql_scripts)** – SQL queries for cleaning and transforming the dataset.
- **[`cleaned_data/`](./cleaned_data)** – Final dataset ready for visualization.
- **[`dashboard/`](./dashboard)** – Power BI dashboard (`.pbix`) and screenshot.

---

## Dashboard Preview
![Dashboard Screenshot](./dashboard/Dashboard_Screenshot.png)

---

### Why This Project?
This project showcases **real-world data cleaning and dashboard creation**, a key skill for **Data Analyst roles**.  
It combines **SQL for transformation** and **Power BI for visualization**, both of which are highly demanded tools in the industry.

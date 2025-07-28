# Cleaned Student Dataset

This folder contains the **final cleaned dataset** (`student_cleaned.csv`) ready for analysis and visualization in Power BI.

### What Was Fixed During Cleaning
1. **Removed duplicates:** Ensured each student has a unique `student_id`.
2. **Handled missing values:**
   - `gender` → replaced with "Unknown".
   - `age` → replaced with average age (rounded).
   - `department`, `city`, `grade` → replaced with "Not Specified".
3. **Fixed column type:** Expanded `grade` column to hold longer text values.
4. **Exported cleaned data** for easy use in Power BI.

This dataset will be used to build interactive dashboards to analyze student demographics and performance.

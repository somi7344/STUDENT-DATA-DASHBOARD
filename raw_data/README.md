# Raw Student Dataset

This folder contains the **original uncleaned dataset** for a sample student database project.  
The dataset contains 200 rows and includes issues such as:
- Duplicate records (some students appear more than once).
- Missing values (`NULL`) in columns like `gender`, `age`, `department`, `city`, and `grade`.
- Inconsistent data (e.g., blank fields, different text cases).

### Cleaning Plan
1. Remove duplicate student records (based on `student_id`).
2. Replace missing values:
   - `gender` → "Unknown"
   - `age` → Average age (rounded)
   - `department`, `city`, `grade` → "Not Specified"
3. Expand `grade` column to fit longer values.
4. Export the cleaned dataset for analysis in Power BI.

This raw dataset will serve as the starting point for SQL cleaning and Power BI dashboard creation.


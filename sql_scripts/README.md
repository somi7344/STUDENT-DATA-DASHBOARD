# SQL Cleaning Scripts

This folder contains the SQL scripts used to clean the raw student dataset.

### What These Queries Do:
1. **Remove Duplicates**  
   - Created a new table `student_newrecords` containing only distinct records.

2. **Handle Missing Values**  
   - Replaced `NULL` values in:
     - `gender` → "Unknown"
     - `age` → Average age (rounded)
     - `department`, `city`, `grade` → "Not Specified"

3. **Fix Data Types**  
   - Expanded the `grade` column to hold longer text values.

4. **Export Cleaned Data**  
   - Prepared the final dataset for visualization in Power BI.

Each query is stored as a `.sql` file in this folder for easy reference and reuse.

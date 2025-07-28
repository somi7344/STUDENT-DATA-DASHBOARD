USE student_db;
SELECT * FROM student_records LIMIT 0,100;
SELECT COLUMN_NAME 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = 'student_records';
CREATE TABLE student_clean AS 
SELECT DISTINCT * FROM student_records 
WHERE student_id IS NOT NULL
GROUP BY student_id;
SELECT 
    SUM(CASE WHEN name IS NULL THEN 1 ELSE 0 END) AS null_names,
    SUM(CASE WHEN gender IS NULL THEN 1 ELSE 0 END) AS null_genders,
    SUM(CASE WHEN age IS NULL THEN 1 ELSE 0 END) AS null_ages,
    SUM(CASE WHEN department IS NULL THEN 1 ELSE 0 END) AS null_departments,
    SUM(CASE WHEN city IS NULL THEN 1 ELSE 0 END) AS null_cities,
    SUM(CASE WHEN grade IS NULL THEN 1 ELSE 0 END) AS null_grades
FROM student_records;
SET SQL_SAFE_UPDATES = 0;

-- Fill NULL genders
UPDATE student_records
SET gender = 'Unknown'
WHERE gender IS NULL;


-- Fill NULL ages with average age (rounded)
UPDATE student_records
SET age = (
    SELECT ROUND(AVG(age)) FROM (SELECT * FROM student_records) AS sub
)
WHERE age IS NULL;

-- Fill NULL department
UPDATE student_records
SET department = 'Not Specified'
WHERE department IS NULL;

-- Fill NULL city
UPDATE student_records
SET city = 'Not Specified'
WHERE city IS NULL;

-- Fill NULL grade
UPDATE student_records
SET grade = 'Not Specified'
WHERE grade IS NULL;

ALTER TABLE student_records
MODIFY grade VARCHAR(20);
CREATE TABLE student_temp AS
SELECT DISTINCT * FROM student_records;

DROP TABLE student_records;
RENAME TABLE student_temp TO student_newrecords;
SELECT * FROM student_newrecords;

ALTER TABLE student_newrecords
MODIFY grade VARCHAR(20);

UPDATE student_newrecords
SET gender = 'Unknown'
WHERE gender IS NULL;

SELECT ROUND(AVG(age)) INTO @avg_age FROM student_newrecords;

UPDATE student_newrecords
SET age = @avg_age
WHERE age IS NULL;

UPDATE student_newrecords
SET department = 'Not Specified'
WHERE department IS NULL;

UPDATE student_newrecords
SET city = 'Not Specified'
WHERE city IS NULL;

UPDATE student_newrecords
SET grade = 'Not Specified'
WHERE grade IS NULL;


SELECT * FROM student_newrecords LIMIT 10;

-- Check if any NULLs remain
SELECT 
    SUM(CASE WHEN gender = 'Unknown' THEN 1 ELSE 0 END) AS unknown_gender,
    SUM(CASE WHEN age IS NULL THEN 1 ELSE 0 END) AS null_age,
    SUM(CASE WHEN department = 'Not Specified' THEN 1 ELSE 0 END) AS unspecified_dept,
    SUM(CASE WHEN city = 'Not Specified' THEN 1 ELSE 0 END) AS unspecified_city,
    SUM(CASE WHEN grade = 'Not Specified' THEN 1 ELSE 0 END) AS unspecified_grade
FROM student_newrecords;

SELECT * FROM student_newrecords;
SELECT * FROM student_records;


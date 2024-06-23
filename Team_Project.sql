--Dataset loaded, viewing the set
select * from Card_eligibility.dbo.carddataset

--What is the dataset record cound?
Select count(*) from Card_eligibility.dbo.carddataset 

--Removing Duplicates if any
WITH CTE AS (
    SELECT *, 
           ROW_NUMBER() OVER (PARTITION BY ID ORDER BY (SELECT NULL)) AS rn
   FROM Card_eligibility.dbo.carddataset
)
DELETE FROM CTE WHERE rn > 1;

--Removing rows with missing value for specific columns
DELETE FROM Card_eligibility.dbo.carddataset WHERE Gender IS NULL;
DELETE FROM Card_eligibility.dbo.carddataset WHERE Email IS NULL;
DELETE FROM Card_eligibility.dbo.carddataset WHERE Age IS NULL;
DELETE FROM Card_eligibility.dbo.carddataset WHERE Income_type IS NULL;
DELETE FROM Card_eligibility.dbo.carddataset WHERE Education_type IS NULL;
DELETE FROM Card_eligibility.dbo.carddataset WHERE Housing_type IS NULL;

--correct datatype
ALTER TABLE Card_eligibility.dbo.carddataset
ALTER COLUMN Age INT;

ALTER TABLE Card_eligibility.dbo.carddataset
ALTER COLUMN Years_employed INT;

--standadizing the text column
-- I trimed white spaces and convert to lower case
UPDATE Card_eligibility.dbo.carddataset
SET Education_type = LTRIM(RTRIM(Education_type));

UPDATE Card_eligibility.dbo.carddataset
SET Income_type = LTRIM(RTRIM(Income_type));

UPDATE Card_eligibility.dbo.carddataset
SET Family_status = LTRIM(RTRIM(Family_status));

UPDATE Card_eligibility.dbo.carddataset
SET Housing_type = LTRIM(RTRIM(Housing_type));

UPDATE Card_eligibility.dbo.carddataset
SET Occupation_type = LTRIM(RTRIM(Occupation_type));


--Creating eligible and ineligible column by target
SELECT 
    COUNT(CASE WHEN target = 0 THEN 1 END) AS Ineligible,
    COUNT(CASE WHEN target = 1 THEN 1 END) AS Eligible
FROM Card_eligibility.dbo.carddataset;


--Determigng Eligibility by the target column
SELECT target, COUNT(*) AS count
FROM Card_eligibility.dbo.carddataset
GROUP BY target;
-- This output indicates there are 8426 occurrence of eligible(0) people and 1283 occurrences of eligibility 1 in the target column.

--The percentage of the currenct eligiblity 
 SELECT 
    COUNT(*) AS total_count,
    COUNT(CASE WHEN target = 0 THEN 1 END) AS count_0,
    COUNT(CASE WHEN target = 1 THEN 1 END) AS count_1,
    (COUNT(CASE WHEN target = 0 THEN 1 END) * 100.0 / COUNT(*)) AS percentage_0,
    (COUNT(CASE WHEN target = 1 THEN 1 END) * 100.0 / COUNT(*)) AS percentage_1
FROM Card_eligibility.dbo.carddataset;

-- Exer 1
-- Use an appropriate `SELECT` statement to retrieve a list of unique card types from the `bank` database. (Hint: Use DISTINCT function here.)

SELECT DISTINCT type FROM bank.card; 

-- Exer 2
-- Get a list of all the district names in the bank database. Suggestion is to use the 
-- `files_for_activities/case_study_extended` here to work out which column is required 
-- here because we are looking for the names of places, not just the IDs. 

select A2 as district_name from bank.district;

-- Exer 3
select A2 as district_name, A3 as region_name from bank.district
order by A3
limit 30;

-- Exer 4
select A2 as district_name, A3 as region_name
from bank.district
limit 30;

-- 5
select 
	type as card_type, 
    DATE_FORMAT(str_TO_DATE(issued, '%y%m%d'), '') as issue_date
FROM bank.card;


-- 1. Select districts and salaries (from the `district` table) where salary is greater than 10000. 
-- Return columns as `district_name` and `average_salary`.
ALTER TABLE bank.district
CHANGE COLUMN name A2 VARCHAR(255);

select 
	A2 as district_name, 
    A11 as average_salary 
from bank.district as bk
where bk.A11 > 10000;

-- 2. Select those loans whose contract finished and were not paid. 
-- **Hint**: You should be looking at the `loan` column and you will need the extended 
-- case study information to tell you which value of status is required.

select loan_id
	from bank.loan 
    where status='B';
    
-- 3. Select cards of type `junior`. Return just first 10 in your query.
SELECT card_id, type
FROM bank.card
WHERE type = 'junior'
LIMIT 10;

-- 4. Select those loans whose contract finished and not paid back. 
-- Return the debt value from the status you identified in the last activity, together with loan id and account id.
SELECT loan_id, account_id, (amount-payments) AS debt_amount
FROM bank.loan
WHERE status= 'B';


-- 5. Calculate the urban population for all districts. 
-- Hint: You are looking for the number of inhabitants and the % of urban inhabitants in each district. 
-- Return columns as district_name and urban_population.

SELECT A2 AS district_name, 
       A4 AS total_population, 
       FORMAT(A4 * A10 / 100, 2) AS urban_population
FROM bank.district;


-- 6. On the previous query result - rerun it but filtering out districts where the rural population is greater than 50%.

SELECT A2 AS district_name, 
       A4 AS total_population, 
       FORMAT(A4 * A10 / 100, 2) AS urban_population
FROM bank.district
WHERE A10 > 50;
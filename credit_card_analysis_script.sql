/* Created Database */
CREATE DATABASE credit_card_database;

use credit_card_database;

SET sql_safe_updates=0;

UPDATE credit_card_details
SET Week_Start_Date = STR_TO_DATE(Week_Start_Date,'%d-%m-%Y');

/* Altered the column names & change the Datatype for "credit_card_details table */
ALTER TABLE credit_card_details
MODIFY COLUMN Week_Start_Date DATE;

ALTER TABLE credit_card_details
CHANGE COLUMN ï»¿Client_Num Client_Num INT;

ALTER TABLE credit_card_details 
CHANGE COLUMN Card_Category Card_Category VARCHAR(20),
CHANGE COLUMN Week_Num Week_Num VARCHAR(20),
CHANGE COLUMN Qtr Qtr VARCHAR(10),
CHANGE COLUMN Credit_Limit Credit_Limit DECIMAL(10,2),
CHANGE COLUMN Avg_Utilization_Ratio Avg_Utilization_Ratio DECIMAL(10,3),
CHANGE COLUMN `Use Chip` Use_Chip VARCHAR(10),
CHANGE COLUMN `Exp Type` Exp_Type VARCHAR(50),
CHANGE COLUMN Interest_Earned Interest_Earned DECIMAL(10,3),
CHANGE COLUMN Delinquent_Acc Delinquent_Acc VARCHAR(5);

/* Altered the column names & change the Datatype  for " customer_details" table*/
ALTER TABLE customer_details
CHANGE COLUMN ï»¿Client_Num Client_Num INT,
CHANGE COLUMN Gender Gender VARCHAR(5),
CHANGE COLUMN Education_Level Education_Level VARCHAR(50),
CHANGE COLUMN Marital_Status Marital_Status VARCHAR(20),
CHANGE COLUMN state_cd state_cd VARCHAR(50),
CHANGE COLUMN Zipcode Zipcode VARCHAR(20),
CHANGE COLUMN Car_Owner Car_Owner VARCHAR(5),
CHANGE COLUMN House_Owner House_Owner VARCHAR(5),
CHANGE COLUMN Personal_loan Personal_loan VARCHAR(5),
CHANGE COLUMN contact contact VARCHAR(50);

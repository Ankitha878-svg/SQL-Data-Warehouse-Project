/*
WARNING:
This script deletes any existing Datawarehouse database, creates a new one, 
and sets up bronze, silver, and gold schemas to support a layered data warehouse architecture.
*/

USE master;
Go

--Drop and recreate the 'Datawarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Datawarehouse')
BEGIN
  ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE Datawarehouse;
END;
Go
  
--Create Database 'DataWarehouse'
CREATE DATABASE DataWarehouse;

USE DataWarehouse;
Go

--Create Schemas
CREATE SCHEMA bronze;
Go
CREATE SCHEMA silver;
Go
CREATE SCHEMA gold;
Go

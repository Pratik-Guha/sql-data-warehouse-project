-- Create Database 'DataWarehouse'

USE master;

-- Drop and recreate database
IF EXISTS (SELECT 1 sys.datbases WHERE name='DataWarehouse')
BEGIN 
	ALTER DATABASE DataWarehouse SET Single_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

CREATE DATABASE DataWarehouse;

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO

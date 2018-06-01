GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE BulkInsertAbilitati
AS
BEGIN
	BULK INSERT Abilitati
	From 'C:\abilitati.csv'
-- copiaza hr_db\csv\abilitati.csv in C:\
	WITH  
	(   FIELDTERMINATOR =',',
		ROWTERMINATOR ='\n' 
	);  
END
GO

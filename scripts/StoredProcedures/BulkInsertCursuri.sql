SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE BulkInsertCurs
	@CsvFile varchar(255)
AS
BEGIN
-- cursuri.csv din hr_db\csv\ trebuie mutat in C:\
	BULK INSERT Curs 
	FROM 'C:\cursuri.csv'
	WITH  
	(   FIELDTERMINATOR =',',
		ROWTERMINATOR ='\n' 
	);  
END
GO

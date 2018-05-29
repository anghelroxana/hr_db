SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE InsertAngajatNou 
	@Nume varchar(100), 
	@Prenume varchar(200),
	@Gen char(10),
	@DataNasterii date,
	@DataInceperiiContract date = GetDate, -- default data curenta
	@Adresa varchar(200),
	@IdManager int,
	@IdDepartament int,
	@CodFunctie varchar(10)
AS
BEGIN
	BEGIN TRANSACTION;
		BEGIN TRY
			-- creeaza un angajat
			INSERT INTO Angajati
           ([Nume]
           ,[Prenume]
           ,[Gen]
           ,[DataNasterii]
           ,[DataIncepereContract]
           ,[Adresa]
           ,[IdManager]
           ,[Activ])
			 VALUES
				   (@Nume
				   ,@Prenume
				   ,@Gen
				   ,@DataNasterii
				   ,@DataInceperiiContract
				   ,@Adresa
				   ,@IdManager
				   ,1)
			INSERT INTO FunctieAngajat
			 ([IdAngajat]
			, [DataInceperii]
			, [CodFunctie]
			, [IdDepartament])
				VALUES
					(@@Identity
					, @DataInceperiiContract
					, @CodFunctie
					, @IdDepartament)
			-- adauga-l intr-o functie
		END TRY
		BEGIN CATCH
			-- daca exista erori, facem rollback
			SELECT
			     ERROR_NUMBER() AS ErrorNumber
				,ERROR_SEVERITY() AS ErrorSeverity
				,ERROR_STATE() AS ErrorState
				,ERROR_PROCEDURE() AS ErrorProcedure
				,ERROR_LINE() AS ErrorLine
				,ERROR_MESSAGE() AS ErrorMessage;

			IF @@TRANCOUNT > 0
				ROLLBACK TRANSACTION;
		END CATCH

		-- daca nu exista erori comitem transactia
		IF @@TRANCOUNT > 0
		COMMIT TRANSACTION;

END
GO

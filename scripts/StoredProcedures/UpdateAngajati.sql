SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE UpdateAngajat
	@Nume varchar(50),
	@Prenume varchar(100),
	@Activ bit,
	@Adresa varchar(200),
	@IdManager int,
	@Id int
AS
BEGIN
	UPDATE Angajati
	SET Nume = @Nume,
		Prenume = @Prenume,
		Activ = @Activ,
		Adresa = @Adresa,
		IdManager = @IdManager
	FROM Angajati
	WHERE ID = @Id;
END
GO

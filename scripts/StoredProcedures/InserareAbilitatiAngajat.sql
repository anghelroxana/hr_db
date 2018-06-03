SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE InsertAbilitatiAngajat
	@IdAngajat int,
	@IdAbilitate int
AS
BEGIN
	INSERT INTO AbilitatiAngajat ([Id_Angajat], [Id_Abilitate]) VALUES (@IdAngajat, @IdAbilitate);
END
GO

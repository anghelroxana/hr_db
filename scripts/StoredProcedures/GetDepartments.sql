USE [HR]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[GetDepartments] 
AS
BEGIN
	SELECT D.Nume, D.Adresa, D.Detalii, LC.Name FROM Departamente D
	JOIN LocatiiBirouri LC on D.IdLocatie = LC.Id;
END

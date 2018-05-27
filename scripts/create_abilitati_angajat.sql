USE [HR]
GO

/****** Object:  Table [dbo].[AbilitatiAngajat]    Script Date: 5/27/2018 11:24:32 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AbilitatiAngajat](
	[Id_Angajat] [int] NOT NULL,
	[Id_Abilitate] [int] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[AbilitatiAngajat]  WITH CHECK ADD  CONSTRAINT [FK_AbilitatiAngajat_Abilitati] FOREIGN KEY([Id_Abilitate])
REFERENCES [dbo].[Abilitati] ([ID])
GO

ALTER TABLE [dbo].[AbilitatiAngajat] CHECK CONSTRAINT [FK_AbilitatiAngajat_Abilitati]
GO

ALTER TABLE [dbo].[AbilitatiAngajat]  WITH CHECK ADD  CONSTRAINT [FK_AbilitatiAngajat_Angajati] FOREIGN KEY([Id_Angajat])
REFERENCES [dbo].[Angajati] ([ID])
GO

ALTER TABLE [dbo].[AbilitatiAngajat] CHECK CONSTRAINT [FK_AbilitatiAngajat_Angajati]
GO


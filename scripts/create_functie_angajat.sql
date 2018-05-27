USE [HR]
GO

/****** Object:  Table [dbo].[FunctieAngajat]    Script Date: 5/27/2018 11:25:09 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FunctieAngajat](
	[Id_Angajat] [int] NOT NULL,
	[DataInceperii] [date] NOT NULL,
	[Cod_Functie] [varchar](10) NOT NULL,
	[Id_Departament] [int] NOT NULL,
	[Id_Manager] [int] NOT NULL,
	[DataIncetarii] [date] NULL,
 CONSTRAINT [PK_FunctieAngajat] PRIMARY KEY CLUSTERED 
(
	[Id_Angajat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FunctieAngajat]  WITH CHECK ADD  CONSTRAINT [FK_FunctieAngajat_Angajati] FOREIGN KEY([Id_Angajat])
REFERENCES [dbo].[Angajati] ([ID])
GO

ALTER TABLE [dbo].[FunctieAngajat] CHECK CONSTRAINT [FK_FunctieAngajat_Angajati]
GO

ALTER TABLE [dbo].[FunctieAngajat]  WITH CHECK ADD  CONSTRAINT [FK_FunctieAngajat_Angajati1] FOREIGN KEY([Id_Manager])
REFERENCES [dbo].[Angajati] ([ID])
GO

ALTER TABLE [dbo].[FunctieAngajat] CHECK CONSTRAINT [FK_FunctieAngajat_Angajati1]
GO

ALTER TABLE [dbo].[FunctieAngajat]  WITH CHECK ADD  CONSTRAINT [FK_FunctieAngajat_Departamente] FOREIGN KEY([Id_Departament])
REFERENCES [dbo].[Departamente] ([Id])
GO

ALTER TABLE [dbo].[FunctieAngajat] CHECK CONSTRAINT [FK_FunctieAngajat_Departamente]
GO

ALTER TABLE [dbo].[FunctieAngajat]  WITH CHECK ADD  CONSTRAINT [FK_FunctieAngajat_Functii] FOREIGN KEY([Cod_Functie])
REFERENCES [dbo].[Functii] ([Cod])
GO

ALTER TABLE [dbo].[FunctieAngajat] CHECK CONSTRAINT [FK_FunctieAngajat_Functii]
GO


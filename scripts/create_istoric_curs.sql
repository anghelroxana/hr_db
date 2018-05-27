USE [HR]
GO

/****** Object:  Table [dbo].[IstoricCurs]    Script Date: 5/27/2018 11:25:21 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[IstoricCurs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdAngajat] [int] NOT NULL,
	[DataCursului] [date] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[IstoricCurs]  WITH CHECK ADD  CONSTRAINT [FK_IstoricCurs_Angajati] FOREIGN KEY([IdAngajat])
REFERENCES [dbo].[Angajati] ([ID])
GO

ALTER TABLE [dbo].[IstoricCurs] CHECK CONSTRAINT [FK_IstoricCurs_Angajati]
GO

ALTER TABLE [dbo].[IstoricCurs]  WITH CHECK ADD  CONSTRAINT [FK_IstoricCurs_Curs] FOREIGN KEY([Id])
REFERENCES [dbo].[Curs] ([Id])
GO

ALTER TABLE [dbo].[IstoricCurs] CHECK CONSTRAINT [FK_IstoricCurs_Curs]
GO


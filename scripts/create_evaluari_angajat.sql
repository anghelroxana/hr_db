USE [HR]
GO

/****** Object:  Table [dbo].[EvaluariAngajat]    Script Date: 5/27/2018 11:24:58 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EvaluariAngajat](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Angajat] [int] NOT NULL,
	[DataEvaluarii] [date] NOT NULL,
	[ComentariuManager] [varchar](200) NULL,
	[ComentariuAngajat] [varchar](200) NULL,
 CONSTRAINT [PK_EvaluariAngajat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[EvaluariAngajat]  WITH CHECK ADD  CONSTRAINT [FK_EvaluariAngajat_EvaluariAngajat] FOREIGN KEY([Id_Angajat])
REFERENCES [dbo].[Angajati] ([ID])
GO

ALTER TABLE [dbo].[EvaluariAngajat] CHECK CONSTRAINT [FK_EvaluariAngajat_EvaluariAngajat]
GO


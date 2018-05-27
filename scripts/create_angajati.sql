USE [HR]
GO

/****** Object:  Table [dbo].[Angajati]    Script Date: 5/27/2018 11:24:11 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Angajati](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nume] [varchar](100) NOT NULL,
	[Prenume] [varchar](200) NOT NULL,
	[Gen] [char](10) NOT NULL,
	[DataNasterii] [date] NULL,
	[DataIncepereContract] [date] NOT NULL,
	[Adresa] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Angajati] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


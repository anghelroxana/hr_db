USE [HR]
GO

/****** Object:  Table [dbo].[Functii]    Script Date: 5/27/2018 11:25:45 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Functii](
	[Cod] [varchar](10) NOT NULL,
	[Titlu] [varchar](50) NOT NULL,
	[Descriere] [varchar](200) NULL,
	[Slariu_minim] [float] NOT NULL,
	[Salariu_maxim] [float] NOT NULL,
 CONSTRAINT [PK_Functii] PRIMARY KEY CLUSTERED 
(
	[Cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


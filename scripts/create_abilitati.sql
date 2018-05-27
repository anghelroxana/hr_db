USE [HR]
GO

/****** Object:  Table [dbo].[Abilitati]    Script Date: 5/27/2018 11:24:21 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Abilitati](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nume] [varchar](50) NOT NULL,
	[Descriere] [varchar](50) NULL,
 CONSTRAINT [PK_Abilitati] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


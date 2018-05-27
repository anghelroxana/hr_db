USE [HR]
GO

/****** Object:  Table [dbo].[Departamente]    Script Date: 5/27/2018 11:23:28 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Departamente](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[location_id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[address] [varchar](200) NULL,
	[details] [varchar](200) NULL,
 CONSTRAINT [PK_Departamente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Departamente]  WITH CHECK ADD  CONSTRAINT [FK_Departamente_LocatiiBirouri] FOREIGN KEY([location_id])
REFERENCES [dbo].[LocatiiBirouri] ([Id])
GO

ALTER TABLE [dbo].[Departamente] CHECK CONSTRAINT [FK_Departamente_LocatiiBirouri]
GO


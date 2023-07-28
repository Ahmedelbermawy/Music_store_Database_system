USE [D:\Music_Store]
GO

/****** Object:  Table [dbo].[musician]    Script Date: 6/9/2023 10:04:42 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[musician](
	[id] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[st] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[phone] [int] NULL,
 CONSTRAINT [PK_musician] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



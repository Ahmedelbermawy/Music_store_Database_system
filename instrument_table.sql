USE [D:\Music_Store]
GO

/****** Object:  Table [dbo].[instrument]    Script Date: 6/9/2023 9:56:57 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[instrument](
	[name] [varchar](50) NOT NULL,
	[key] [varchar](50) NULL,
 CONSTRAINT [PK_instrument] PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



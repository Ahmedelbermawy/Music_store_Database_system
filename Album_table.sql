USE [D:\Music_Store]
GO

/****** Object:  Table [dbo].[album]    Script Date: 6/9/2023 9:52:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[album](
	[album_id] [int] NOT NULL,
	[date] [date] NULL,
	[title] [varchar](50) NULL,
	[id] [int] NULL,
 CONSTRAINT [PK_album] PRIMARY KEY CLUSTERED 
(
	[album_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[album]  WITH CHECK ADD  CONSTRAINT [FK_album_musician] FOREIGN KEY([id])
REFERENCES [dbo].[musician] ([id])
GO

ALTER TABLE [dbo].[album] CHECK CONSTRAINT [FK_album_musician]
GO



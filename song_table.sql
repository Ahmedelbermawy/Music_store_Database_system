USE [D:\Music_Store]
GO

/****** Object:  Table [dbo].[song]    Script Date: 6/9/2023 10:05:25 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[song](
	[title] [varchar](50) NOT NULL,
	[author] [varchar](50) NULL,
	[album_id] [int] NULL,
 CONSTRAINT [PK_song] PRIMARY KEY CLUSTERED 
(
	[title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[song]  WITH CHECK ADD  CONSTRAINT [FK_song_album2] FOREIGN KEY([album_id])
REFERENCES [dbo].[album] ([album_id])
GO

ALTER TABLE [dbo].[song] CHECK CONSTRAINT [FK_song_album2]
GO



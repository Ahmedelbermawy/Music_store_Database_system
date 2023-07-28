USE [D:\Music_Store]
GO

/****** Object:  Table [dbo].[music_song]    Script Date: 6/9/2023 10:03:43 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[music_song](
	[id] [int] NOT NULL,
	[title] [varchar](50) NOT NULL,
 CONSTRAINT [PK_music_song] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[music_song]  WITH CHECK ADD  CONSTRAINT [FK_music_song_musician] FOREIGN KEY([id])
REFERENCES [dbo].[musician] ([id])
GO

ALTER TABLE [dbo].[music_song] CHECK CONSTRAINT [FK_music_song_musician]
GO

ALTER TABLE [dbo].[music_song]  WITH CHECK ADD  CONSTRAINT [FK_music_song_song] FOREIGN KEY([title])
REFERENCES [dbo].[song] ([title])
GO

ALTER TABLE [dbo].[music_song] CHECK CONSTRAINT [FK_music_song_song]
GO



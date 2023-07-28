USE [D:\Music_Store]
GO

/****** Object:  Table [dbo].[music_instr]    Script Date: 6/9/2023 10:02:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[music_instr](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_music_instr] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[music_instr]  WITH CHECK ADD  CONSTRAINT [FK_music_instr_instrument] FOREIGN KEY([name])
REFERENCES [dbo].[instrument] ([name])
GO

ALTER TABLE [dbo].[music_instr] CHECK CONSTRAINT [FK_music_instr_instrument]
GO

ALTER TABLE [dbo].[music_instr]  WITH CHECK ADD  CONSTRAINT [FK_music_instr_musician] FOREIGN KEY([id])
REFERENCES [dbo].[musician] ([id])
GO

ALTER TABLE [dbo].[music_instr] CHECK CONSTRAINT [FK_music_instr_musician]
GO

ALTER TABLE [dbo].[music_instr]  WITH CHECK ADD  CONSTRAINT [FK_music_instr_musician1] FOREIGN KEY([id])
REFERENCES [dbo].[musician] ([id])
GO

ALTER TABLE [dbo].[music_instr] CHECK CONSTRAINT [FK_music_instr_musician1]
GO



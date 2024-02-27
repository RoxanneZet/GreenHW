USE [todo_list_db]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Stages](
	[id_stage] [int] NOT NULL,
	[id_workplace] [int] NOT NULL,
	[name_stage] [nchar](30) NOT NULL,
 CONSTRAINT [PK_Stages] PRIMARY KEY CLUSTERED 
(
	[id_stage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Stages]  WITH CHECK ADD  CONSTRAINT [FK_Stages_WorkPlaces] FOREIGN KEY([id_workplace])
REFERENCES [dbo].[WorkPlaces] ([id_workplace])
GO

ALTER TABLE [dbo].[Stages] CHECK CONSTRAINT [FK_Stages_WorkPlaces]
GO



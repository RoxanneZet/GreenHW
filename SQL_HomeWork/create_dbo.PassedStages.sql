USE [todo_list_db]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PassedStages](
	[id_passedStage] [int] NOT NULL,
	[id_task] [int] NOT NULL,
	[id_stage] [int] NOT NULL,
	[data_pass] [datetime] NOT NULL,
 CONSTRAINT [PK_PassedStages] PRIMARY KEY CLUSTERED 
(
	[id_passedStage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PassedStages]  WITH CHECK ADD  CONSTRAINT [FK_PassedStages_Stages] FOREIGN KEY([id_stage])
REFERENCES [dbo].[Stages] ([id_stage])
GO

ALTER TABLE [dbo].[PassedStages] CHECK CONSTRAINT [FK_PassedStages_Stages]
GO

ALTER TABLE [dbo].[PassedStages]  WITH CHECK ADD  CONSTRAINT [FK_PassedStages_Tasks] FOREIGN KEY([id_task])
REFERENCES [dbo].[Tasks] ([id_task])
GO

ALTER TABLE [dbo].[PassedStages] CHECK CONSTRAINT [FK_PassedStages_Tasks]
GO



USE [todo_list_db]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[WorkGroup](
	[id_workGroup] [int] NOT NULL,
	[id_user] [int] NOT NULL,
	[id_workplace] [int] NOT NULL,
 CONSTRAINT [PK_WorkGroup] PRIMARY KEY CLUSTERED 
(
	[id_workGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[WorkGroup]  WITH CHECK ADD  CONSTRAINT [FK_WorkGroup_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id_user])
GO

ALTER TABLE [dbo].[WorkGroup] CHECK CONSTRAINT [FK_WorkGroup_Users]
GO

ALTER TABLE [dbo].[WorkGroup]  WITH CHECK ADD  CONSTRAINT [FK_WorkGroup_WorkPlaces] FOREIGN KEY([id_workplace])
REFERENCES [dbo].[WorkPlaces] ([id_workplace])
GO

ALTER TABLE [dbo].[WorkGroup] CHECK CONSTRAINT [FK_WorkGroup_WorkPlaces]
GO



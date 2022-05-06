USE [CPSC_6576_Student_Academic_Details]
GO

/****** Object:  Table [dbo].[Marks_Info]    Script Date: 3/29/2022 1:20:19 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Marks_Info](
	[Course_Code] [int] NOT NULL,
	[Student_ID] [nvarchar](10) NOT NULL,
	[Marks] [int] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Marks_Info]  WITH CHECK ADD  CONSTRAINT [FK_Marks_Info_Course_Info] FOREIGN KEY([Course_Code])
REFERENCES [dbo].[Course_Info] ([Course_Code])
GO

ALTER TABLE [dbo].[Marks_Info] CHECK CONSTRAINT [FK_Marks_Info_Course_Info]
GO

ALTER TABLE [dbo].[Marks_Info]  WITH CHECK ADD  CONSTRAINT [FK_Marks_Info_Student_Info] FOREIGN KEY([Student_ID])
REFERENCES [dbo].[Student_Info] ([Student_ID])
GO

ALTER TABLE [dbo].[Marks_Info] CHECK CONSTRAINT [FK_Marks_Info_Student_Info]
GO

ALTER TABLE [dbo].[Marks_Info]  WITH CHECK ADD  CONSTRAINT [Marks] CHECK  (([Marks]>(0)))
GO

ALTER TABLE [dbo].[Marks_Info] CHECK CONSTRAINT [Marks]
GO



USE [CPSC_6576_Student_Academic_Details]
GO

ALTER TABLE [dbo].[Marks_Info]  WITH CHECK ADD  CONSTRAINT [Marks] CHECK  (([Marks]>(0)))
GO

ALTER TABLE [dbo].[Marks_Info] CHECK CONSTRAINT [Marks]
GO



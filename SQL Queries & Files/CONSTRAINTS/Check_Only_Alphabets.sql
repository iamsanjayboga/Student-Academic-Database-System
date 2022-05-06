USE [CPSC_6576_Student_Academic_Details]
GO

ALTER TABLE [dbo].[Course_Info]  WITH CHECK ADD  CONSTRAINT [Check_Only_Alphabets] CHECK  ((NOT [Course_Name] like '%[^A-Z ]%'))
GO

ALTER TABLE [dbo].[Course_Info] CHECK CONSTRAINT [Check_Only_Alphabets]
GO



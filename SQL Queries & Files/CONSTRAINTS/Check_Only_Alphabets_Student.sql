USE [CPSC_6576_Student_Academic_Details]
GO

ALTER TABLE [dbo].[Student_Info]  WITH CHECK ADD  CONSTRAINT [Check_Only_Alphabets_Student] CHECK  ((NOT [Student_Name] like '%[^A-Z ]%'))
GO

ALTER TABLE [dbo].[Student_Info] CHECK CONSTRAINT [Check_Only_Alphabets_Student]
GO



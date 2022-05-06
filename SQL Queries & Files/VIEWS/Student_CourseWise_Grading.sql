USE [CPSC_6576_Student_Academic_Details]
GO

/****** Object:  View [dbo].[Student_CourseWise_Grading]    Script Date: 3/29/2022 1:28:48 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Student_CourseWise_Grading] AS(
select *, case when [Percentage%]>90 then 'A' when [Percentage%]>85 then 'B+' when [Percentage%]>75 then 'B-' else 'C' end Grade from (
Select stu.Student_ID,stu.Student_Name,c.Course_Code,c.Course_Name,marks.Marks,(marks.Marks*100)/50 'Percentage%' from 
Student_Info stu
join
Marks_Info marks
on 
stu.Student_ID = marks.Student_ID
join
Course_Info c
on
marks.Course_Code = c.Course_Code) A)
GO



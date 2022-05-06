USE [CPSC_6576_Student_Academic_Details]
GO

/****** Object:  UserDefinedFunction [dbo].[Search_StudentDetailsFunction]    Script Date: 3/29/2022 1:34:42 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[Search_StudentDetailsFunction] (
	@Student_ID NVARCHAR(10)
)
RETURNS TABLE AS
RETURN
	SELECT s.Student_ID,s.Student_Name,d.Department_Name,m.Course_Code,c.Course_Name,m.Marks,c.Instructor 
	FROM 
	Student_Info s
	JOIN
	Department d
	ON
	s.Department_No = d.Department_No
	JOIN
	Marks_Info m
	ON
	m.Student_ID=s.Student_ID
	JOIN
	Course_Info c 
	ON
	c.Course_Code = m.Course_Code
	where s.Student_ID = @Student_ID
GO



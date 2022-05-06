USE [CPSC_6576_Student_Academic_Details]
GO

/****** Object:  UserDefinedFunction [dbo].[Get_StudentDetailsWithPercentage_Function]    Script Date: 3/29/2022 1:34:15 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[Get_StudentDetailsWithPercentage_Function] (
	
)
RETURNS TABLE AS
RETURN
	SELECT s.Student_ID,s.Student_Name,c.Course_Name,m.Marks, [dbo].[CalPercentage_Function](m.Marks,50) as Percentage
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
GO



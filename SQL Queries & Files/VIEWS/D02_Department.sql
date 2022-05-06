USE [CPSC_6576_Student_Academic_Details]
GO

/****** Object:  View [dbo].[D02_Department]    Script Date: 3/29/2022 1:27:34 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[D02_Department] AS (
select Student_ID,Student_Name,s.Department_No,Department_Name 
from 
Student_Info s
join
Department d 
on 
s.Department_No = d.Department_No
where d.Department_No='D02')
GO



USE [CPSC_6576_Student_Academic_Details]
GO

/****** Object:  Table [dbo].[Course_Info]    Script Date: 3/29/2022 1:19:26 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Course_Info](
	[Course_Code] [int] NOT NULL,
	[Course_Name] [nvarchar](50) NOT NULL,
	[Instructor] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Course_Info] PRIMARY KEY CLUSTERED 
(
	[Course_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Course_Info]  WITH CHECK ADD  CONSTRAINT [Check_Only_Alphabets] CHECK  ((NOT [Course_Name] like '%[^A-Z ]%'))
GO

ALTER TABLE [dbo].[Course_Info] CHECK CONSTRAINT [Check_Only_Alphabets]
GO



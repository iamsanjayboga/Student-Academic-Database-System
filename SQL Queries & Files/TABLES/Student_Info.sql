USE [CPSC_6576_Student_Academic_Details]
GO

/****** Object:  Table [dbo].[Student_Info]    Script Date: 3/29/2022 1:21:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Student_Info](
	[Student_ID] [nvarchar](10) NOT NULL,
	[Student_Name] [nvarchar](50) NOT NULL,
	[Department_No] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Student_Info] PRIMARY KEY CLUSTERED 
(
	[Student_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Student_Info]  WITH CHECK ADD  CONSTRAINT [FK_Student_Info_Department] FOREIGN KEY([Department_No])
REFERENCES [dbo].[Department] ([Department_No])
GO

ALTER TABLE [dbo].[Student_Info] CHECK CONSTRAINT [FK_Student_Info_Department]
GO

ALTER TABLE [dbo].[Student_Info]  WITH CHECK ADD  CONSTRAINT [Check_Only_Alphabets_Student] CHECK  ((NOT [Student_Name] like '%[^A-Z ]%'))
GO

ALTER TABLE [dbo].[Student_Info] CHECK CONSTRAINT [Check_Only_Alphabets_Student]
GO



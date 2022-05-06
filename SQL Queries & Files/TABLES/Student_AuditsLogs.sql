USE [CPSC_6576_Student_Academic_Details]
GO

/****** Object:  Table [dbo].[Student_AuditsLogs]    Script Date: 3/29/2022 1:20:57 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Student_AuditsLogs](
	[Change_ID] [int] IDENTITY(1,1) NOT NULL,
	[Student_ID] [int] NOT NULL,
	[Student_Name] [nvarchar](100) NOT NULL,
	[Department_No] [nvarchar](5) NOT NULL,
	[Updated_ON] [datetime] NOT NULL,
	[Operation] [char](3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Change_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Student_AuditsLogs]  WITH CHECK ADD CHECK  (([Operation]='INS' OR [Operation]='DEL'))
GO



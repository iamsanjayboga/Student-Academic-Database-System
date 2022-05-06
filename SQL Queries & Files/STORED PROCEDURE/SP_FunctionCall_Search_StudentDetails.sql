USE [CPSC_6576_Student_Academic_Details]
GO

/****** Object:  StoredProcedure [dbo].[SP_FunctionCall_Search_StudentDetails]    Script Date: 3/29/2022 1:30:11 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_FunctionCall_Search_StudentDetails] 
		@S_ID nvarchar(10) NULL
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * FROM [dbo].[Search_StudentDetailsFunction](@S_ID);
END
GO



USE [CPSC_6576_Student_Academic_Details]
GO

/****** Object:  StoredProcedure [dbo].[SP_StudentsMarksOperation]    Script Date: 3/29/2022 1:33:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_StudentsMarksOperation] 
	
	@ViewType nvarchar(10) NULL,
	@Student_ID nvarchar(10) NULL,
	@Course_Code int,
	@Marks int

AS
BEGIN
	
	SET NOCOUNT ON;

	IF @ViewType = 'INSERT'
	BEGIN

		INSERT INTO Marks_Info VALUES(@Course_Code,@Student_ID,@Marks);

	END

	ELSE IF @ViewType = 'UPDATE'
    BEGIN

		UPDATE Marks_Info
		SET
		Marks=@Marks
		WHERE Course_Code = @Course_Code 
		AND
		Student_ID = @Student_ID
		
	END

	ELSE IF @ViewType = 'DELETE'
    BEGIN

		DELETE FROM 
		Marks_Info
		WHERE Course_Code = @Course_Code 
		AND
		Student_ID = @Student_ID

	END



END
GO



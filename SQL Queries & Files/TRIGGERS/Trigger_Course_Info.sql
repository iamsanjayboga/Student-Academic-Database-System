USE [CPSC_6576_Student_Academic_Details]
GO

/****** Object:  Trigger [dbo].[Trigger_Course_Info]    Script Date: 3/29/2022 1:37:09 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Trigger_Course_Info]
ON [dbo].[Course_Info]
AFTER INSERT, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO [dbo].[Course_AuditsLogs](
        Course_Code,
		Course_Name,
		Instructor,
        Updated_ON, 
        Operation
    )
    SELECT
        i.Course_Code,
        Course_Name,
		Instructor,
        GETDATE(),
        'INS'
    FROM
        inserted i
    UNION ALL
    SELECT
        d.Course_Code,
        Course_Name,
		Instructor,
        GETDATE(),
        'DEL'
    FROM
        deleted d;
END
GO

ALTER TABLE [dbo].[Course_Info] ENABLE TRIGGER [Trigger_Course_Info]
GO



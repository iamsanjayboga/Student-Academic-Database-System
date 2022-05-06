USE [CPSC_6576_Student_Academic_Details]
GO

/****** Object:  Trigger [dbo].[Trigger_Student_Info]    Script Date: 3/29/2022 1:37:56 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Trigger_Student_Info]
ON [dbo].[Student_Info]
AFTER INSERT, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO [dbo].[Student_AuditsLogs](
        Student_ID,
		Student_Name,
		Department_No,
        Updated_ON, 
        Operation
    )
    SELECT
        i.Student_ID,
        Student_Name,
		Department_No,
        GETDATE(),
        'INS'
    FROM
        inserted i
    UNION ALL
    SELECT
        d.Student_ID,
        Student_Name,
		Department_No,
        GETDATE(),
        'DEL'
    FROM
        deleted d;
END
GO

ALTER TABLE [dbo].[Student_Info] ENABLE TRIGGER [Trigger_Student_Info]
GO



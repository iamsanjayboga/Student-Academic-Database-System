USE [CPSC_6576_Student_Academic_Details]
GO

/****** Object:  UserDefinedFunction [dbo].[CalPercentage_Function]    Script Date: 3/29/2022 1:35:09 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create FUNCTION [dbo].[CalPercentage_Function]
(           
       @MARKS int,
	   @TOTAL INT
)  
RETURNS int  
AS  
BEGIN  
        
       DECLARE @Result int  
       SELECT @Result = (@MARKS * 100) / @TOTAL;  
       
       RETURN @Result  
END 
GO



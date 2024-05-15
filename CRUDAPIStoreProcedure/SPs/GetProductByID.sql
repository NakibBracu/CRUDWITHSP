USE [SPCRUDAPI]
GO

/****** Object:  StoredProcedure [dbo].[GetProductByID]    Script Date: 5/15/2024 11:53:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE   PROCEDURE [dbo].[GetProductByID]
    @ProductId INT
AS
BEGIN
    select *
	from dbo.Product
	where ProductId = @ProductId
END
GO


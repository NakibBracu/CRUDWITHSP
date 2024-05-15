USE [SPCRUDAPI]
GO

/****** Object:  StoredProcedure [dbo].[DeleteProductByID]    Script Date: 5/15/2024 11:52:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE   PROCEDURE [dbo].[DeleteProductByID]
    @ProductId INT
AS
BEGIN
    Delete from dbo.Product
	where ProductId = @ProductId
END
GO


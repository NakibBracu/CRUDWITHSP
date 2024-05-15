USE [SPCRUDAPI]
GO

/****** Object:  StoredProcedure [dbo].[UpdateProduct]    Script Date: 5/15/2024 11:53:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE   PROCEDURE [dbo].[UpdateProduct]
    @ProductId INT,
	@ProductName [nvarchar](max),
	@ProductDescription [nvarchar](max),
	@ProductPrice int,
	@ProductStock int
AS
BEGIN
    Update dbo.Product
	set 
	ProductName = @ProductName,
	ProductDescription = @ProductDescription,
	ProductPrice = @ProductPrice,
	ProductStock = @ProductStock
	where ProductId = @ProductId
END
GO


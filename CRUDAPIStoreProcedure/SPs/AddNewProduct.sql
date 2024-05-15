USE [SPCRUDAPI]
GO

/****** Object:  StoredProcedure [dbo].[AddNewProduct]    Script Date: 5/15/2024 11:52:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE   PROCEDURE [dbo].[AddNewProduct]
    @ProductName NVARCHAR(MAX),
    @ProductDescription NVARCHAR(MAX),
    @ProductPrice INT,
    @ProductStock INT
AS
BEGIN
    INSERT INTO dbo.Product (ProductName, ProductDescription, ProductPrice, ProductStock)
    VALUES (@ProductName, @ProductDescription, @ProductPrice, @ProductStock);
END
GO


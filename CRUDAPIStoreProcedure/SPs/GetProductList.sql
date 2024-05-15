USE [SPCRUDAPI]
GO

/****** Object:  StoredProcedure [dbo].[GetProductList]    Script Date: 5/15/2024 11:53:30 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE   PROCEDURE [dbo].[GetProductList]
AS
BEGIN
    select * from dbo.Product
END
GO


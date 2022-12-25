CREATE PROCEDURE [dbo].[spBasketballCourt_Delete]
    @Id INT, 
    @Name NVARCHAR(50), 
    @QRCode NVARCHAR(255)
AS
BEGIN
    DELETE
    FROM dbo.[tblBasketballCourt]
    WHERE Id = @Id
END

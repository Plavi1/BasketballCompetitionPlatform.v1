CREATE PROCEDURE [dbo].[spBasketballCourt_Update]
    @Id INT, 
    @Name NVARCHAR(50), 
    @QRCode NVARCHAR(255)
AS
BEGIN
    UPDATE dbo.[tblBasketballCourt]
    SET Id = @Id, Name = @Name, QRCode = @QRCode
    WHERE Id = @Id
END

CREATE PROCEDURE [dbo].[spBasketballCourt_Insert]
    @Id INT, 
    @Name NVARCHAR(50), 
    @QRCode NVARCHAR(255)
AS
BEGIN
    INSERT INTO dbo.[tblBasketballCourt] (Id, Name, QRCode)
    VALUES (@Id, @Name, @QRCode)
END
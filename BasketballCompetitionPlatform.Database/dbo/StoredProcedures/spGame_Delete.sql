CREATE PROCEDURE [dbo].[spGame_Delete]
	@Id INT
AS
BEGIN
	DELETE 
	FROM dbo.[tblGame]
	WHERE Id = @Id;
END

CREATE PROCEDURE [dbo].[spGame_Get]
	@Id INT
AS
BEGIN
	SELECT *
	FROM dbo.[tblGame]
	WHERE Id = @Id;
END

CREATE PROCEDURE [dbo].[spBasketballCourt_Get]
	@Id INT
AS
BEGIN
	SELECT * 
	FROM dbo.[tblBasketballCourt]
	WHERE Id = @Id;
END
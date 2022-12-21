CREATE PROCEDURE [dbo].[spEvent_Delete]
	@Id INT
AS
BEGIN
	DELETE 
	FROM dbo.[tblEvent]
	WHERE Id = @Id;
END

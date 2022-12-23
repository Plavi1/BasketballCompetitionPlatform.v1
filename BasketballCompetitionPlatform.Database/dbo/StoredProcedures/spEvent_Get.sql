CREATE PROCEDURE [dbo].[spEvent_Get]
	@Id int
AS
BEGIN
	SELECT * 
	FROM dbo.[tblEvent]
	WHERE Id = @Id;
END

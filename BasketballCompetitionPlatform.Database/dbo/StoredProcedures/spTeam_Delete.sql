CREATE PROCEDURE [dbo].[spTeam_Delete]
	@Id int
AS
BEGIN
	DELETE 
	FROM dbo.[tblTeam]
	WHERE Id = @Id;
END


CREATE PROCEDURE [dbo].[spTeam_Get]
	@Id int
AS
BEGIN
	SELECT *
	FROM dbo.[tblTeam]
	WHERE Id = @Id;
END

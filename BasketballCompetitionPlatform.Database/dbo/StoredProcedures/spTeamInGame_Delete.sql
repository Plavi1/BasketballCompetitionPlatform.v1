CREATE PROCEDURE [dbo].[spTeamInGame_Delete]
	@GameId INT, 
    @TeamId INT
AS
BEGIN
	DELETE 
	FROM dbo.[tblTeamInGame] 
	WHERE GameId = @GameId AND TeamId = @TeamId
END

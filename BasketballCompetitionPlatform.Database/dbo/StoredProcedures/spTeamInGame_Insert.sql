CREATE PROCEDURE [dbo].[spTeamInGame_Insert]
	@GameId INT, 
    @TeamId INT
AS
BEGIN
	INSERT INTO dbo.[tblTeamInGame] (GameId, TeamId)
	VALUES (@GameId, @TeamId)
END

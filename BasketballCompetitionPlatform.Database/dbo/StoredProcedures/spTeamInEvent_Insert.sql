CREATE PROCEDURE [dbo].[spTeamInEvent_Insert]
	@EventId INT,
    @TeamId INT
AS
BEGIN
	INSERT INTO dbo.[tblTeamInEvent] (EventId, TeamId)
	VALUES (@EventId,@TeamId);
END

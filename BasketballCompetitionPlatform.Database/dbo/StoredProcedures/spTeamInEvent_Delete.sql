CREATE PROCEDURE [dbo].[spTeamInEvent_Delete]
	@EventId INT,
    @TeamId INT
AS
BEGIN
	DELETE
	FROM dbo.[tblTeamInEvent]
	WHERE EventId = @EventId AND TeamId = @TeamId;
END

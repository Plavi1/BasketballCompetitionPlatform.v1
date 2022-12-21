CREATE PROCEDURE [dbo].[spVote_GetAll_TeamIdSended]
	@Sender_TeamId INT
AS
BEGIN
	SELECT * 
	FROM dbo.[tblVote]
	WHERE Sender_TeamId = @Sender_TeamId
END

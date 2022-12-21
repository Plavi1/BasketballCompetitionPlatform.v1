CREATE PROCEDURE [dbo].[spVote_GetAll_TeamIdReceived]
	@Receiver_TeamId INT
AS
BEGIN
	SELECT * 
	FROM dbo.[tblVote]
	WHERE Receiver_TeamId = @Receiver_TeamId;
END

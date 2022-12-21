CREATE PROCEDURE [dbo].[spVote_Delete]
	@Sender_TeamId INT, 
    @Receiver_TeamId INT,
    @GameId INT
AS
BEGIN
	DELETE 
	FROM dbo.tblVote
	WHERE Sender_TeamId = @Sender_TeamId AND Receiver_TeamId = @Receiver_TeamId AND GameId = @GameId;
END

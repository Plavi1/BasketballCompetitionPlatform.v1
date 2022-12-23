CREATE PROCEDURE [dbo].[spVote_Update]
	@Sender_TeamId INT, 
    @Receiver_TeamId INT, 
    @Points INT, 
    @GameId INT
AS
BEGIN
    UPDATE dbo.[tblVote]
    SET Sender_TeamId = @Sender_TeamId, Receiver_TeamId = @Receiver_TeamId, Points = @Points, GameId = @GameId
    WHERE Sender_TeamId = @Sender_TeamId AND Receiver_TeamId = @Receiver_TeamId AND GameId = @GameId;
END

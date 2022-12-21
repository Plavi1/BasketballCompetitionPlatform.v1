CREATE PROCEDURE [dbo].[spVote_Insert]
	@Sender_TeamId INT, 
    @Receiver_TeamId INT, 
    @Points INT, 
    @GameId INT
AS
BEGIN
    INSERT INTO dbo.[tblVote] (Sender_TeamId, Receiver_TeamId, Points, GameId)
    VALUES (@Sender_TeamId, @Receiver_TeamId, @Points, @GameId);
END
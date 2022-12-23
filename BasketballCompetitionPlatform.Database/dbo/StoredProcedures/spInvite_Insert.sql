CREATE PROCEDURE [dbo].[spInvite_Insert]
	@Sender_TeamId INT, 
    @Receiver_TeamId INT, 
    @AgreementRoomId INT
AS
BEGIN
    INSERT INTO dbo.tblInvite (Sender_TeamId, Receiver_TeamId, AgreementRoomId)
    VALUES (@Sender_TeamId, @Receiver_TeamId, @AgreementRoomId);
END

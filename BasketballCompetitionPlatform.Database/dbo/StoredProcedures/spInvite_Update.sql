CREATE PROCEDURE [dbo].[spInvite_Update]
    @Sender_TeamId INT, 
    @Receiver_TeamId INT, 
    @AgreementRoomId INT
AS
BEGIN
    UPDATE dbo.[tblInvite]
    SET Sender_TeamId = @Sender_TeamId, Receiver_TeamId = @Receiver_TeamId, AgreementRoomId = @AgreementRoomId
    WHERE Sender_TeamId = @Sender_TeamId AND Receiver_TeamId = @Receiver_TeamId AND AgreementRoomId = @AgreementRoomId;
END

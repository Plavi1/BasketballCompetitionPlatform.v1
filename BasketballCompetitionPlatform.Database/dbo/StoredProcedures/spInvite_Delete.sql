CREATE PROCEDURE [dbo].[spInvite_Delete]
    @Sender_TeamId INT, 
    @Receiver_TeamId INT, 
    @AgreementRoomId INT
AS
BEGIN
    DELETE
    FROM dbo.tblInvite
    WHERE Sender_TeamId = @Sender_TeamId AND Receiver_TeamId = @Receiver_TeamId AND AgreementRoomId = @AgreementRoomId;
END

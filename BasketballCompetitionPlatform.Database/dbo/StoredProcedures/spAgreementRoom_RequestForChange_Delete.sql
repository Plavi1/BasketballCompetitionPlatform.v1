CREATE PROCEDURE [dbo].[spAgreementRoom_RequestForChange_Delete]
    @TeamId INT, 
    @AgreementRoomId INT
AS
BEGIN
    DELETE 
    FROM dbo.[tblAgreementRoom_RequestForChange]
    WHERE TeamId = @TeamId AND AgreementRoomId = @AgreementRoomId
END

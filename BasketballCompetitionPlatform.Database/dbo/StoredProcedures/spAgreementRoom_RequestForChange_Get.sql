CREATE PROCEDURE [dbo].[spAgreementRoom_RequestForChange_Get]
    @TeamId INT, 
    @AgreementRoomId INT
AS
BEGIN
    SELECT * 
    FROM dbo.[tblAgreementRoom_RequestForChange]
    WHERE TeamId = @TeamId AND AgreementRoomId = @AgreementRoomId
END

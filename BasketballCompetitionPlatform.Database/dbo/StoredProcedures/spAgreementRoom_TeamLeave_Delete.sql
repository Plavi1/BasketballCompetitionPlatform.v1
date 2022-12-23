CREATE PROCEDURE [dbo].[spAgreementRoom_TeamLeave_Delete]
    @RoomId INT, 
    @TeamId INT 
AS
BEGIN
    DELETE 
    FROM dbo.[tblAgreementRoom_TeamLeave]
    WHERE RoomId = @RoomId AND TeamId = @TeamId;
END

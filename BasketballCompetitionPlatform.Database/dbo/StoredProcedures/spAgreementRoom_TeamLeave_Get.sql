CREATE PROCEDURE [dbo].[spAgreementRoom_TeamLeave_Get]
    @RoomId INT, 
    @TeamId INT 
AS
BEGIN
    SELECT *
    FROM dbo.[tblAgreementRoom_TeamLeave]
    WHERE RoomId = @RoomId AND TeamId = @TeamId
END

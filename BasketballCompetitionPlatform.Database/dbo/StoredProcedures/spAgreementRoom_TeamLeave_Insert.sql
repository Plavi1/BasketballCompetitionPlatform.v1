CREATE PROCEDURE [dbo].[spAgreementRoom_TeamLeave_Insert]
	@RoomId INT, 
    @TeamId INT, 
    @LeavingDateTime DATETIME
AS
BEGIN
    INSERT INTO dbo.[tblAgreementRoom_TeamLeave] (RoomId, TeamId, LeavingDateTime)
    VALUES (@RoomId, @TeamId, @LeavingDateTime)
END 

CREATE PROCEDURE [dbo].[spAgreementRoom_RequestForChange_Update]
    @TeamId INT, 
    @AgreementRoomId INT, 
    @NewTime TIME, 
    @NewDate DATE, 
    @NewLocationOfTheBasketballCourt NVARCHAR(50), 
    @IsAccepted BIT
AS
BEGIN
    UPDATE dbo.[tblAgreementRoom_RequestForChange]
    SET TeamId = @TeamId, AgreementRoomId = @AgreementRoomId, NewTime = @NewTime, NewDate = @NewTime, NewLocationOfTheBasketballCourt = @NewLocationOfTheBasketballCourt, IsAccepted = @IsAccepted
    WHERE TeamId = @TeamId AND AgreementRoomId = @AgreementRoomId
END

﻿CREATE PROCEDURE [dbo].[spAgreementRoom_RequestForChange_Insert]
    @TeamId INT, 
    @AgreementRoomId INT, 
    @NewTime TIME, 
    @NewDate DATE, 
    @NewBasketballCourt NVARCHAR(50), 
    @IsAccepted BIT
AS
BEGIN
    INSERT INTO dbo.[tblAgreementRoom_RequestForChange] (TeamId, AgreementRoomId, NewTime, NewDate, NewBasketballCourt, IsAccepted)
    VALUES (@TeamId, @AgreementRoomId, @NewTime, @NewDate, @NewBasketballCourt, @IsAccepted)
END 

CREATE PROCEDURE [dbo].[spAgreementRoom_Insert]
	@Id INT, 
    @CreationDateTime DATETIME, 
    @Time TIME, 
    @Date DATE, 
    @LocationOfTheBasketballCourt NVARCHAR(50), 
    @NumberOfPlayersInRoom INT, 
    @NumberOfTimeRequestChangeAccepted INT, 
    @IsPublicAgreementRoom BIT, 
    @IsGameComfirmed BIT, 
    @IsGameFinished INT
AS
BEGIN
    INSERT INTO dbo.[tblAgreementRoom] (Id, CreationDateTime, Time, Date, LocationOfTheBasketballCourt, NumberOfPlayersInRoom, NumberOfTimeRequestChangeAccepted, IsPublicAgreementRoom, IsGameComfirmed, IsGameFinished)
    VALUES (@Id, @CreationDateTime, @Time, @Date, @LocationOfTheBasketballCourt, @NumberOfPlayersInRoom, @NumberOfTimeRequestChangeAccepted, @IsPublicAgreementRoom, @IsGameComfirmed, @IsGameFinished);
END

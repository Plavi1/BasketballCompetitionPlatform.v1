CREATE PROCEDURE [dbo].[spAgreementRoom_Insert]
	@Id INT, 
    @CreationDateTime DATETIME, 
    @Time TIME, 
    @Date DATE, 
    @BasketballCourt NVARCHAR(50), 
    @NumberOfPlayersInRoom INT, 
    @NumberOfTimeRequestChangeAccepted INT, 
    @IsPublicAgreementRoom BIT, 
    @IsGameComfirmed BIT, 
    @IsGameFinished INT
AS
BEGIN
    INSERT INTO dbo.[tblAgreementRoom] (Id, CreationDateTime, Time, Date, BasketballCourt, NumberOfPlayersInRoom, NumberOfTimeRequestChangeAccepted, IsPublicAgreementRoom, IsGameComfirmed, IsGameFinished)
    VALUES (@Id, @CreationDateTime, @Time, @Date, @BasketballCourt, @NumberOfPlayersInRoom, @NumberOfTimeRequestChangeAccepted, @IsPublicAgreementRoom, @IsGameComfirmed, @IsGameFinished);
END

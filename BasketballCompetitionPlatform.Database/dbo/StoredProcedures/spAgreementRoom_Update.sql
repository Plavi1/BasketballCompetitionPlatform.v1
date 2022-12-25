CREATE PROCEDURE [dbo].[spAgreementRoom_Update]
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
    UPDATE dbo.[tblAgreementRoom]
    SET Id = @Id, CreationDateTime = @CreationDateTime, Time = @Time, Date = @Date, BasketballCourt = @BasketballCourt, NumberOfPlayersInRoom = @NumberOfPlayersInRoom,
    NumberOfTimeRequestChangeAccepted = @NumberOfTimeRequestChangeAccepted, IsPublicAgreementRoom = @IsPublicAgreementRoom, IsGameComfirmed = @IsGameComfirmed, IsGameFinished = @IsGameFinished
    WHERE Id = @Id;
END

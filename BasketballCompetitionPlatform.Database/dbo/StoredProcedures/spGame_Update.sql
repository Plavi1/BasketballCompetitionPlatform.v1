CREATE PROCEDURE [dbo].[spGame_Update]
	@Id INT, 
    @DateTimeOfGame DATETIME, 
    @BasketballCourt NVARCHAR(50), 
    @IsGameFinished BIT
AS
BEGIN
    UPDATE dbo.[tblGame]
    SET Id = @Id, DateTimeOfGame = @DateTimeOfGame, BasketballCourt = @BasketballCourt, IsGameFinished = @IsGameFinished
    WHERE Id = @Id;
END

CREATE PROCEDURE [dbo].[spGame_Insert]
	@Id INT, 
    @DateTimeOfGame DATETIME, 
    @BasketballCourt NVARCHAR(50), 
    @IsGameFinished BIT
AS
BEGIN
    INSERT INTO dbo.[tblGame] (Id, DateTimeOfGame, BasketballCourt, IsGameFinished)
    VALUES (@Id, @DateTimeOfGame, @BasketballCourt, @IsGameFinished)
END

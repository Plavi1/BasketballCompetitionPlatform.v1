CREATE PROCEDURE [dbo].[spGame_Insert]
	@Id INT, 
    @Time TIME, 
    @Date DATE, 
    @LocationOfTheBasketballCourt NVARCHAR(50), 
    @IsGameFinished BIT
AS
BEGIN
    INSERT INTO dbo.[tblGame] (Id, Time, Date, LocationOfTheBasketballCourt, IsGameFinished)
    VALUES (@Id, @Time, @Date, @LocationOfTheBasketballCourt, @IsGameFinished)
END

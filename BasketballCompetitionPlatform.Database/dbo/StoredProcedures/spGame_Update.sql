CREATE PROCEDURE [dbo].[spGame_Update]
	@Id INT, 
    @Time TIME, 
    @Date DATE, 
    @LocationOfTheBasketballCourt NVARCHAR(50), 
    @IsGameFinished BIT
AS
BEGIN
    UPDATE dbo.[tblGame]
    SET Id = @Id, Time = @Time, Date = @Date, LocationOfTheBasketballCourt = @LocationOfTheBasketballCourt, IsGameFinished = @IsGameFinished
    WHERE Id = @Id;
END

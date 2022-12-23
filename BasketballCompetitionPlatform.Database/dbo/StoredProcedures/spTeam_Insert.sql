CREATE PROCEDURE [dbo].[spTeam_Insert]
	@Id INT, 
    @TeamName NVARCHAR(50), 
    @PlaceThatTheTeamRepresents NVARCHAR(50), 
    @PasswordHash NVARCHAR(50), 
    @ContactPhone NVARCHAR(50), 
    @Player1 NVARCHAR(50), 
    @Player2 NVARCHAR(50), 
    @Player3 NVARCHAR(50), 
    @Player4 NVARCHAR(50), 
    @Player5 NVARCHAR(50), 
    @AverageAge INT, 
    @DateOfRegistration DATETIME, 
    @Points FLOAT, 
    @IsInTopTeams BIT
AS
BEGIN
    INSERT INTO dbo.[tblTeam] (Id, TeamName, PlaceThatTheTeamRepresents, PasswordHash, ContactPhone, Player1, Player2, Player3, Player4, Player5, AverageAge, DateOfRegistration, Points, IsInTopTeams)
    VALUES (@Id, @TeamName, @PlaceThatTheTeamRepresents, @PasswordHash, @ContactPhone, @Player1, @Player2, @Player3, @Player4, @Player5, @AverageAge, @DateOfRegistration, @Points, @IsInTopTeams);
END

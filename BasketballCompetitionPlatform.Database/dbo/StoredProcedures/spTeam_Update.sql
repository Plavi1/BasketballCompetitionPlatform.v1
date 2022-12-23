CREATE PROCEDURE [dbo].[spTeam_Update]
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
    UPDATE dbo.[tblTeam]
    SET Id = @Id, TeamName = @TeamName, PlaceThatTheTeamRepresents = @PlaceThatTheTeamRepresents, PasswordHash = @PasswordHash, ContactPhone = @ContactPhone, Player1 = @Player1, Player2 = @Player2, Player3 = @Player3,
    Player4 = @Player4, Player5 = @Player5, AverageAge = @AverageAge, DateOfRegistration = @DateOfRegistration, Points = @Points, IsInTopTeams = @IsInTopTeams
    WHERE Id = @Id;
END

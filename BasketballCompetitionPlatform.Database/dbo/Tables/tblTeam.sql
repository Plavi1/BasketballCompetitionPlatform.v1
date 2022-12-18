CREATE TABLE [dbo].[tblTeam]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [TeamName] NVARCHAR(50) NOT NULL, 
    [PlaceThatTheTeamRepresents] NVARCHAR(50) NOT NULL, 
    [PasswordHash] NVARCHAR(50) NOT NULL, 
    [ContactPhone] NVARCHAR(50) NOT NULL, 
    [Player1] NVARCHAR(50) NOT NULL, 
    [Player2] NVARCHAR(50) NOT NULL, 
    [Player3] NVARCHAR(50) NOT NULL, 
    [Player4] NVARCHAR(50) NULL, 
    [Player5] NVARCHAR(50) NULL, 
    [AverageAge] INT NULL, 
    [DateOfRegistration] DATETIME NOT NULL, 
    [Points] FLOAT NOT NULL DEFAULT 0, 
    [IsInTopTeams] BIT NOT NULL DEFAULT 0
)

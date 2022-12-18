CREATE TABLE [dbo].[tblEvent]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Place] NVARCHAR(50) NOT NULL, 
    [NumberOfTeamsInEvent] INT NOT NULL, 
    [DateTimeStart] DATETIME NOT NULL, 
    [DateTimeEnd] DATETIME NOT NULL, 
    [NumberOfMatchesUntilTheEnd] INT NOT NULL, 
    [IsEventFinished] BIT NOT NULL DEFAULT 0
)

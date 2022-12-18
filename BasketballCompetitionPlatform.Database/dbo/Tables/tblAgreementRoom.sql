CREATE TABLE [dbo].[tblAgreementRoom]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [CreationDateTime] DATETIME NOT NULL, 
    [Time] TIME NOT NULL, 
    [Date] DATE NOT NULL, 
    [LocationOfTheBasketballCourt] NVARCHAR(50) NOT NULL, 
    [NumberOfPlayersInRoom] INT NOT NULL, 
    [NumberOfTimeRequestChangeAccepted] INT NULL DEFAULT 0, 
    [IsPublicAgreementRoom] BIT NOT NULL DEFAULT 0, 
    [IsGameComfirmed] BIT NOT NULL DEFAULT 0, 
    [IsGameFinished] INT NOT NULL DEFAULT 0
)

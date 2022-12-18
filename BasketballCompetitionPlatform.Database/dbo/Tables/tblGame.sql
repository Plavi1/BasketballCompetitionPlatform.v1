CREATE TABLE [dbo].[tblGame]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Time] TIME NOT NULL, 
    [Date] DATE NOT NULL, 
    [LocationOfTheBasketballCourt] NVARCHAR(50) NOT NULL, 
    [IsGameFinished] BIT NOT NULL DEFAULT 0
)

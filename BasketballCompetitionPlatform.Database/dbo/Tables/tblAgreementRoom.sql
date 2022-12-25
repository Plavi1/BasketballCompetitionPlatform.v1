CREATE TABLE [dbo].[tblAgreementRoom]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [CreationDateTime] DATETIME NOT NULL, 
    [Time] TIME NOT NULL, 
    [Date] DATE NOT NULL, 
    [BasketballCourt] INT NOT NULL, 
    [NumberOfPlayersInRoom] INT NOT NULL, 
    [NumberOfTimeRequestChangeAccepted] INT NULL DEFAULT 0, 
    [IsPublicAgreementRoom] BIT NOT NULL DEFAULT 0, 
    [IsGameComfirmed] BIT NOT NULL DEFAULT 0, 
    [IsGameFinished] INT NOT NULL DEFAULT 0
    CONSTRAINT [FK_tblAgreementRoom_BasketballCourt] FOREIGN KEY ([BasketballCourt]) REFERENCES [dbo].[tblBasketBallCourt] ([Id]) ON DELETE NO ACTION
)

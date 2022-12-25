CREATE TABLE [dbo].[tblGame]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [DateTimeOfGame] DATETIME NOT NULL, 
    [BasketballCourt] INT NOT NULL, 
    [IsGameFinished] BIT NOT NULL DEFAULT 0
    CONSTRAINT [FK_tblGame_BasketballCourt] FOREIGN KEY ([BasketballCourt]) REFERENCES [dbo].[tblBasketBallCourt] ([Id]) ON DELETE NO ACTION
)

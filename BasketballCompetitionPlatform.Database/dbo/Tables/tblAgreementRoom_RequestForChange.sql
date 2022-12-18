CREATE TABLE [dbo].[tblAgreementRoom_RequestForChange]
(
	[TeamId] INT NOT NULL, 
    [AgreementRoomId] INT NOT NULL, 
    [NewTime] TIME NULL, 
    [NewDate] DATE NULL, 
    [NewLocationOfTheBasketballCourt] NVARCHAR(50) NULL, 
    [IsAccepted] BIT NULL,
	CONSTRAINT [PK_tblAgreementRoom_RequestForChange] PRIMARY KEY CLUSTERED ([TeamId] ASC, [AgreementRoomId] ASC),
    CONSTRAINT [FK_tblAgreementRoom_RequestForChange_tblAgreementRoom] FOREIGN KEY ([AgreementRoomId]) REFERENCES [dbo].[tblAgreementRoom] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_tblAgreementRoom_RequestForChange_tblTeam] FOREIGN KEY ([TeamId]) REFERENCES [dbo].[tblTeam] ([Id]) ON DELETE CASCADE
)

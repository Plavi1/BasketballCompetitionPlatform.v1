CREATE TABLE [dbo].[tblTeamInAgreementRoom]
(
	[TeamId] INT NOT NULL, 
    [AgreementRoomId] INT NOT NULL, 
    [IsCreator] BIT NOT NULL
    CONSTRAINT [PK_tblTeamInAgreementRoom] PRIMARY KEY CLUSTERED ([TeamId] ASC, [AgreementRoomId] ASC) DEFAULT 0,
    [IsHeAcceptsTheAgreed] BIT NULL, 
    CONSTRAINT [FK_tblTeamInAgreementRoom_tblTeam] FOREIGN KEY ([TeamId]) REFERENCES [dbo].[tblTeam] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_tblTeamInAgreementRoom_tblAgreementRoom] FOREIGN KEY ([AgreementRoomId]) REFERENCES [dbo].[tblAgreementRoom] ([Id]) ON DELETE CASCADE
)

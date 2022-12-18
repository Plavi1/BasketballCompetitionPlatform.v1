CREATE TABLE [dbo].[tblAgreementRoom_TeamLeave]
(
	[RoomId] INT NOT NULL, 
    [TeamId] INT NOT NULL, 
    [LeavingDateTime] DATETIME NOT NULL,
    CONSTRAINT [PK_tblAgreementRoom_TeamLeave] PRIMARY KEY CLUSTERED ([RoomId] ASC, [TeamId] ASC),
    CONSTRAINT [FK_tblAgreementRoom_TeamLeave_tblTeam] FOREIGN KEY ([TeamId]) REFERENCES [dbo].[tblTeam] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_tblAgreementRoom_TeamLeave_tblAgreementRoom] FOREIGN KEY ([RoomId]) REFERENCES [dbo].[tblAgreementRoom] ([Id]) ON DELETE CASCADE
)

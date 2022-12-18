CREATE TABLE [dbo].[tblInvite]
(
	[TeamId] INT NOT NULL, 
    [Invites_TeamId] INT NOT NULL, 
    [AgreementRoomId] INT NOT NULL,
    CONSTRAINT [PK_tblInvite] PRIMARY KEY CLUSTERED ([TeamId] ASC, [Invites_TeamId] ASC, [AgreementRoomId] ASC),
    CONSTRAINT [FK_tblInvite_tblTeam_Invites] FOREIGN KEY ([Invites_TeamId]) REFERENCES [dbo].[tblTeam] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_tblInvite_tblTeam] FOREIGN KEY ([TeamId]) REFERENCES [dbo].[tblTeam] ([Id]) ON DELETE NO ACTION,
    CONSTRAINT [FK_tblInvite_tblAgreementRoom] FOREIGN KEY ([AgreementRoomId]) REFERENCES [dbo].[tblAgreementRoom] ([Id]) ON DELETE CASCADE
)

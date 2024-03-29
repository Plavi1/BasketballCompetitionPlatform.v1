﻿CREATE TABLE [dbo].[tblInvite]
(
	[Sender_TeamId] INT NOT NULL, 
    [Receiver_TeamId] INT NOT NULL, 
    [AgreementRoomId] INT NOT NULL,
    CONSTRAINT [PK_tblInvite] PRIMARY KEY CLUSTERED ([Sender_TeamId] ASC, [Receiver_TeamId] ASC, [AgreementRoomId] ASC),
    CONSTRAINT [FK_tblInvite_tblTeam_Invites] FOREIGN KEY ([Receiver_TeamId]) REFERENCES [dbo].[tblTeam] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_tblInvite_tblTeam] FOREIGN KEY ([Sender_TeamId]) REFERENCES [dbo].[tblTeam] ([Id]) ON DELETE NO ACTION,
    CONSTRAINT [FK_tblInvite_tblAgreementRoom] FOREIGN KEY ([AgreementRoomId]) REFERENCES [dbo].[tblAgreementRoom] ([Id]) ON DELETE CASCADE
)

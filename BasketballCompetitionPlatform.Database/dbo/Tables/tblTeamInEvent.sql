﻿CREATE TABLE [dbo].[tblTeamInEvent]
(
	[EventId] INT NOT NULL,
    [TeamId]  INT NOT NULL,
    CONSTRAINT [PK_tblTeamInEvent] PRIMARY KEY CLUSTERED ([EventId] ASC, [TeamId] ASC),
    CONSTRAINT [FK_tblTeamInEvent_tblEvent] FOREIGN KEY ([EventId]) REFERENCES [dbo].[tblEvent] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_tblTeamInEvent_tblTeam] FOREIGN KEY ([TeamId]) REFERENCES [dbo].[tblTeam] ([Id]) ON DELETE CASCADE
)

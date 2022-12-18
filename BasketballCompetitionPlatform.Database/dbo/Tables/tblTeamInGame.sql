CREATE TABLE [dbo].[tblTeamInGame]
(
	[GameId] INT NOT NULL, 
    [TeamId] INT NOT NULL,
	CONSTRAINT [PK_tblTeamInGame] PRIMARY KEY CLUSTERED ([GameId] ASC, [TeamId] ASC),
    CONSTRAINT [FK_tblTeamInGame_tblGame] FOREIGN KEY ([GameId]) REFERENCES [dbo].[tblGame] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_tblTeamInGame_tblTeam] FOREIGN KEY ([TeamId]) REFERENCES [dbo].[tblTeam] ([Id]) ON DELETE CASCADE
)

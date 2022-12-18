CREATE TABLE [dbo].[tblVote]
(
	[TeamId] INT NULL, 
    [GivesVoteTo_TeamId] INT NOT NULL, 
    [Points] INT NULL , 
    [GameId] INT NOT NULL, 
    CONSTRAINT [PK_tblVote] PRIMARY KEY CLUSTERED ([GameId] ASC, [GivesVoteTo_TeamId] ASC)

)

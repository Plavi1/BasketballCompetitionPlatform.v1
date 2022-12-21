CREATE TABLE [dbo].[tblVote]
(
	[Sender_TeamId] INT NULL, 
    [Receiver_TeamId] INT NOT NULL, 
    [Points] INT NULL , 
    [GameId] INT NOT NULL, 
    CONSTRAINT [PK_tblVote] PRIMARY KEY CLUSTERED ([GameId] ASC, [Receiver_TeamId] ASC)

)

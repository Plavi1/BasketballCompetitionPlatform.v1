CREATE PROCEDURE [dbo].[spEvent_Insert]
	@Id INT, 
    @Place NVARCHAR(50), 
    @NumberOfTeamsInEvent INT, 
    @DateTimeStart DATETIME, 
    @DateTimeEnd DATETIME, 
    @NumberOfMatchesUntilTheEnd INT, 
    @IsEventFinished BIT
AS
BEGIN
    INSERT INTO dbo.[tblEvent] (Id, Place, NumberOfTeamsInEvent, DateTimeStart, DateTimeEnd, NumberOfMatchesUntilTheEnd, IsEventFinished)
    VALUES (@Id, @Place, @NumberOfTeamsInEvent, @DateTimeStart, @DateTimeEnd, @NumberOfMatchesUntilTheEnd, @IsEventFinished);
END

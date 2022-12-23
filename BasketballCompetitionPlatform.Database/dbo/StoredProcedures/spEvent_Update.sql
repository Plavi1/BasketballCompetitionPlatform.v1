CREATE PROCEDURE [dbo].[spEvent_Update]
	@Id INT, 
    @Place NVARCHAR(50), 
    @NumberOfTeamsInEvent INT, 
    @DateTimeStart DATETIME, 
    @DateTimeEnd DATETIME, 
    @NumberOfMatchesUntilTheEnd INT, 
    @IsEventFinished BIT
AS
BEGIN
    UPDATE dbo.[tblEvent]
    SET Id = @Id, Place = @Place, NumberOfTeamsInEvent = @NumberOfTeamsInEvent, DateTimeStart = @DateTimeStart, DateTimeEnd = @DateTimeEnd, NumberOfMatchesUntilTheEnd = @NumberOfMatchesUntilTheEnd, IsEventFinished = @IsEventFinished
    WHERE Id = @Id;
END

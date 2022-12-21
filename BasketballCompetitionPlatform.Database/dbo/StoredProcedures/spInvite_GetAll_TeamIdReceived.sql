CREATE PROCEDURE [dbo].[spInvite_GetAll_TeamIdReceived]
	@Receiver_TeamId INT
AS
BEGIN
	SELECT * 
	FROM dbo.[tblInvite]
	WHERE Receiver_TeamId = @Receiver_TeamId
END

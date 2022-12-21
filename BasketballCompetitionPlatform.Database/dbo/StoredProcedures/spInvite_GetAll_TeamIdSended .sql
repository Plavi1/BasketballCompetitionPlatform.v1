CREATE PROCEDURE [dbo].[spInvite_GetAll_TeamIdSended]
	@Sender_TeamId INT
AS
BEGIN
	SELECT * 
	FROM dbo.[tblInvite]
	WHERE Sender_TeamId = @Sender_TeamId;
END


CREATE PROCEDURE [dbo].[spInvite_GetAll_ForAgreementRoomId]
	@AgreementRoomId INT
AS
BEGIN
	SELECT * 
	FROM dbo.[tblInvite]
	WHERE AgreementRoomId = @AgreementRoomId
END
